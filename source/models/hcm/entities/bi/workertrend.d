/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.bi.workertrend;

@safe:
import models.hcm;

class DHcmBIPerformanceEntity : DEntity {
  mixin(EntityThis!("HcmBIPerformanceEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "age": StringAttribute, //
        "benefit": StringAttribute, //
        "company": StringAttribute, //
        "compensation": StringAttribute, //
        "demographics": StringAttribute, //
        "employment": StringAttribute, //
        "geographicLocation": StringAttribute, //
        "job": StringAttribute, //
        "performance": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "position": StringAttribute, //
        "reportsTo": StringAttribute, //
        "title": StringAttribute, //
        "trendDate": StringAttribute, //
        "yearsOfService": StringAttribute, //
        "jobDetailValidTo": StringAttribute, //
        "jobDetailValidFrom": StringAttribute, //
        "positionDetailValidFrom": StringAttribute, //
        "positionDetailValidTo": StringAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "employmentDetailValidFrom": StringAttribute, //
        "employmentDetailValidTo": StringAttribute, //
    ])
    .registerPath("hcm_bi.workertrends");
  }
}
mixin(EntityCalls!("HcmBIPerformanceEntity"));

version(test_model_hcm) { unittest {
    assert(HcmBIPerformanceEntity);
  
  auto entity = HcmBIPerformanceEntity;
  }
}