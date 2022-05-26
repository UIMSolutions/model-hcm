module models.hcm.entities.employeeposting;

@safe:
import models.hcm;

class DHcmEmployeePostingEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmployeePostingEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "accountCode": StringATtribute, //
        "dimensionHierarchy": StringATtribute, //
        "num": StringATtribute, //
        "summaryLedgerDimension": StringATtribute, //
        "summaryLedgerDimensionDisplayValue": StringATtribute, //
        "postingProfile": StringATtribute, //
        "name": StringATtribute, //
        "settlementByDimension": StringATtribute, //
        "relationship_SummaryLedgerDimensionCombinationRelationshipId": StringATtribute, //
        "backingTable_EmplLedgerAccounts_RURelationshipId": StringATtribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringATtribute, //
      ])
      .registerPath("hcm_employeepostings");
  }
}
mixin(EntityCalls!("HcmEmployeePostingEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmEmployeePostingEntity);
  
    auto entity = HcmEmployeePostingEntity;
  }
}