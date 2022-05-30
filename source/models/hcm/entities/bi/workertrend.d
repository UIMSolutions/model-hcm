module models.hcm.entities.bi.workertrend;

@safe:
import models.hcm;

class DHcmBIPerformanceEntity : DOOPEntity {
  mixin(EntityThis!("HcmBIPerformanceEntity"));

  override void initialize() {
    super.initialize;

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

version(test_model_hcm) {
  unittest {
    assert(HcmBIPerformanceEntity);
  
  auto entity = HcmBIPerformanceEntity;
  }
}