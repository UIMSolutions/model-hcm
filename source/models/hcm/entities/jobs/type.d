/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.type;

@safe:
import models.hcm;

class DHcmJobTypeEntity : DEntity {
  mixin(EntityThis!("HcmJobTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "exemptStatus": StringAttribute, //
        "jobTypeId": UUIDAttribute, //
        "paidHourly": StringAttribute, //
      ])
      .registerPath("hcm_jobs.types");
  }
}
mixin(EntityCalls!("HcmJobTypeEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobTypeEntity);
  
    auto entity = HcmJobTypeEntity;
  }
}