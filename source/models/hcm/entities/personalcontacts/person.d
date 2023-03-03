/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.personalcontacts.person;

@safe:
import models.hcm;

class DHcmPersonalContactPersonEntity : DEntity {
  mixin(EntityThis!("HcmPersonalContactPersonEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "relationship_WorkerRelationshipId": UUIDAttribute, //
        "relationship_RelationshipTypeRelationshipId": UUIDAttribute, //
        "backingTable_DirPersonBaseEntityRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_personalcontacts.persons");
  }
}
mixin(EntityCalls!("HcmPersonalContactPersonEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPersonalContactPersonEntity);
  
    auto entity = HcmPersonalContactPersonEntity;
  }
}