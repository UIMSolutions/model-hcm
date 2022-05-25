module models.hcm.entities.positions.duration;

@safe:
import models.hcm;

class DHcmPositionDurationEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionDurationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "position": StringAttribute, //
        "positionId": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "relationship_PositionRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_employment.durations");
  }
}
mixin(EntityCalls!("HcmPositionDurationEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionDurationEntity);
  
    auto entity = HcmPositionDurationEntity;
  }
}