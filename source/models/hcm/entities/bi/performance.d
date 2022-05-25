module models.hcm.bi.performance;

@safe:
import models.hcm;

class DHcmBIPerformanceEntity : DOOPEntity {
  mixin(EntityThis!("HcmBIPerformanceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Rating": StringAttribute, //
        "RatingDescription": StringAttribute, //
        "RatingModel": StringAttribute, //
        "RatingModelDescription": StringAttribute, //
        "Performance": StringAttribute, //
        "PerformanceRatingValidFrom": StringAttribute, //
        "PerformanceRatingValidTo": StringAttribute, //
        "BackingTable_HRMCompPerfPlanEmplRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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