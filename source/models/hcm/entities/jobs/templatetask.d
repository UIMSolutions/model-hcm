module models.hcm.entities.jobs.templatetask;

@safe:
import models.hcm;

class DHcmJobTemplateTaskEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobTemplateTaskEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "jobTask": StringAttribute, //
        "jobTemplate": StringAttribute, //
        "note": StringAttribute, //
        "jobTaskId": UUIDAttribute, //
        "jobTemplateId": UUIDAttribute, //
        "relationship_HcmJobTaskRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_jobs.templatetasks");
  }
}
mixin(EntityCalls!("HcmJobTemplateTaskEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobTemplateTaskEntity);
  
    auto entity = HcmJobTemplateTaskEntity;
  }
}