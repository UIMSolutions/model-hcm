module models.hcm.entities.jobs.type;

@safe:
import models.hcm;

class DHcmJobTypeEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobTypeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute, //
        "exemptStatus": StringAttribute, //
        "jobTypeId": StringAttribute, //
        "paidHourly": StringAttribute, //
      ])
      .registerPath("hcm_jobs.types");
  }
}
mixin(EntityCalls!("HcmJobTypeEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobTypeEntity);
  
    auto entity = HcmJobTypeEntity;
  }
}