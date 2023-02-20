module models.hcm.entities.jobs.taskassignment;

@safe:
import models.hcm;

class DHcmJobTaskAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobTaskAssignmentEntity"));

  override void initialize() {
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

version(test_model_hcm) {
  unittest {
    assert(HcmJobTaskAssignmentEntity);
  
    auto entity = HcmJobTaskAssignmentEntity;
  }
}