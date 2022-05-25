module models.hcm.entities.jobs.templatetask;

@safe:
import models.hcm;

class DHcmJobTemplateTaskEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobTemplateTaskEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "jobTask": StringAttribute, //
        "jobTemplate": StringAttribute, //
        "note": StringAttribute, //
        "jobTaskId": StringAttribute, //
        "jobTemplateId": StringAttribute, //
        "relationship_HcmJobTaskRelationshipId": StringAttribute, //
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