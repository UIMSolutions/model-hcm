/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.positions.position;

@safe:
import models.hcm;

class DHcmPositionEntity : DEntity {
  mixin(EntityThis!("HcmPositionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "positionId": UUIDAttribute, //
        "availableForAssignment": StringAttribute, //
        "compensationRegion": StringAttribute, //
        "department": StringAttribute, //
        
        "fullTimeEquivalent": StringAttribute, //
        "job": StringAttribute, //
        "positionType": StringAttribute, //
        "title": StringAttribute, //
        "detailEffective": StringAttribute, //
        "detailExpiration": StringAttribute, //
        "departmentNumber": StringAttribute, //
        "compensationRegionId": UUIDAttribute, //
        "jobId": UUIDAttribute, //
        "positionTypeId": UUIDAttribute, //
        "titleId": UUIDAttribute, //
        "activation": StringAttribute, //
        "retirement": StringAttribute, //
        "workerAssignmentReasonCode": StringAttribute, //
        "workerAssignmentStart": StringAttribute, //
        "workerAssignmentEnd": StringAttribute, //
        "worker": StringAttribute, //
        "workerPersonnelNumber": StringAttribute, //
        "workerAssignmentReasonCodeId": UUIDAttribute, //
        "workerName": StringAttribute, //
        "legalEntity": StringAttribute, //
        "paidByLegalEntity": StringAttribute, //
        "payCycle": StringAttribute, //
        "payCycleId": UUIDAttribute, //
        "annualRegularHours": StringAttribute, //
        "payrollDetailEffective": StringAttribute, //
        "payrollDetailExpiration": StringAttribute, //
        "isSalaryGenerated": StringAttribute, //
        "defaultEarningCodeId": UUIDAttribute, //
        "insuranceBenefit": StringAttribute, //
        "areEarningsGeneratedFromSchedule": StringAttribute, //
        "paidBy": StringAttribute, //
        "payPeriodOvertimeHours": StringAttribute, //
        "schedule": StringAttribute, //
        "scheduleLegalEntity": StringAttribute, //
        "benefitId": UUIDAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
        "relationship_TitleRelationshipId": UUIDAttribute, //
        "relationship_PositionTypeRelationshipId": UUIDAttribute, //
        "relationship_DepartmentRelationshipId": UUIDAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, //
        "relationship_PayrollPayCycleRelationshipId": UUIDAttribute, //
        "relationship_WorkCalendarRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.positions");
  }
}
mixin(EntityCalls!("HcmPositionEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionEntity);
  
    auto entity = HcmPositionEntity;
  }
}