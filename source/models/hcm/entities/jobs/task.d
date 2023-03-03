/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.task;

@safe:
import models.hcm;

class DHcmJobTaskEntity : DEntity {
  mixin(EntityThis!("HcmJobTaskEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        
        "jobTaskId": UUIDAttribute, //
        "note": StringAttribute, //
      ])
      .registerPath("hcm_jobs.tasks");
  }
}
mixin(EntityCalls!("HcmJobTaskEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobTaskEntity);
  
    auto entity = HcmJobTaskEntity;
  }
}