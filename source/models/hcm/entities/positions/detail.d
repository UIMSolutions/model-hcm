/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.positions.detail;

@safe:
import models.hcm;

class DHcmPositionDetailEntity : DEntity {
  mixin(EntityThis!("HcmPositionDetailEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "availableForAssignment": StringAttribute, //
        "compensationRegion": StringAttribute, //
        "compensationRegionId": UUIDAttribute, //
        "department": StringAttribute, //
        "departmentNumber": StringAttribute, //
        "description": StringAttribute, //
        "fullTimeEquivalent": StringAttribute, //
        "job": StringAttribute, //
        "jobId": UUIDAttribute, //
        "position": StringAttribute, //
        "positionId": UUIDAttribute, //
        "positionType": StringAttribute, //
        "positionTypeId": UUIDAttribute, //
        "title": StringAttribute, //
        "titleId": UUIDAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "relationship_PositionRelationshipId": UUIDAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
        "relationship_PositionTypeRelationshipId": UUIDAttribute, //
        "relationship_TitleRelationshipId": UUIDAttribute, //
        "relationship_DepartmentRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.positions");
  }
}
mixin(EntityCalls!("HcmPositionDetailEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionDetailEntity);
  
    auto entity = HcmPositionDetailEntity;
  }
}