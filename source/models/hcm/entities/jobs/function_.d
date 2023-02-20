module models.hcm.entities.jobs.function_;

@safe:
import models.hcm;

class DHcmJobFunctionEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobFunctionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "jobFunctionId": UUIDAttribute, //
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