module models.hcm.entities.languagecode;

@safe:
import models.hcm;

class DHcmLanguageCodeEntity : DOOPEntity {
  mixin(EntityThis!("HcmLanguageCodeEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "languageCodeId": UUIDAttribute, //
      ])
      .registerPath("hcm_languagecodes");
  }
}
mixin(EntityCalls!("HcmLanguageCodeEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmLanguageCodeEntity);
  
    auto entity = HcmLanguageCodeEntity;
  }
}