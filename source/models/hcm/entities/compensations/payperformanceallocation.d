module models.hcm.compensations.payperformanceallocation;

@safe:
import models.hcm;

class DHcmCompensationPayPerformanceAllocationEntity : DOOPEntity {
  mixin(EntityThis!("HcmCompensationPayPerformanceAllocationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "name": StringAttribute, //
        "allocation": StringAttribute, //
        "department": StringAttribute, //
        "departmentNumber": StringAttribute, //
        "plan": StringAttribute, //
        "effective": StringAttribute, //
        "expiration": StringAttribute, //
        "relationship_CompPerfPlanRelationshipId": StringAttribute, //
        "relationship_DepartmentRelationshipId": StringAttribute, //
        "relationship_OperatingUnitRelationshipId": StringAttribute, //
        "backingTable_HRMCompPerfAllocationRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_compensations.payperformanceallocations");
  }
}
mixin(EntityCalls!("HcmCompensationPayPerformanceAllocationEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmCompensationPayPerformanceAllocationEntity);
  
    auto entity = HcmCompensationPayPerformanceAllocationEntity;
  }
}