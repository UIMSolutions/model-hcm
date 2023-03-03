module models.hcm.entities.bi.terminatedworker;

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
        "peportsTo": StringAttribute, //
        "terminationDate": StringAttribute, //
        "title": StringAttribute, //
        "yearsOfService": StringAttribute, //
        "positionDetailValidFrom": StringAttribute, //
        "positionDetailValidTo": StringAttribute, //
        "jobDetailValidFrom": StringAttribute, //
        "jobDetailValidTo": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "employmentDetailValidFrom": StringAttribute, //
        "employmentDetailValidTo": StringAttribute, //
    ])
    .registerPath("hcm_bi.terminatedworkers");
  }
}
mixin(EntityCalls!("HcmBIPerformanceEntity"));

version(test_model_hcm) { unittest {
    assert(HcmBIPerformanceEntity);
  
    auto entity = HcmBIPerformanceEntity;
  }
}