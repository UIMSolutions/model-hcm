/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.positions.hierarchytype;

@safe:
import models.hcm;

class DHcmPositionHierarchyTypeEntity : DEntity {
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

version(test_model_hcm) { unittest {
    assert(HcmPositionHierarchyTypeEntity);
  
    auto entity = HcmPositionHierarchyTypeEntity;
  }
}