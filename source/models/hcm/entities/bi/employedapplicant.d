module models.hcm.entities.bi.employedapplicant;

@safe:
import models.hcm;

class DHcmBIEmployedApplicantEntity : DOOPEntity {
  mixin(EntityThis!("HcmBIEmployedApplicantEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "application": StringAttribute, //
        "applicant": StringAttribute, //
        "correspondenceAction": StringAttribute, //
        "dateOfReceipt": StringAttribute, //
        "expiryDate": StringAttribute, //
        "hiringManager": StringAttribute, //
        "media": StringAttribute, //
        "recruitmentProject": StringAttribute, //
        "lodgingCost": StringAttribute, //
        "otherCost": StringAttribute, //
        "travelCost": StringAttribute, //
        "educationLevel": StringAttribute, //
        "rating": StringAttribute, //
        "reasonCode": StringAttribute, //
        "applicationStatus": StringAttribute, //
        "startDate": StringAttribute, //
        "createdSource": StringAttribute, //
        "job": StringAttribute, //
        "department": StringAttribute, //
        "company": StringAttribute, //
        "employment": StringAttribute, //
        "performance": StringAttribute, //
        "demographics": StringAttribute, //
        "title": StringAttribute, //
        "geographicLocation": StringAttribute, //
        "applicantType": StringAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "postalAddressValidFrom": StringAttribute, //
        "postalAddressValidTo": StringAttribute, //
        "jobDetailValidFrom": StringAttribute, //
        "jobDetailValidTo": StringAttribute, //
        "employmentDetailValidFrom": StringAttribute, //
        "employmentDetailValidTo": StringAttribute, //
        "employmentValidTo": StringAttribute, //
        "employmentValidFrom": StringAttribute, //
        "workerTitleValidFrom": StringAttribute, //
        "workerTitleValidTo": StringAttribute, //
        "personDetailsValidFromPrivate": StringAttribute, //
        "personDetailsValidToPrivate": StringAttribute, //
        "jobDetailValidFromPrivate": StringAttribute, //
        "jobDetailValidToPrivate": StringAttribute, //
        "employmentDetailValidFromPrivate": StringAttribute, //
        "employmentDetailValidToPrivate": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, ///HcmBIEmployedApplicantEntity
    ])
    .registerPath("hcm_bi.employedapplicants");
  }
}
mixin(EntityCalls!("HcmBIEmployedApplicantEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmBIEmployedApplicantEntity);
  
  auto entity = HcmBIEmployedApplicantEntity;
  }
}