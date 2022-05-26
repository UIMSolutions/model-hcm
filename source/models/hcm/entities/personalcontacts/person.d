module models.hcm.entities.personalcontacts.person;

@safe:
import models.hcm;

class DHcmPersonalContactPersonEntity : DOOPEntity {
  mixin(EntityThis!("HcmPersonalContactPersonEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "workerPersonnelNumber": StringAttribute, //
        "contactPersonPartyNumber": StringAttribute, //
        "relationshipType": StringAttribute, //
        "contactFirstName": StringAttribute, //
        "contactMiddleName": StringAttribute, //
        "contactLastNamePrefix": StringAttribute, //
        "contactLastName": StringAttribute, //
        "isBeneficiary": StringAttribute, //
        "isEmergencyContact": StringAttribute, //
        "emergencyContactPrimarySecondary": StringAttribute, //
        "isDependent": StringAttribute, //
        "isDependentCourtOrdered": StringAttribute, //
        "isDependentDomesticPartnerVerified": StringAttribute, //
        "dependentCourtOrderedExpirationDate": StringAttribute, //
        "gender": StringAttribute, //
        "birthDate": StringAttribute, //
        "isFulltimeStudent": StringAttribute, //
        "isDisabled": StringAttribute, //
        "disabledVerificationDate": StringAttribute, //
        "contactName": StringAttribute, //
        "contactPartyType": StringAttribute, //
        "dependentPersonalContactRelationship": StringAttribute, //
        "emergencyContactPersonalContactRelationship": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, //
        "relationship_RelationshipTypeRelationshipId": StringAttribute, //
        "backingTable_DirPersonBaseEntityRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_personalcontacts.persons");
  }
}
mixin(EntityCalls!("HcmPersonalContactPersonEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPersonalContactPersonEntity);
  
    auto entity = HcmPersonalContactPersonEntity;
  }
}