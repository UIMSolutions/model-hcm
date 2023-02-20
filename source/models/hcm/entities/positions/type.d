module models.hcm.entities.positions.type;

@safe:
import models.hcm;

class DHcmPositionTypeEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionTypeEntity"));

  override void initialize() {
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

version(test_model_hcm) {
  unittest {
    assert(HcmPositionTypeEntity);
  
    auto entity = HcmPositionTypeEntity;
  }
}