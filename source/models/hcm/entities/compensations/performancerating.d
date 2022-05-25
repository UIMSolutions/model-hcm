module models.hcm.compensations.performancerating;

@safe:
import models.hcm;

class DHcmCompensationPerformanceRatingEntity : DOOPEntity {
  mixin(EntityThis!("HcmCompensationPerformanceRatingEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute, //
        "rating": StringAttribute, //
        "effective": StringAttribute, //
        "expiration": StringAttribute, //
        "backingTable_HRMCompPerfRatingRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_compensations.performanceratings");
  }
}
mixin(EntityCalls!("HcmCompensationPerformanceRatingEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmCompensationPerformanceRatingEntity);
  
    auto entity = HcmCompensationPerformanceRatingEntity;
  }
}