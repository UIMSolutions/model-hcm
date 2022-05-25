module models.hcm.employments.employment;

@safe:
import models.hcm;

class DHcmEmploymentEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "dimension": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "regulatoryEstablishment": StringAttribute, //
        "regulatoryEstablishmentId": StringAttribute, //
        "workerType": StringAttribute, //
        "legalEntity": StringAttribute, //
        "legalEntityId": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "calendarId": StringAttribute, //
        "calendarLegalEntityId": StringAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": StringAttribute, //
        "relationship_EmployedWorkerRelationshipId": StringAttribute, //
        "relationship_WorkCalendarEntityRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_employments");
  }
}
mixin(EntityCalls!("HcmEmploymentEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmEmploymentEntity);
  
    auto entity = HcmEmploymentEntity;
  }
}