/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.positions.hierarchy;

@safe:
import models.hcm;

class DHcmPositionHierarchyEntity : DEntity {
  mixin(EntityThis!("HcmPositionHierarchyEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "parentPosition": StringAttribute, //
        "position": StringAttribute, //
        "positionHierarchyType": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "positionId": UUIDAttribute, //
        "parentPositionId": UUIDAttribute, //
        "hierarchyType": StringAttribute, //
        "hierarchyTypeName": StringAttribute, //
        "relationship_PositionRelationshipId": UUIDAttribute, //
        "relationship_ParentPositionRelationshipId": UUIDAttribute, //
        "relationship_PositionHierarchyTypeRelationshipId": UUIDAttribute, //      
      ])
      .registerPath("hcm_employment.hierarchies");
  }
}
mixin(EntityCalls!("HcmPositionHierarchyEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionHierarchyEntity);
  
    auto entity = HcmPositionHierarchyEntity;
  }
}