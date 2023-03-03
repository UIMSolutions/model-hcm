module models.hcm.entities.compensations.payperformanceallocation;

@safe:
import models.hcm;

class DHcmCompensationPayPerformanceAllocationEntity : DEntity {
  mixin(EntityThis!("HcmCompensationPayPerformanceAllocationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "name": StringAttribute, //
        "allocation": StringAttribute, //
        "department": StringAttribute, //
        "departmentNumber": StringAttribute, //
        "plan": StringAttribute, //
        "effective": StringAttribute, //
        "expiration": StringAttribute, //
        "relationship_CompPerfPlanRelationshipId": UUIDAttribute, //
        "relationship_DepartmentRelationshipId": UUIDAttribute, //
        "relationship_OperatingUnitRelationshipId": UUIDAttribute, //
        "backingTable_HRMCompPerfAllocationRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_compensations.payperformanceallocations");
  }
}
mixin(EntityCalls!("HcmCompensationPayPerformanceAllocationEntity"));

version(test_model_hcm) { unittest {
    assert(HcmCompensationPayPerformanceAllocationEntity);
  
    auto entity = HcmCompensationPayPerformanceAllocationEntity;
  }
}