module models.hcm.entities.bi.terminatedapplicant;

@safe:
import models.hcm;

class DHcmBITerminatedApplicantEntity : DEntity {
  mixin(EntityThis!("HcmBITerminatedApplicantEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "applicant": StringAttribute, //
        "application": StringAttribute, //
        "correspondenceAction": StringAttribute, //
        "createdSource": StringAttribute, //
        "dateOfReceipt": StringAttribute, //
        "demographics": StringAttribute, //
        "department": StringAttribute, //
        "educationLevel": StringAttribute, //
        "employment": StringAttribute, //
        "performance": StringAttribute, //
        "expiryDate": StringAttribute, //
        "geographicLocation": StringAttribute, //
        "hiringManager": StringAttribute, //
        "job": StringAttribute, //
        "lodgingCost": StringAttribute, //
        "media": StringAttribute, //
        "otherCost": StringAttribute, //
        "rating": StringAttribute, //
        "reasonCode": StringAttribute, //
        "company": StringAttribute, //
        "applicationStatus": StringAttribute, //
        "applicantType": StringAttribute, //
        "recruitmentProject": StringAttribute, //
        "travelCost": StringAttribute, //
        "startDate": StringAttribute, //
        "terminationDate": StringAttribute, //
        "jobDetailValidFrom": StringAttribute, //
        "jobDetailValidTo": StringAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "employmentDetailValidFrom": StringAttribute, //
        "employmentDetailValidTo": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_bi.terminatedapplicants");
  }
}
mixin(EntityCalls!("HcmBITerminatedApplicantEntity"));

version(test_model_hcm) { unittest {
    assert(HcmBITerminatedApplicantEntity);
  
    auto entity = HcmBITerminatedApplicantEntity;
    // TODO more tests
  }
}