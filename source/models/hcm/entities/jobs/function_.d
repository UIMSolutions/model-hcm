module models.hcm.entities.jobs.function;

@safe:
import models.hcm;

class DHcmJobFunctionEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobFunctionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute, //
        "jobFunctionId": StringAttribute, //
    ])
    .registerPath("hcm_jobs.functions");
  }
}
mixin(EntityCalls!("HcmJobFunctionEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobFunctionEntity);
  
    auto entity = HcmJobFunctionEntity;
  }
}