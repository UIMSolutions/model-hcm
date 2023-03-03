/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.positions.type;

@safe:
import models.hcm;

class DHcmPositionTypeEntity : DEntity {
  mixin(EntityThis!("HcmPositionTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        
        "classification": StringAttribute, //
        "positionTypeId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.types");
  }
}
mixin(EntityCalls!("HcmPositionTypeEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionTypeEntity);
  
    auto entity = HcmPositionTypeEntity;
  }
}