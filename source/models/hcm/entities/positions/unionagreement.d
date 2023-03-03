module models.hcm.entities.positions.unionagreement;

@safe:
import models.hcm;

class DHcmPositionUnionAgreementEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionUnionAgreementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "position": StringAttribute, //
        "unionAgreement": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "positionId": UUIDAttribute, //
        "unionAgreementName": StringAttribute, //
        "laborUnion": StringAttribute, //
        "legalEntity": StringAttribute, //
        "laborUnionId": UUIDAttribute, //
        "legalEntityId": UUIDAttribute, //
        "relationship_PositionRelationshipId": UUIDAttribute, //
        "relationship_LaborUnionAgreementRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.unionagreements");
  }
}
mixin(EntityCalls!("HcmPositionUnionAgreementEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionUnionAgreementEntity);
  
    auto entity = HcmPositionUnionAgreementEntity;
  }
}