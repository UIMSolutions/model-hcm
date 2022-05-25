module models.hcm.entities.jobs.job;

@safe:
import models.hcm;

class DHcmJobEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "jobId": StringAttribute, //
        "maximumNumberOfPositions": StringAttribute, //
        "compensationLevel": StringAttribute, //
        "compensationLevelId": StringAttribute, //
        "fullTimeEquivalent": StringAttribute, //
        "description": StringAttribute, //
        "compensationReferenceJob": StringAttribute, //
        "function": StringAttribute, //
        "functionId": StringAttribute, //
        "jobType": StringAttribute, //
        "jobTypeId": StringAttribute, //
        "marketPriceControlPoint": StringAttribute, //
        "marketPriceHighThreshold": StringAttribute, //
        "marketPriceLowThreshold": StringAttribute, //
        "marketPriceSource": StringAttribute, //
        "jobDescription": StringAttribute, //
        "compensationSurveyCompany": StringAttribute, //
        "compensationSurveyCompanyId": StringAttribute, //
        "title": StringAttribute, //
        "titleId": StringAttribute, //
        "effective": StringAttribute, //
        "expiration": StringAttribute, //
        "allowUnlimitedPositions": StringAttribute, //
        "paidHourly": StringAttribute, //
        "relationship_TitleRelationshipId": StringAttribute, //
        "relationship_JobTypeRelationshipId": StringAttribute, //
        "relationship_JobFunctionRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_jobs");
  }
}
mixin(EntityCalls!("HcmJobEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobEntity);
  
    auto entity = HcmJobEntity;
  }
}