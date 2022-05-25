module models.hcm.entities.jobs.detail;

@safe:
import models.hcm;

class DHcmJobDetailEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "compensationLevel": StringAttribute, //
        "compensationLevelId": StringAttribute, //
        "fullTimeEquivalent": StringAttribute, //
        "description": StringAttribute, //
        "compensationReferenceJob": StringAttribute, //
        "job": StringAttribute, //
        "jobId": StringAttribute, //
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
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "paidHourly": StringAttribute, //
        "relationship_JobRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_jobs.details");
  }
}
mixin(EntityCalls!("HcmJobDetailEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmJobDetailEntity);
  
    auto entity = HcmJobDetailEntity;
  }
}