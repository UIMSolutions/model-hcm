/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.base;

@safe:
import models.hcm;

class DHcmJobBaseEntity : DEntity {
  mixin(EntityThis!("HcmJobBaseEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "jobId": UUIDAttribute, //
        "maximumNumberOfPositions": StringAttribute, //
        "allowUnlimitedPositions": StringAttribute, //
    ])
    .registerPath("hcm_jobs.bases");
  }
}
mixin(EntityCalls!("HcmJobBaseEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobBaseEntity);
  
    auto entity = HcmJobBaseEntity;
  }
}