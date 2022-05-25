module models.hcm.entities.jobs.responsibility;

@safe:
import models.hcm;

class DHcmJobResponsibilityEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobResponsibilityEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "job": StringAttribute, // 
        "jobId": StringAttribute, // 
        "note": StringAttribute, // 
        "areaOfResponsibility": StringAttribute, // 
        "areaOfResponsibilityId": StringAttribute, // 
        "relationship_JobRelationshipId": StringAttribute, // 
      ])
      .registerPath("hcm_jobs.responsibilities");
  }
}
mixin(EntityCalls!("HcmJobResponsibilityEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobResponsibilityEntity);
  
    auto entity = HcmJobResponsibilityEntity;
  }
}