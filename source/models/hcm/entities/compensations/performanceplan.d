module models.hcm.compensations.performanceplan;

@safe:
import models.hcm;

class DHcmCompensationPerformancePlanEntity : DOOPEntity {
  mixin(EntityThis!("HcmCompensationPerformancePlanEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Description": StringAttribute, //
        "Plan": StringAttribute, //
        "Effective": StringAttribute, //
        "Expiration": StringAttribute, //
        "BackingTable_HRMCompPerfPlanRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_compensations.performanceplans");
  }
}
mixin(EntityCalls!("HcmCompensationPerformancePlanEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmCompensationPerformancePlanEntity);
  
    auto entity = HcmCompensationPerformancePlanEntity;
  }
}