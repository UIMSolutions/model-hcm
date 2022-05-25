module models.hcm.entities.positions.position;

@safe:
import models.hcm;

class DHcmPositionEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "positionId": StringAttribute, //
        "availableForAssignment": StringAttribute, //
        "compensationRegion": StringAttribute, //
        "department": StringAttribute, //
        "description": StringAttribute, //
        "fullTimeEquivalent": StringAttribute, //
        "job": StringAttribute, //
        "positionType": StringAttribute, //
        "title": StringAttribute, //
        "detailEffective": StringAttribute, //
        "detailExpiration": StringAttribute, //
        "departmentNumber": StringAttribute, //
        "compensationRegionId": StringAttribute, //
        "jobId": StringAttribute, //
        "positionTypeId": StringAttribute, //
        "titleId": StringAttribute, //
        "activation": StringAttribute, //
        "retirement": StringAttribute, //
        "workerAssignmentReasonCode": StringAttribute, //
        "workerAssignmentStart": StringAttribute, //
        "workerAssignmentEnd": StringAttribute, //
        "worker": StringAttribute, //
        "workerPersonnelNumber": StringAttribute, //
        "workerAssignmentReasonCodeId": StringAttribute, //
        "workerName": StringAttribute, //
        "legalEntity": StringAttribute, //
        "paidByLegalEntity": StringAttribute, //
        "payCycle": StringAttribute, //
        "payCycleId": StringAttribute, //
        "annualRegularHours": StringAttribute, //
        "payrollDetailEffective": StringAttribute, //
        "payrollDetailExpiration": StringAttribute, //
        "isSalaryGenerated": StringAttribute, //
        "defaultEarningCodeId": StringAttribute, //
        "insuranceBenefit": StringAttribute, //
        "areEarningsGeneratedFromSchedule": StringAttribute, //
        "paidBy": StringAttribute, //
        "payPeriodOvertimeHours": StringAttribute, //
        "schedule": StringAttribute, //
        "scheduleLegalEntity": StringAttribute, //
        "benefitId": StringAttribute, //
        "relationship_JobRelationshipId": StringAttribute, //
        "relationship_TitleRelationshipId": StringAttribute, //
        "relationship_PositionTypeRelationshipId": StringAttribute, //
        "relationship_DepartmentRelationshipId": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, //
        "relationship_PayrollPayCycleRelationshipId": StringAttribute, //
        "relationship_WorkCalendarRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_employment.positions");
  }
}
mixin(EntityCalls!("HcmPositionEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionEntity);
  
    auto entity = HcmPositionEntity;
  }
}