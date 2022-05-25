module models.hcm.entities.jobs.taskassignment;

@safe:
import models.hcm;

class DHcmJobTaskAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobTaskAssignmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "job": StringAttribute, //
        "jobId": StringAttribute, //
        "jobTask": StringAttribute, //
        "jobTaskId": StringAttribute, //
        "note": StringAttribute, //
        "relationship_JobRelationshipId": StringAttribute, //
        "relationship_JobTaskRelationshipId": StringAttribute, //
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