module models.hcm.entities.positions.forecast;

@safe:
import models.hcm;

class DHcmPositionForecastEntity : DEntity {
  mixin(EntityThis!("HcmPositionForecastEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "annualAmount": StringAttribute, //
        "budgetAmount": StringAttribute, //
        "budgetCostElement": StringAttribute, //
        "costElementLineStartDate": StringAttribute, //
        "costElementLineEndDate": StringAttribute, //
        "isPercentageBased": StringAttribute, //
        "costElementLineMainAccount": StringAttribute, //
        "percent": StringAttribute, //
        "costElementSource": StringAttribute, //
        "costElementLineCompensationGrid": StringAttribute, //
        "costElementRecId": UUIDAttribute, //
        "costElementEffectiveDate": StringAttribute, //
        "costElementExpirationDate": StringAttribute, //
        "costElementLegalEntity": StringAttribute, //
        "costElementName": StringAttribute, //
        "costElementDataAreaId": UUIDAttribute, //
        "forecastPositionActivationDate": StringAttribute, //
        "anniversaryDate": StringAttribute, //
        "forecastPositionCompensationGroupDataAreaId": UUIDAttribute, //
        "forecastPositionCompensationGroupId": UUIDAttribute, //
        "forecastScenario": StringAttribute, //
        "forecastPositionFullTimeEquivalency": StringAttribute, //
        "forecastPositionPositionLegalEntity": StringAttribute, //
        "forecastPosition": StringAttribute, //
        "forecastPdsitionCompensationLevelRecId": UUIDAttribute, //
        "forecastPositionRetirementDate": StringAttribute, //
        "assignedWorker": StringAttribute, //
        "budgetPlanningProcess": StringAttribute, //
        "budgetPlanScenario": StringAttribute, //
        "budgetPlanScenarioName": StringAttribute, //
        "forecastPositionRecId": UUIDAttribute, //
        "forecastPositionId": UUIDAttribute, //
        "forecastPositionLegalEnitytName": StringAttribute, //
        "costElementLineReferencePointId": UUIDAttribute, //
        "costElementLineReferenceSetupId": UUIDAttribute, //
        "costElementLineMainAccountDisplayValue": StringAttribute, //
        "forecastPositionCompensationGrid": StringAttribute, //
        "budgetPlanningProcessName": StringAttribute, //
        "forecastPositionRefPointId": UUIDAttribute, //
        "forecastPositionRefPointSetupId": UUIDAttribute, //
        "department": StringAttribute, //
        "description": StringAttribute, //
        "job": StringAttribute, //
        "positionType": StringAttribute, //
        "title": StringAttribute, //
        "compLocation": StringAttribute, //
        "jobId": UUIDAttribute, //
        "departmentNumber": StringAttribute, //
        "compensationRegionId": UUIDAttribute, //
        "positionTypeId": UUIDAttribute, //
        "titleId": UUIDAttribute, //
        "compensationLevelId": UUIDAttribute, //
        "relationship_MainAccountCombinationsRelationshipId": UUIDAttribute, //
        "backingTable_HcmPositionForecastBudgetAcctLineRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.forecasts");
  }
}
mixin(EntityCalls!("HcmPositionForecastEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionForecastEntity);
  
    auto entity = HcmPositionForecastEntity;
  }
}