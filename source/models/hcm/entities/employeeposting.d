/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.employeeposting;

@safe:
import models.hcm;

class DHcmEmployeePostingEntity : DEntity {
  mixin(EntityThis!("HcmEmployeePostingEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
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

unittest {
  auto entity = new DHcmEmployeePostingEntity;
  assert(entity.className == "HcmEmployeePostingEntity");
}