module models.hcm.entities.ethnicorigin;

@safe:
import models.hcm;

class DHcmEthnicOriginEntity : DOOPEntity {
  mixin(EntityThis!("HcmEthnicOriginEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, // 
        "ethnicOriginId": UUIDAttribute, // 
      ])
      .registerPath("hcm_ethnicorigins");
  }
}
mixin(EntityCalls!("HcmEthnicOriginEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmEthnicOriginEntity);
  
    auto entity = HcmEthnicOriginEntity;
  }
}