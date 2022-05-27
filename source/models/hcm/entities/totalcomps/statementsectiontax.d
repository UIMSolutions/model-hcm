module models.hcm.entities.totalcomps.statementsectiontax;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionTaxEntity : DOOPEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionTaxEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "totalCompensationStatementSection": StringAttribute, //
        "taxCode": StringAttribute, //
        "taxCodeGroupType": StringAttribute, //
        "taxGroup": StringAttribute, //
        "statementSectionId": StringAttribute, //
        "taxCodeId": StringAttribute, //
        "nullableTaxCodeId": StringAttribute, //
        "countryRegionId": StringAttribute, //
        "nullableCountryRegionId": StringAttribute, //
        "taxGroupId": StringAttribute, //
        "nullableTaxGroupId": StringAttribute, //
        "relationship_HcmTotalCompStatementSectionHeaderEntityRelationshipId": StringAttribute, //
        "backingTable_HcmTotalCompStatementSectionTaxRelationshipId": StringAttribute, //      ])
      .registerPath("hcm_totalcomps.statementsectiontax");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionTaxEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmTotalCompStatementSectionTaxEntity);
  
    auto entity = HcmTotalCompStatementSectionTaxEntity;
  }
}