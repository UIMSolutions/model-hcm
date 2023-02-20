module models.hcm.entities.workers.worker;

@safe:
import models.hcm;

class DHcmWorkerEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "personnelNumber": StringAttribute, //
        "person": StringAttribute, //
        "partyNumber": StringAttribute, //
        "knownAs": StringAttribute, //
        "languageId": UUIDAttribute, //
        "name": StringAttribute, //
        "nameAlias": StringAttribute, //
        "phoneticFirstName": StringAttribute, //
        "phoneticLastName": StringAttribute, //
        "phoneticMiddleName": StringAttribute, //
        "primaryAddressLocation": StringAttribute, //
        "primaryContactEmail": StringAttribute, //
        "primaryContactEmailDescription": StringAttribute, //
        "primaryContactEmailIsIM": StringAttribute, //
        "primaryContactEmailIsPrivate": StringAttribute, //
        "primaryContactEmailPurpose": StringAttribute, //
        "primaryContactFax": StringAttribute, //
        "primaryContactFaxDescription": StringAttribute, //
        "primaryContactFaxExtension": StringAttribute, //
        "primaryContactFaxIsPrivate": StringAttribute, //
        "primaryContactFaxPurpose": StringAttribute, //
        "primaryContactPhone": StringAttribute, //
        "primaryContactPhoneDescription": StringAttribute, //
        "primaryContactPhoneExtension": StringAttribute, //
        "primaryContactPhoneIsMobile": StringAttribute, //
        "primaryContactPhoneIsPrivate": StringAttribute, //
        "primaryContactPhonePurpose": StringAttribute, //
        "primaryContactURL": StringAttribute, //
        "primaryContactURLDescription": StringAttribute, //
        "primaryContactURLIsPrivate": StringAttribute, //
        "primaryContactURLPurpose": StringAttribute, //
        "primaryContactFacebook": StringAttribute, //
        "primaryContactFacebookDescription": StringAttribute, //
        "primaryContactFacebookIsPrivate": StringAttribute, //
        "primaryContactFacebookPurpose": StringAttribute, //
        "primaryContactLinkedIn": StringAttribute, //
        "primaryContactLinkedInDescription": StringAttribute, //
        "primaryContactLinkedInIsPrivate": StringAttribute, //
        "primaryContactLinkedInPurpose": StringAttribute, //
        "primaryContactTwitter": StringAttribute, //
        "primaryContactTwitterPurpose": StringAttribute, //
        "primaryContactTwitterIsPrivate": StringAttribute, //
        "primaryContactTwitterDescription": StringAttribute, //
        "professionalSuffix": StringAttribute, //
        "professionalTitle": StringAttribute, //
        "personalTitle": StringAttribute, //
        "personalSuffix": StringAttribute, //
        "title": StringAttribute, //
        "titleId": UUIDAttribute, //
        "originalHireDateTime": StringAttribute, //
        "seniorityDate": StringAttribute, //
        "anniversaryDateTime": StringAttribute, //
        "officeLocation": StringAttribute, //
        "officeLocationId": UUIDAttribute, //
        "summaryValidFrom": StringAttribute, //
        "summaryValidTo": StringAttribute, //
        "birthDate": StringAttribute, //
        "citizenshipCountryRegion": StringAttribute, //
        "nationalityCountryRegion": StringAttribute, //
        "deceasedDate": StringAttribute, //
        "disabledVerificationDate": StringAttribute, //
        "education": StringAttribute, //
        "ethnicOrigin": StringAttribute, //
        "ethnicOriginId": UUIDAttribute, //
        "fatherBirthCountryRegion": StringAttribute, //
        "gender": StringAttribute, //
        "isDisabled": StringAttribute, //
        "isFulltimeStudent": StringAttribute, //
        "motherBirthCountryRegion": StringAttribute, //
        "nativeLanguage": StringAttribute, //
        "nativeLanguageId": UUIDAttribute, //
        "personBirthCountryRegion": StringAttribute, //
        "personBirthCity": StringAttribute, //
        "isDisabledVeteran": StringAttribute, //
        "isExpatriateRulingApplicable": StringAttribute, //
        "expatriateRulingValidFrom": StringAttribute, //
        "expatriateRulingValidTo": StringAttribute, //
        "maritalStatus": StringAttribute, //
        "numberOfDependents": StringAttribute, //
        "militaryServiceStartDate": StringAttribute, //
        "militaryServiceEndDate": StringAttribute, //
        "veteranStatusId": UUIDAttribute, //
        "veteranStatus": StringAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "addressBooks": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressCountryRegionId": UUIDAttribute, //
        "addressCountryRegionISOCode": StringAttribute, //
        "addressCounty": StringAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressLocationId": UUIDAttribute, //
        "addressNameDescription": StringAttribute, //
        "addressPurpose": StringAttribute, //
        "addressState": StringAttribute, //
        "addressStreet": StringAttribute, //
        "addressZipCode": StringAttribute, //
        "addressValidFrom": StringAttribute, //
        "addressValidTo": StringAttribute, //
        "firstName": StringAttribute, //
        "middleName": StringAttribute, //
        "lastNamePrefix": StringAttribute, //
        "lastName": StringAttribute, //
        "nameValidFrom": StringAttribute, //
        "nameValidTo": StringAttribute, //
        "partyType": StringAttribute, //
        "nameSequenceDisplayAs": StringAttribute, //
        "electronicLocationId": UUIDAttribute, //
        "workerType": StringAttribute, //
        "workerStatus": StringAttribute, //
        "objectId": UUIDAttribute, //
        "allowRehire": StringAttribute, //
        "worksFromHome": StringAttribute, //
        "relationship_TitleRelationshipId": UUIDAttribute, //
        "relationship_LanguageRelationshipId": UUIDAttribute, //
        "relationship_PersonRelationshipId": UUIDAttribute, //
        "relationship_EthnicOriginRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers");
  }
}
mixin(EntityCalls!("HcmWorkerEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerEntity);
  
    auto entity = HcmWorkerEntity;
  }
}