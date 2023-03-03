module models.hcm.entities.positions.base;

@safe:
import models.hcm;

class DHcmPositionBaseEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionBaseEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "positionId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.bases");
  }
}
mixin(EntityCalls!("HcmPositionBaseEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionEntity);
  
    auto entity = HcmPositionEntity;
  }
}