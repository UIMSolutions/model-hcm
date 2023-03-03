module models.hcm.entities.positions.duration;

@safe:
import models.hcm;

class DHcmPositionDurationEntity : DEntity {
  mixin(EntityThis!("HcmPositionDurationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "position": StringAttribute, //
        "positionId": UUIDAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "relationship_PositionRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.durations");
  }
}
mixin(EntityCalls!("HcmPositionDurationEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionDurationEntity);
  
    auto entity = HcmPositionDurationEntity;
  }
}