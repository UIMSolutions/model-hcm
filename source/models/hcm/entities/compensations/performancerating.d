/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.compensations.performancerating;

@safe:
import models.hcm;

class DHcmCompensationPerformanceRatingEntity : DEntity {
  mixin(EntityThis!("HcmCompensationPerformanceRatingEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "rating": StringAttribute, //
        "effective": StringAttribute, //
        "expiration": StringAttribute, //
        "backingTable_HRMCompPerfRatingRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_compensations.performanceratings");
  }
}
mixin(EntityCalls!("HcmCompensationPerformanceRatingEntity"));

version(test_model_hcm) { unittest {
    assert(HcmCompensationPerformanceRatingEntity);
  
    auto entity = HcmCompensationPerformanceRatingEntity;
  }
}