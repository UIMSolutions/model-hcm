module models.hcm.entities.positions.hierarchytype;

@safe:
import models.hcm;

class DHcmPositionHierarchyTypeEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionHierarchyTypeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "hierarchyType": StringAttribute, //
        "name": StringAttribute, //
        "isImmutable": StringAttribute, //      
      ])
      .registerPath("hcm_employment.hierarchytypes");
  }
}
mixin(EntityCalls!("HcmPositionHierarchyTypeEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionHierarchyTypeEntity);
  
    auto entity = HcmPositionHierarchyTypeEntity;
  }
}