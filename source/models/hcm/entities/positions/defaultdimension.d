/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.positions.defaultdimension;

@safe:
import models.hcm;

class DHcmPositionDefaultDimensionEntity : DEntity {
  mixin(EntityThis!("HcmPositionDefaultDimensionEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "distributionTemplate": StringAttribute, //
        "dimension": StringAttribute, //
        "legalEntity": StringAttribute, //
        "position": StringAttribute, //
        "legalEntityDataArea": StringAttribute, //
        "distributionTemplateId": UUIDAttribute, //
        "templateLegalEntity": StringAttribute, //
        "templateLegalEntityId": UUIDAttribute, //
        "positionId": UUIDAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_PositionRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_employment.defaultdimensions");
  }
}
mixin(EntityCalls!("HcmPositionDefaultDimensionEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPositionDefaultDimensionEntity);
  
    auto entity = HcmPositionDefaultDimensionEntity;
  }
}