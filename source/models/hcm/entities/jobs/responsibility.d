module models.hcm.entities.jobs.responsibility;

@safe:
import models.hcm;

class DHcmJobResponsibilityEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobResponsibilityEntity"));

  override void initialize() {
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

version(test_model_hcm) {
  unittest {
    assert(HcmJobResponsibilityEntity);
  
    auto entity = HcmJobResponsibilityEntity;
  }
}