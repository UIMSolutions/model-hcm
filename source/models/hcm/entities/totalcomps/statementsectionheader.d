module models.hcm.entities.totalcomps.statementsectionheader;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionHeaderEntity : DOOPEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionHeaderEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "StatementSectionId": UUIDAttribute, //
        "StatementSectionName": StringAttribute, //
      ])
      .registerPath("hcm_totalcomps.statementsectionheaders");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionHeaderEntity"));

version(test_model_hcm) { unittest {
    assert(HcmTotalCompStatementSectionHeaderEntity);
  
    auto entity = HcmTotalCompStatementSectionHeaderEntity;
  }
}