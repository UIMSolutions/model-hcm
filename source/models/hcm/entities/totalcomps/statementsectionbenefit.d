module models.hcm.entities.totalcomps.statementsectionbenefit;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionBenefitEntity : DOOPEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionBenefitEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "benefit": StringAttribute, //
        "statementSection": StringAttribute, //
        "benefitId": StringAttribute, //
        "statementSectionId": StringAttribute, //
        "relationship_HcmTotalCompStatementSectionHeaderEntityRelationshipId": StringAttribute, //
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