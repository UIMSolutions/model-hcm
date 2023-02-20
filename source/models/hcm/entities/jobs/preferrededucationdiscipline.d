module models.hcm.entities.jobs.preferrededucationdiscipline;

@safe:
import models.hcm;

class DHcmJobPreferredEducationDisciplineEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobPreferredEducationDisciplineEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "education": StringAttribute, //
        "educationId": UUIDAttribute, //
        "importance": StringAttribute, //
        "job": StringAttribute, //
        "jobId": UUIDAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_jobs.preferrededucationdisciplines");
  }
}
mixin(EntityCalls!("HcmJobPreferredEducationDisciplineEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobPreferredEducationDisciplineEntity);
  
    auto entity = HcmJobPreferredEducationDisciplineEntity;
  }
}