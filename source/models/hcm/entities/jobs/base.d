module models.hcm.entities.jobs.base;

@safe:
import models.hcm;

class DHcmJobBaseEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobBaseEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "jobId": StringAttribute, //
        "maximumNumberOfPositions": StringAttribute, //
        "allowUnlimitedPositions": StringAttribute, //
    ])
    .registerPath("hcm_jobs.bases");
  }
}
mixin(EntityCalls!("HcmJobBaseEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobBaseEntity);
  
    auto entity = HcmJobBaseEntity;
  }
}