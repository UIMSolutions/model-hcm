/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.bi.performance;

@safe:
import models.hcm;

class DHcmBIPerformanceEntity : DEntity {
  mixin(EntityThis!("HcmBIPerformanceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "rating": StringAttribute, //
        "ratingDescription": StringAttribute, //
        "ratingModel": StringAttribute, //
        "ratingModelDescription": StringAttribute, //
        "performance": StringAttribute, //
        "performanceRatingValidFrom": StringAttribute, //
        "performanceRatingValidTo": StringAttribute, //
        "backingTable_HRMCompPerfPlanEmplRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_bi.performance");
  }
}
mixin(EntityCalls!("HcmBIPerformanceEntity"));

version(test_model_hcm) { unittest {
    assert(HcmBIPerformanceEntity);
  
  auto entity = HcmBIPerformanceEntity;
  }
}