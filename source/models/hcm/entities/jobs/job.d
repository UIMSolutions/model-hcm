/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.job;

@safe:
import models.hcm;

class DHcmJobEntity : DEntity {
  mixin(EntityThis!("HcmJobEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "jobId": UUIDAttribute, //
        "maximumNumberOfPositions": StringAttribute, //
        "compensationLevel": StringAttribute, //
        "compensationLevelId": UUIDAttribute, //
        "fullTimeEquivalent": StringAttribute, //
        
        "compensationReferenceJob": StringAttribute, //
        "function": StringAttribute, //
        "functionId": UUIDAttribute, //
        "jobType": StringAttribute, //
        "jobTypeId": UUIDAttribute, //
        "marketPriceControlPoint": StringAttribute, //
        "marketPriceHighThreshold": StringAttribute, //
        "marketPriceLowThreshold": StringAttribute, //
        "marketPriceSource": StringAttribute, //
        "jobDescription": StringAttribute, //
        "compensationSurveyCompany": StringAttribute, //
        "compensationSurveyCompanyId": UUIDAttribute, //
        "title": StringAttribute, //
        "titleId": UUIDAttribute, //
        "effective": StringAttribute, //
        "expiration": StringAttribute, //
        "allowUnlimitedPositions": StringAttribute, //
        "paidHourly": StringAttribute, //
        "relationship_TitleRelationshipId": UUIDAttribute, //
        "relationship_JobTypeRelationshipId": UUIDAttribute, //
        "relationship_JobFunctionRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_jobs");
  }
}
mixin(EntityCalls!("HcmJobEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobEntity);
  
    auto entity = HcmJobEntity;
  }
}