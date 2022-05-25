module models.hcm.entities.jobs.preferredexam;

@safe:
import models.hcm;

class DHcmJobPreferredExamEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobPreferredExamEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "test": StringAttribute, //
        "testId": StringAttribute, //
        "job": StringAttribute, //
        "obId": StringAttribute, //
        "relationship_JobRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_jobs.preferredexams");
  }
}
mixin(EntityCalls!("HcmJobPreferredExamEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobPreferredExamEntity);
  
    auto entity = HcmJobPreferredExamEntity;
  }
}