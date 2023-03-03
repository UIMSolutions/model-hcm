module models.hcm.entities.signinglimits.revocationreasoncode;

@safe:
import models.hcm;

class DHcmSigningLimitRevocationReasonCodeEntity : DOOPEntity {
  mixin(EntityThis!("HcmSigningLimitRevocationReasonCodeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "reasonCode": StringAttribute, //
      ])
      .registerPath("hcm_signinglimits.revocationreasoncode");
  }
}
mixin(EntityCalls!("HcmSigningLimitRevocationReasonCodeEntity"));

version(test_model_hcm) { unittest {
    assert(HcmSigningLimitAgreementEntity);
  
    auto entity = HcmSigningLimitAgreementEntity;
  }
}