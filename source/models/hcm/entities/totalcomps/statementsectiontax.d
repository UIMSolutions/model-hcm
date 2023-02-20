module models.hcm.entities.totalcomps.statementsectiontax;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionTaxEntity : DOOPEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionTaxEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "totalCompensationStatementSection": StringAttribute, //
        "taxCode": StringAttribute, //
        "taxCodeGroupType": StringAttribute, //
        "taxGroup": StringAttribute, //
        "statementSectionId": UUIDAttribute, //
        "taxCodeId": UUIDAttribute, //
        "nullableTaxCodeId": UUIDAttribute, //
        "countryRegionId": UUIDAttribute, //
        "nullableCountryRegionId": UUIDAttribute, //
        "taxGroupId": UUIDAttribute, //
        "nullableTaxGroupId": UUIDAttribute, //
        "relationship_HcmTotalCompStatementSectionHeaderEntityRelationshipId": UUIDAttribute, //
        "backingTable_HcmTotalCompStatementSectionTaxRelationshipId": UUIDAttribute, //      
      ])
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