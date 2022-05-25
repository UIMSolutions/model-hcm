module models.hcm.entities.positions.forecast;

@safe:
import models.hcm;

class DHcmPositionForecastEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionForecastEntity"));

  override void initialize() {
    super.initialize;

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
        "costElementRecId": StringAttribute, //
        "costElementEffectiveDate": StringAttribute, //
        "costElementExpirationDate": StringAttribute, //
        "costElementLegalEntity": StringAttribute, //
        "costElementName": StringAttribute, //
        "costElementDataAreaId": StringAttribute, //
        "forecastPositionActivationDate": StringAttribute, //
        "anniversaryDate": StringAttribute, //
        "forecastPositionCompensationGroupDataAreaId": StringAttribute, //
        "forecastPositionCompensationGroupId": StringAttribute, //
        "forecastScenario": StringAttribute, //
        "forecastPositionFullTimeEquivalency": StringAttribute, //
        "forecastPositionPositionLegalEntity": StringAttribute, //
        "forecastPosition": StringAttribute, //
        "forecastPdsitionCompensationLevelRecId": StringAttribute, //
        "forecastPositionRetirementDate": StringAttribute, //
        "assignedWorker": StringAttribute, //
        "budgetPlanningProcess": StringAttribute, //
        "budgetPlanScenario": StringAttribute, //
        "budgetPlanScenarioName": StringAttribute, //
        "forecastPositionRecId": StringAttribute, //
        "forecastPositionId": StringAttribute, //
        "forecastPositionLegalEnitytName": StringAttribute, //
        "costElementLineReferencePointId": StringAttribute, //
        "costElementLineReferenceSetupId": StringAttribute, //
        "costElementLineMainAccountDisplayValue": StringAttribute, //
        "forecastPositionCompensationGrid": StringAttribute, //
        "budgetPlanningProcessName": StringAttribute, //
        "forecastPositionRefPointId": StringAttribute, //
        "forecastPositionRefPointSetupId": StringAttribute, //
        "department": StringAttribute, //
        "description": StringAttribute, //
        "job": StringAttribute, //
        "positionType": StringAttribute, //
        "title": StringAttribute, //
        "compLocation": StringAttribute, //
        "jobId": StringAttribute, //
        "departmentNumber": StringAttribute, //
        "compensationRegionId": StringAttribute, //
        "positionTypeId": StringAttribute, //
        "titleId": StringAttribute, //
        "compensationLevelId": StringAttribute, //
        "relationship_MainAccountCombinationsRelationshipId": StringAttribute, //
        "backingTable_HcmPositionForecastBudgetAcctLineRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_employment.forecasts");
  }
}
mixin(EntityCalls!("HcmPositionForecastEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionForecastEntity);
  
    auto entity = HcmPositionForecastEntity;
  }
}