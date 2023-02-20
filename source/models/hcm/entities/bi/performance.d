module models.hcm.entities.bi.performance;

@safe:
import models.hcm;

class DHcmBIPerformanceEntity : DOOPEntity {
  mixin(EntityThis!("HcmBIPerformanceEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "rating": StringAttribute, //
        "ratingDescription": StringAttribute, //
        "ratingModel": StringAttribute, //
        "ratingModelDescription": StringAttribute, //
        "performance": StringAttribute, //
        "performanceRatingValidFrom": StringAttribute, //
        "performanceRatingValidTo": StringAttribute, //
        "backingTable_HRMCompPerfPlanEmplRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_bi.performance");
  }
}
mixin(EntityCalls!("HcmBIPerformanceEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmBIPerformanceEntity);
  
  auto entity = HcmBIPerformanceEntity;
  }
}