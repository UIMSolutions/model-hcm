/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.budgetcostelement;

@safe:
import models.hcm;

class DHcmBudgetCostElementEntity : DEntity {
  mixin(EntityThis!("HcmBudgetCostElementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "costElementDataAreaId": UUIDAttribute, //
        "costElementLedgerDimensionDisplayValue": StringAttribute, //
        "costElementLedgerDimension": StringAttribute, //
        "costElementName": StringAttribute, //
        "backingTable_HcmBudgetPurposeTypeRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_budgetcostelements");
  }
}
mixin(EntityCalls!("HcmBudgetCostElementEntity"));

unittest {
  auto entity = HcmBudgetCostElementEntity;
  assert(entity.name == "HcmBudgetCostElementEntity");  
}