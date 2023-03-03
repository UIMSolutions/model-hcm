/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.totalcomps.statementsectionearning;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionEarningEntity : DEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionEarningEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "EarningCode": StringAttribute, //
        "EarningCodeOrGroupType": StringAttribute, //
        "EarningCodeGroup": StringAttribute, //
        "TotalCompensationStatementSection": StringAttribute, //
        "StatementSectionId": UUIDAttribute, //
        "EarningCodeId": UUIDAttribute, //
        "NullableEarningCodeId": UUIDAttribute, //
        "EarningCodeGroupId": UUIDAttribute, //
        "NullableEarningCodeGroupId": UUIDAttribute, //
        "Relationship_HcmTotalCompStatementSectionHeaderEntityRelationshipId": UUIDAttribute, //
        "Relationship_PayrollEarningCodeGroupEntityRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_totalcomps.statementsectionearning");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionEarningEntity"));

version(test_model_hcm) { unittest {
    assert(HcmTotalCompStatementSectionEarningEntity);
  
    auto entity = HcmTotalCompStatementSectionEarningEntity;
  }
}