module models.hcm.entities.employeeposting;

@safe:
import models.hcm;

class DHcmEmployeePostingEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmployeePostingEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "accountCode": StringAttribute, //
        "dimensionHierarchy": StringAttribute, //
        "num": StringAttribute, //
        "summaryLedgerDimension": StringAttribute, //
        "summaryLedgerDimensionDisplayValue": StringAttribute, //
        "postingProfile": StringAttribute, //
        "name": StringAttribute, //
        "settlementByDimension": StringAttribute, //
        "relationship_SummaryLedgerDimensionCombinationRelationshipId": StringAttribute, //
        "backingTable_EmplLedgerAccounts_RURelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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