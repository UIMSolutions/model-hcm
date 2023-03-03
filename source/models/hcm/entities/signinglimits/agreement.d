/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
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