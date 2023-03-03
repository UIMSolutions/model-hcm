/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.signinglimits.revocationreasoncode;

@safe:
import models.hcm;

class DHcmSigningLimitRevocationReasonCodeEntity : DEntity {
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