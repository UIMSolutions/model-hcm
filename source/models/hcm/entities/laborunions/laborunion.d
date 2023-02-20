module models.hcm.entities.laborunions.laborunion;

@safe:
import models.hcm;

class DHcmLaborUnionAgreementEntity : DOOPEntity {
  mixin(EntityThis!("HcmLaborUnionAgreementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "agreementName": StringAttribute, //
        "description": StringAttribute, //
        "laborUnion": StringAttribute, //
        "unionId": UUIDAttribute, //
        "legalEntity": StringAttribute, //
        "legalEntityId": UUIDAttribute, //
        "relationship_LaborUnionRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_applicantprojectroles");
  }
}
mixin(EntityCalls!("HcmLaborUnionAgreementEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmLaborUnionAgreementEntity);
  
    auto entity = HcmLaborUnionAgreementEntity;
  }
}