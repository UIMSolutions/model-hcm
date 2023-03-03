module models.hcm.entities.compensations.performancerating;

@safe:
import models.hcm;

class DHcmCompensationPerformanceRatingEntity : DOOPEntity {
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