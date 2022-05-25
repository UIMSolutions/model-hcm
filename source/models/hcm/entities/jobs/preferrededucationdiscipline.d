module models.hcm.entities.jobs.preferrededucationdiscipline;

@safe:
import models.hcm;

class DHcmJobPreferredEducationDisciplineEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobPreferredEducationDisciplineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "education": StringAttribute, //
        "educationId": StringAttribute, //
        "importance": StringAttribute, //
        "job": StringAttribute, //
        "jobId": StringAttribute, //
        "relationship_JobRelationshipId": StringAttribute, //
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