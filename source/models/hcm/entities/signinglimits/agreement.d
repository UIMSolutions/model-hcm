module models.hcm.entities.signinglimits.agreement;

@safe:
import models.hcm;

class DHcmSigningLimitAgreementEntity : DEntity {
  mixin(EntityThis!("HcmSigningLimitAgreementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "agreementName": StringAttribute, //
        "attestationPeriod": StringAttribute, //
        "url": StringAttribute, //
      ])
      .registerPath("hcm_signinglimits.agreements");
  }
}
mixin(EntityCalls!("HcmSigningLimitAgreementEntity"));

version(test_model_hcm) { unittest {
    assert(HcmSigningLimitAgreementEntity);
  
    auto entity = HcmSigningLimitAgreementEntity;
  }
}