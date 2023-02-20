module models.hcm.entities.totalcomps.statementsectionbenefit;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionBenefitEntity : DOOPEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionBenefitEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "benefit": StringAttribute, //
        "statementSection": StringAttribute, //
        "benefitId": UUIDAttribute, //
        "statementSectionId": UUIDAttribute, //
        "relationship_HcmTotalCompStatementSectionHeaderEntityRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_totalcomps.statementsectionbenefits");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionBenefitEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmTotalCompStatementSectionBenefitEntity);
  
    auto entity = HcmTotalCompStatementSectionBenefitEntity;
  }
}