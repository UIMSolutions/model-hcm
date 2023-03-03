/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.contractor;

@safe:
import models.hcm;

class DHcmContractorEntity : DEntity {
  mixin(EntityThis!("HcmContractorEntity"));

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
        "primaryContactTwitterDescription": StringAttribute, //
        "primaryContactTwitterIsPrivate": StringAttribute, //
        "primaryContactTwitterPurpose": StringAttribute, //
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
        "veteranStatus": StringAttribute, //
        "veteranStatusId": UUIDAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "addressBooks": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressCountryRegionId": UUIDAttribute, //
        "addressCountryRegionISOCode": StringAttribute, //
        "addressCounty": StringAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressLocationId": UUIDAttribute, //
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
        "employmentLegalEntityId": UUIDAttribute, //
        "regulatoryEstablishment": StringAttribute, //
        "regulatoryEstablishmentId": UUIDAttribute, //
        "startDate": StringAttribute, //
        "adjustedWorkerStartDate": StringAttribute, //
        "lastDateWorked": StringAttribute, //
        "terminationReason": StringAttribute, //
        "terminationReasonCodeId": UUIDAttribute, //
        "terminationDate": StringAttribute, //
        "employmentNoticeEmployerQuantity": StringAttribute, //
        "employmentNoticeEmployerUnit": StringAttribute, //
        "employmentNoticeWorkerQuantity": StringAttribute, //
        "employmentNoticeWorkerUnit": StringAttribute, //
        "employmentDetailsEffective": StringAttribute, //
        "employmentDetailsExpiration": StringAttribute, //
        "dimension": StringAttribute, //
        "dimensionDisplayValue": StringAttribute, //
        "electronicLocationId": UUIDAttribute, //
        "allowRehire": StringAttribute, //
        "WorksFromHome": StringAttribute, //
        "contractorVendorDataAreaID": StringAttribute, //
        "contractorVendorDataArea": StringAttribute, //
        "contractorVendorId": UUIDAttribute, //
        "contractorPurchaseRequisitionId": UUIDAttribute, //
        "contractorPurchaseOrderId": UUIDAttribute, //
        "contractorDetailsEffective": StringAttribute, //
        "contractorDetailsExpiration": StringAttribute, //
        "calendarId": UUIDAttribute, //
        "calendarDataAreaId": UUIDAttribute, //
        "relationship_TitleRelationshipId": UUIDAttribute, //
        "relationship_LanguageRelationshipId": UUIDAttribute, //
        "relationship_PersonRelationshipId": UUIDAttribute, //
        "relationship_EthnicOriginRelationshipId": UUIDAttribute, //
        "relationship_WorkCalendarRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_contractors");
  }
}
mixin(EntityCalls!("HcmContractorEntity"));

///
unittest {
  auto entity = new DHcmContractorEntity;
  assert(entity.className == "HcmContractorEntity");
}