module models.hcm.entities.workers.base;

@safe:
import models.hcm;

class DHcmWorkerBaseEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerBaseEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "personnelNumber": StringAttribute, //
        "person": StringAttribute, //
        "partyNumber": StringAttribute, //
        "KnownAs": StringAttribute, //
        "LanguageId": StringAttribute, //
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
        "firstName": StringAttribute, //
        "middleName": StringAttribute, //
        "lastNamePrefix": StringAttribute, //
        "lastName": StringAttribute, //
        "nameValidFrom": StringAttribute, //
        "nameValidTo": StringAttribute, //
        "partyType": StringAttribute, //
        "nameSequenceDisplayAs": StringAttribute, //
        "electronicLocationId": StringAttribute, //
        "allowRehire": StringAttribute, //
        "relationship_PersonRelationshipId": StringAttribute, //
        "relationship_LanguageRelationshipId": StringAttribute, //
        "relationship_EthnicOriginRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_workers.base");
  }
}
mixin(EntityCalls!("HcmWorkerBaseEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerBaseEntity);
  
    auto entity = HcmWorkerBaseEntity;
  }
}