module models.hcm.entities.title;

@safe:
import models.hcm;

class DHcmTitleEntity : DEntity {
  mixin(EntityThis!("HcmTitleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "TitleId": UUIDAttribute, // 
      ])
      .registerPath("hcm_titles");
  }
}
mixin(EntityCalls!("HcmTitleEntity"));

version(test_model_hcm) { unittest {
    assert(HcmTitleEntity);
  
    auto entity = HcmTitleEntity;
  }
}