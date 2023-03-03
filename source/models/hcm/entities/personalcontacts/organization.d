/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.personalcontacts.organization;

@safe:
import models.hcm;

class DHcmPersonalContactOrganizationEntity : DEntity {
  mixin(EntityThis!("HcmPersonalContactOrganizationEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "workerPersonnelNumber": StringAttribute, //
        "contactOrganizationPartyNumber": StringAttribute, //
        "relationshipType": StringAttribute, //
        "isBeneficiary": StringAttribute, //
        "organizationName": StringAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, //
        "relationship_RelationshipTypeRelationshipId": UUIDAttribute, //
        "backingTable_DirOrganizationRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_personalcontacts.organizations");
  }
}
mixin(EntityCalls!("HcmPersonalContactOrganizationEntity"));

version(test_model_hcm) { unittest {
    assert(HcmPersonalContactOrganizationEntity);
  
    auto entity = HcmPersonalContactOrganizationEntity;
  }
}