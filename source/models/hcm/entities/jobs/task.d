module models.hcm.entities.jobs.task;

@safe:
import models.hcm;

class DHcmJobTaskEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobTaskEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "jobTaskId": UUIDAttribute, //
        "note": StringAttribute, //
      ])
      .registerPath("hcm_jobs.tasks");
  }
}
mixin(EntityCalls!("HcmJobTaskEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobTaskEntity);
  
    auto entity = HcmJobTaskEntity;
  }
}