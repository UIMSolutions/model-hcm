module models.hcm.entities.laborunions.agreement;

@safe:
import models.hcm;

class DHcmLaborUnionAgreementEntity : DOOPEntity {
  mixin(EntityThis!("HcmLaborUnionAgreementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "agreementName": StringAttribute, //
        "description": StringAttribute, //
        "laborUnion": StringAttribute, //
        "unionId": StringAttribute, //
        "legalEntity": StringAttribute, //
        "legalEntityId": StringAttribute, //
        "relationship_LaborUnionRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_laborunions.agreements");
  }
}
mixin(EntityCalls!("HcmLaborUnionAgreementEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmLaborUnionAgreementEntity);
  
    auto entity = HcmLaborUnionAgreementEntity;
  }
}