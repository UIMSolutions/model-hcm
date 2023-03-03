module models.hcm.entities.employments.employment;

@safe:
import models.hcm;

class DHcmEmploymentEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "dimension": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "regulatoryEstablishment": StringAttribute, //
        "regulatoryEstablishmentId": UUIDAttribute, //
        "workerType": StringAttribute, //
        "legalEntity": StringAttribute, //
        "legalEntityId": UUIDAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "calendarId": UUIDAttribute, //
        "calendarLegalEntityId": UUIDAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_EmployedWorkerRelationshipId": UUIDAttribute, //
        "relationship_WorkCalendarEntityRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_employments");
  }
}
mixin(EntityCalls!("HcmEmploymentEntity"));

version(test_model_hcm) { unittest {
    assert(HcmEmploymentEntity);
  
    auto entity = HcmEmploymentEntity;
  }
}