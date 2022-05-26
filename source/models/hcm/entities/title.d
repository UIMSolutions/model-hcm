module models.hcm.entities.title;

@safe:
import models.hcm;

class DHcmTitleEntity : DOOPEntity {
  mixin(EntityThis!("HcmTitleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "TitleId": StringAttribute, // 
      ])
      .registerPath("hcm_titles");
  }
}
mixin(EntityCalls!("HcmTitleEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmTitleEntity);
  
    auto entity = HcmTitleEntity;
  }
}