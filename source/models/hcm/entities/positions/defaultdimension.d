module models.hcm.entities.positions.defaultdimension;

@safe:
import models.hcm;

class DHcmPositionDefaultDimensionEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionDefaultDimensionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "distributionTemplate": StringAttribute, //
        "dimension": StringAttribute, //
        "legalEntity": StringAttribute, //
        "position": StringAttribute, //
        "legalEntityDataArea": StringAttribute, //
        "distributionTemplateId": StringAttribute, //
        "templateLegalEntity": StringAttribute, //
        "templateLegalEntityId": StringAttribute, //
        "positionId": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_PositionRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_employment.defaultdimensions");
  }
}
mixin(EntityCalls!("HcmPositionDefaultDimensionEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionDefaultDimensionEntity);
  
    auto entity = HcmPositionDefaultDimensionEntity;
  }
}