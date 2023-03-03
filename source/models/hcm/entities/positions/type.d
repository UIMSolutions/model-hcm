module models.hcm.entities.positions.type;

@safe:
import models.hcm;

class DHcmPositionTypeEntity : DEntity {
  mixin(EntityThis!("HcmPositionTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "classification": StringAttribute, //
        "positionTypeId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.types");
  }
}
mixin(EntityCalls!("HcmPositionTypeEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionTypeEntity);
  
    auto entity = HcmPositionTypeEntity;
  }
}