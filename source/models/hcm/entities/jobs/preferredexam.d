module models.hcm.entities.jobs.preferredexam;

@safe:
import models.hcm;

class DHcmJobPreferredExamEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobPreferredExamEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "test": StringAttribute, //
        "testId": UUIDAttribute, //
        "job": StringAttribute, //
        "obId": UUIDAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_jobs.preferredexams");
  }
}
mixin(EntityCalls!("HcmJobPreferredExamEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobPreferredExamEntity);
  
    auto entity = HcmJobPreferredExamEntity;
  }
}