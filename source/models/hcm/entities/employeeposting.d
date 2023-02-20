module models.hcm.entities.employeeposting;

@safe:
import models.hcm;

class DHcmEmployeePostingEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmployeePostingEntity"));

  override void initialize() {
    super.initialize(configSettings);

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
        "relationship_SummaryLedgerDimensionCombinationRelationshipId": UUIDAttribute, //
        "backingTable_EmplLedgerAccounts_RURelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
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