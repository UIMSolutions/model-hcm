/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.responsibility;

@safe:
import models.hcm;

class DHcmJobResponsibilityEntity : DEntity {
  mixin(EntityThis!("HcmJobResponsibilityEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "job": StringAttribute, // 
        "jobId": UUIDAttribute, // 
        "note": StringAttribute, // 
        "areaOfResponsibility": StringAttribute, // 
        "areaOfResponsibilityId": UUIDAttribute, // 
        "relationship_JobRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("hcm_jobs.responsibilities");
  }
}
mixin(EntityCalls!("HcmJobResponsibilityEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobResponsibilityEntity);
  
    auto entity = HcmJobResponsibilityEntity;
  }
}