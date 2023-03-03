/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.positions.base;

@safe:
import models.hcm;

class DHcmPositionBaseEntity : DEntity {
  mixin(EntityThis!("HcmPositionBaseEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "positionId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.bases");
  }
}
mixin(EntityCalls!("HcmPositionBaseEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionEntity);
  
    auto entity = HcmPositionEntity;
  }
}