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