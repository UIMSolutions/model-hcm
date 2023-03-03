/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.bi.employedapplicant;

@safe:
import models.hcm;

class DHcmBIEmployedApplicantEntity : DEntity {
  mixin(EntityThis!("HcmBIEmployedApplicantEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, ///HcmBIEmployedApplicantEntity
    ])
    .registerPath("hcm_bi.employedapplicants");
  }
}
mixin(EntityCalls!("HcmBIEmployedApplicantEntity"));

version(test_model_hcm) { unittest {
    assert(HcmBIEmployedApplicantEntity);
  
  auto entity = HcmBIEmployedApplicantEntity;
  }
}