/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.workers.base;

@safe:
import models.hcm;

class DHcmWorkerBaseEntity : DEntity {
  mixin(EntityThis!("HcmWorkerBaseEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "personnelNumber": StringAttribute, //
        "person": StringAttribute, //
        "partyNumber": StringAttribute, //
        "KnownAs": StringAttribute, //
        "LanguageId": UUIDAttribute, //
        "name": StringAttribute, //
        "nameAlias": StringAttribute, //
        "phoneticFirstName": StringAttribute, //
        "phoneticLastName": StringAttribute, //
        "phoneticMiddleName": StringAttribute, //
        "professionalSuffix": StringAttribute, //
        "professionalTitle": StringAttribute, //
        "personalTitle": StringAttribute, //
        "personalSuffix": StringAttribute, //
        "BirthDate": StringAttribute, //
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
        "firstName": StringAttribute, //
        "middleName": StringAttribute, //
        "lastNamePrefix": StringAttribute, //
        "lastName": StringAttribute, //
        "nameValidFrom": StringAttribute, //
        "nameValidTo": StringAttribute, //
        "partyType": StringAttribute, //
        "nameSequenceDisplayAs": StringAttribute, //
        "electronicLocationId": UUIDAttribute, //
        "allowRehire": StringAttribute, //
        "relationship_PersonRelationshipId": UUIDAttribute, //
        "relationship_LanguageRelationshipId": UUIDAttribute, //
        "relationship_EthnicOriginRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.base");
  }
}
mixin(EntityCalls!("HcmWorkerBaseEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerBaseEntity);
  
    auto entity = HcmWorkerBaseEntity;
  }
}