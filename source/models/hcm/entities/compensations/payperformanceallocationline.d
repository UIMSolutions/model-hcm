/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.compensations.payperformanceallocationline;

@safe:
import models.hcm;

class DHcmCompensationPayPerformanceAllocationLineEntity : DEntity {
  mixin(EntityThis!("HcmCompensationPayPerformanceAllocationLineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "allocationId": UUIDAttribute, //
        "compPerfRatingId": UUIDAttribute, //
        "perfFactorPercent": StringAttribute, //
        "planType": StringAttribute, //
        "ratingLevel": StringAttribute, //
        "ratingLevelId": UUIDAttribute, //
        "ratingModel": StringAttribute, //
        "ratingModelId": UUIDAttribute, //
        "ratingModelType": StringAttribute, //
        "relationship_HRMCompPerfAllocationRelationshipId": UUIDAttribute, //
        "relationship_HRMCompPerfRatingRelationshipId": UUIDAttribute, //
        "backingTable_HRMCompPerfAllocationLineRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_compensations.payperformanceallocationlines");
  }
}
mixin(EntityCalls!("HcmCompensationPayPerformanceAllocationLineEntity"));

version(test_model_hcm) { unittest {
    assert(HcmCompensationPayPerformanceAllocationLineEntity);
  
    auto entity = HcmCompensationPayPerformanceAllocationLineEntity;
  }
}