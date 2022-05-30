module models.hcm.entities.signinglimits.revocationreasoncode;

@safe:
import models.hcm;

class DHcmSigningLimitAgreementEntity : DOOPEntity {
  mixin(EntityThis!("HcmSigningLimitRevocationReasonCodeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute, //
        "reasonCode": StringAttribute, //
      ])
      .registerPath("hcm_signinglimits.revocationreasoncode");
  }
}
mixin(EntityCalls!("HcmSigningLimitAgreementEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmSigningLimitAgreementEntity);
  
    auto entity = HcmSigningLimitAgreementEntity;
  }
}