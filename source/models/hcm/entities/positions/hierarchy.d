module models.hcm.entities.positions.hierarchy;

@safe:
import models.hcm;

class DHcmPositionHierarchyEntity : DOOPEntity {
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

version(test_model_hcm) {
  unittest {
    assert(HcmPositionHierarchyEntity);
  
    auto entity = HcmPositionHierarchyEntity;
  }
}