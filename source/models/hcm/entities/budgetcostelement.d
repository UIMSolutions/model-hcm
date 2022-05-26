module models.hcm.entities.budgetcostelement;

@safe:
import models.hcm;

class DHcmBudgetCostElementEntity : DOOPEntity {
  mixin(EntityThis!("HcmBudgetCostElementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "budgetCostType": StringAttribute, //
        "description": StringAttribute, //
        "torecastPositionOverride": StringAttribute, //
        "allocationMethod": StringAttribute, //
        "percent": StringAttribute, //
        "effectiveDate": StringAttribute, //
        "expirationDate": StringAttribute, //
        "annualLimit": StringAttribute, //
        "amount": StringAttribute, //
        "costElementDataAreaId": StringAttribute, //
        "costElementLedgerDimensionDisplayValue": StringAttribute, //
        "costElementLedgerDimension": StringAttribute, //
        "costElementName": StringAttribute, //
        "backingTable_HcmBudgetPurposeTypeRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_budgetcostelements");
  }
}
mixin(EntityCalls!("HcmBudgetCostElementEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmBudgetCostElementEntity);
  
    auto entity = HcmBudgetCostElementEntity;
  }
}