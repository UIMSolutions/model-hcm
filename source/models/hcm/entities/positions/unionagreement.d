module models.hcm.entities.positions.unionagreement;

@safe:
import models.hcm;

class DHcmPositionUnionAgreementEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionUnionAgreementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "position": StringAttribute, //
        "unionAgreement": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "positionId": StringAttribute, //
        "unionAgreementName": StringAttribute, //
        "laborUnion": StringAttribute, //
        "legalEntity": StringAttribute, //
        "laborUnionId": StringAttribute, //
        "legalEntityId": StringAttribute, //
        "relationship_PositionRelationshipId": StringAttribute, //
        "relationship_LaborUnionAgreementRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_employment.unionagreements");
  }
}
mixin(EntityCalls!("HcmPositionUnionAgreementEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionUnionAgreementEntity);
  
    auto entity = HcmPositionUnionAgreementEntity;
  }
}