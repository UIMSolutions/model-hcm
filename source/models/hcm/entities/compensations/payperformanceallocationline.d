module models.hcm.compensations.payperformanceallocationline;

@safe:
import models.hcm;

class DHcmCompensationPayPerformanceAllocationLineEntity : DOOPEntity {
  mixin(EntityThis!("HcmCompensationPayPerformanceAllocationLineEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "allocationId": StringAttribute, //
        "compPerfRatingId": StringAttribute, //
        "perfFactorPercent": StringAttribute, //
        "planType": StringAttribute, //
        "ratingLevel": StringAttribute, //
        "ratingLevelId": StringAttribute, //
        "ratingModel": StringAttribute, //
        "ratingModelId": StringAttribute, //
        "ratingModelType": StringAttribute, //
        "relationship_HRMCompPerfAllocationRelationshipId": StringAttribute, //
        "relationship_HRMCompPerfRatingRelationshipId": StringAttribute, //
        "backingTable_HRMCompPerfAllocationLineRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_compensations.payperformanceallocationlines");
  }
}
mixin(EntityCalls!("HcmCompensationPayPerformanceAllocationLineEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmCompensationPayPerformanceAllocationLineEntity);
  
    auto entity = HcmCompensationPayPerformanceAllocationLineEntity;
  }
}