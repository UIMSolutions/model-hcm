/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.totalcomps.statementsectiontax;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionTaxEntity : DEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionTaxEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
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

version(test_model_hcm) { unittest {
    assert(HcmTotalCompStatementSectionTaxEntity);
  
    auto entity = HcmTotalCompStatementSectionTaxEntity;
  }
}