/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.languagecode;

@safe:
import models.hcm;

class DHcmLanguageCodeEntity : DEntity {
  mixin(EntityThis!("HcmLanguageCodeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        
        "languageCodeId": UUIDAttribute, //
      ])
      .registerPath("hcm_languagecodes");
  }
}
mixin(EntityCalls!("HcmLanguageCodeEntity"));

version(test_model_hcm) { unittest {
    assert(HcmLanguageCodeEntity);
  
    auto entity = HcmLanguageCodeEntity;
  }
}