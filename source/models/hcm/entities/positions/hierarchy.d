module models.hcm.entities.positions.hierarchy;

@safe:
import models.hcm;

class DHcmPositionHierarchyEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionHierarchyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "parentPosition": StringAttribute, //
        "position": StringAttribute, //
        "positionHierarchyType": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "positionId": StringAttribute, //
        "parentPositionId": StringAttribute, //
        "hierarchyType": StringAttribute, //
        "hierarchyTypeName": StringAttribute, //
        "relationship_PositionRelationshipId": StringAttribute, //
        "relationship_ParentPositionRelationshipId": StringAttribute, //
        "relationship_PositionHierarchyTypeRelationshipId": StringAttribute, //      ])
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