module models.hcm.entities.contractor;

@safe:
import models.hcm;

class DHcmContractorEntity : DOOPEntity {
  mixin(EntityThis!("HcmContractorEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "personnelNumber": StringAttribute, //
        "person": StringAttribute, //
        "partyNumber": StringAttribute, //
        "knownAs": StringAttribute, //
        "languageId": StringAttribute, //
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
        "primaryContactTwitterDescription": StringAttribute, //
        "primaryContactTwitterIsPrivate": StringAttribute, //
        "primaryContactTwitterPurpose": StringAttribute, //
        "professionalSuffix": StringAttribute, //
        "professionalTitle": StringAttribute, //
        "personalTitle": StringAttribute, //
        "personalSuffix": StringAttribute, //
        "title": StringAttribute, //
        "titleId": StringAttribute, //
        "originalHireDateTime": StringAttribute, //
        "seniorityDate": StringAttribute, //
        "anniversaryDateTime": StringAttribute, //
        "officeLocation": StringAttribute, //
        "officeLocationId": StringAttribute, //
        "summaryValidFrom": StringAttribute, //
        "summaryValidTo": StringAttribute, //
        "birthDate": StringAttribute, //
        "citizenshipCountryRegion": StringAttribute, //
        "nationalityCountryRegion": StringAttribute, //
        "deceasedDate": StringAttribute, //
        "disabledVerificationDate": StringAttribute, //
        "education": StringAttribute, //
        "ethnicOrigin": StringAttribute, //
        "ethnicOriginId": StringAttribute, //
        "fatherBirthCountryRegion": StringAttribute, //
        "gender": StringAttribute, //
        "isDisabled": StringAttribute, //
        "isFulltimeStudent": StringAttribute, //
        "motherBirthCountryRegion": StringAttribute, //
        "nativeLanguage": StringAttribute, //
        "nativeLanguageId": StringAttribute, //
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
        "veteranStatus": StringAttribute, //
        "veteranStatusId": StringAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "addressBooks": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressCountryRegionId": StringAttribute, //
        "addressCountryRegionISOCode": StringAttribute, //
        "addressCounty": StringAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressLocationId": StringAttribute, //
        "addressLocationRoles": StringAttribute, //
        "addressNameDescription": StringAttribute, //
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
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "employmentLegalEntity": StringAttribute, //
        "employmentLegalEntityId": StringAttribute, //
        "regulatoryEstablishment": StringAttribute, //
        "regulatoryEstablishmentId": StringAttribute, //
        "startDate": StringAttribute, //
        "adjustedWorkerStartDate": StringAttribute, //
        "lastDateWorked": StringAttribute, //
        "terminationReason": StringAttribute, //
        "terminationReasonCodeId": StringAttribute, //
        "terminationDate": StringAttribute, //
        "employmentNoticeEmployerQuantity": StringAttribute, //
        "employmentNoticeEmployerUnit": StringAttribute, //
        "employmentNoticeWorkerQuantity": StringAttribute, //
        "employmentNoticeWorkerUnit": StringAttribute, //
        "employmentDetailsEffective": StringAttribute, //
        "employmentDetailsExpiration": StringAttribute, //
        "dimension": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "electronicLocationId": StringAttribute, //
        "allowRehire": StringAttribute, //
        "WorksFromHome": StringAttribute, //
        "contractorVendorDataAreaID": StringAttribute, //
        "contractorVendorDataArea": StringAttribute, //
        "contractorVendorId": StringAttribute, //
        "contractorPurchaseRequisitionId": StringAttribute, //
        "contractorPurchaseOrderId": StringAttribute, //
        "contractorDetailsEffective": StringAttribute, //
        "contractorDetailsExpiration": StringAttribute, //
        "calendarId": StringAttribute, //
        "calendarDataAreaId": StringAttribute, //
        "relationship_TitleRelationshipId": StringAttribute, //
        "relationship_LanguageRelationshipId": StringAttribute, //
        "relationship_PersonRelationshipId": StringAttribute, //
        "relationship_EthnicOriginRelationshipId": StringAttribute, //
        "relationship_WorkCalendarRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_contractors");
  }
}
mixin(EntityCalls!("HcmContractorEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmContractorEntity);
  
    auto entity = HcmContractorEntity;
  }
}