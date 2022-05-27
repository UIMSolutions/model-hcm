module models.hcm.entities.totalcomps.statementsectionheader;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionHeaderEntity : DOOPEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionHeaderEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "StatementSectionId": StringAttribute, //
        "StatementSectionName": StringAttribute, //
      ])
      .registerPath("hcm_totalcomps.statementsectionheaders");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionHeaderEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmTotalCompStatementSectionHeaderEntity);
  
    auto entity = HcmTotalCompStatementSectionHeaderEntity;
  }
}