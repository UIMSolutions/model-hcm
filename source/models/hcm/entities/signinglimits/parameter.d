/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.signinglimits.parameter;

@safe:
import models.hcm;

class DHcmSignLimitParametersEntity : DEntity {
  mixin(EntityThis!("HcmSignLimitParametersEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "signingLimitsForEmployeesOnly": StringAttribute, //
        "requireExplicitSigningLimitRequest": StringAttribute, //
        "key": StringAttribute, //
        "limitBasis": StringAttribute, //
        "backingTable_HRPLimitParametersRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_signinglimits.parameters");
  }
}
mixin(EntityCalls!("HcmSignLimitParametersEntity"));

version(test_model_hcm) { unittest {
    assert(HcmSignLimitParametersEntity);
  
    auto entity = HcmSignLimitParametersEntity;
  }
}