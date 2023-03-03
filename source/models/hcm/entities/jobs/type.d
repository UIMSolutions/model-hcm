module models.hcm.entities.jobs.type;

@safe:
import models.hcm;

class DHcmJobTypeEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "exemptStatus": StringAttribute, //
        "jobTypeId": UUIDAttribute, //
        "paidHourly": StringAttribute, //
      ])
      .registerPath("hcm_jobs.types");
  }
}
mixin(EntityCalls!("HcmJobTypeEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobTypeEntity);
  
    auto entity = HcmJobTypeEntity;
  }
}