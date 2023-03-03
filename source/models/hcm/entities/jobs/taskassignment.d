/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.taskassignment;

@safe:
import models.hcm;

class DHcmJobTaskAssignmentEntity : DEntity {
  mixin(EntityThis!("HcmJobTaskAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "job": StringAttribute, //
        "jobId": UUIDAttribute, //
        "jobTask": StringAttribute, //
        "jobTaskId": UUIDAttribute, //
        "note": StringAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
        "relationship_JobTaskRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_jobs.taskassignments");
  }
}
mixin(EntityCalls!("HcmJobTaskAssignmentEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobTaskAssignmentEntity);
  
    auto entity = HcmJobTaskAssignmentEntity;
  }
}