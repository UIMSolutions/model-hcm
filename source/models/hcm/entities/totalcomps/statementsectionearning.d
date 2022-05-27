module models.hcm.entities.totalcomps.statementsectionearning;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionEarningEntity : DOOPEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionEarningEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "EarningCode": StringAttribute, //
        "EarningCodeOrGroupType": StringAttribute, //
        "EarningCodeGroup": StringAttribute, //
        "TotalCompensationStatementSection": StringAttribute, //
        "StatementSectionId": StringAttribute, //
        "EarningCodeId": StringAttribute, //
        "NullableEarningCodeId": StringAttribute, //
        "EarningCodeGroupId": StringAttribute, //
        "NullableEarningCodeGroupId": StringAttribute, //
        "Relationship_HcmTotalCompStatementSectionHeaderEntityRelationshipId": StringAttribute, //
        "Relationship_PayrollEarningCodeGroupEntityRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_totalcomps.statementsectionearning");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionEarningEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmTotalCompStatementSectionEarningEntity);
  
    auto entity = HcmTotalCompStatementSectionEarningEntity;
  }
}