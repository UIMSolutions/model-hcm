/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.ethnicorigin;

@safe:
import models.hcm;

class DHcmEthnicOriginEntity : DEntity {
  mixin(EntityThis!("HcmEthnicOriginEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, // 
        "ethnicOriginId": UUIDAttribute, // 
      ])
      .registerPath("hcm_ethnicorigins");
  }
}
mixin(EntityCalls!("HcmEthnicOriginEntity"));

version(test_model_hcm) { unittest {
    assert(HcmEthnicOriginEntity);
  
    auto entity = HcmEthnicOriginEntity;
  }
}