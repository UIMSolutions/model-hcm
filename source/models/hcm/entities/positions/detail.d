module models.hcm.entities.positions.detail;

@safe:
import models.hcm;

class DHcmPositionDetailEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "availableForAssignment": StringAttribute, //
        "compensationRegion": StringAttribute, //
        "compensationRegionId": StringAttribute, //
        "department": StringAttribute, //
        "departmentNumber": StringAttribute, //
        "description": StringAttribute, //
        "fullTimeEquivalent": StringAttribute, //
        "job": StringAttribute, //
        "jobId": StringAttribute, //
        "position": StringAttribute, //
        "positionId": StringAttribute, //
        "positionType": StringAttribute, //
        "positionTypeId": StringAttribute, //
        "title": StringAttribute, //
        "titleId": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "relationship_PositionRelationshipId": StringAttribute, //
        "relationship_JobRelationshipId": StringAttribute, //
        "relationship_PositionTypeRelationshipId": StringAttribute, //
        "relationship_TitleRelationshipId": StringAttribute, //
        "relationship_DepartmentRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_employment.positions");
  }
}
mixin(EntityCalls!("HcmPositionDetailEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionDetailEntity);
  
    auto entity = HcmPositionDetailEntity;
  }
}