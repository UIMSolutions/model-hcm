/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.function_;

@safe:
import models.hcm;

class DHcmJobFunctionEntity : DEntity {
  mixin(EntityThis!("HcmJobFunctionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        
        "jobFunctionId": UUIDAttribute, //
    ])
    .registerPath("hcm_jobs.functions");
  }
}
mixin(EntityCalls!("HcmJobFunctionEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobFunctionEntity);
  
    auto entity = HcmJobFunctionEntity;
  }
}