module models.hcm.entities.jobs.detail;

@safe:
import models.hcm;

class DHcmJobDetailEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobDetailEntity"));

  override void initialize() {
    super.initialize(configSettings);

    this
      .addValues([
        "compensationLevel": StringAttribute, //
        "compensationLevelId": UUIDAttribute, //
        "fullTimeEquivalent": StringAttribute, //
        "description": StringAttribute, //
        "compensationReferenceJob": StringAttribute, //
        "job": StringAttribute, //
        "jobId": UUIDAttribute, //
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
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "paidHourly": StringAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
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