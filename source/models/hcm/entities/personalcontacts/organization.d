module models.hcm.entities.personalcontacts.organization;

@safe:
import models.hcm;

class DHcmPersonalContactOrganizationEntity : DOOPEntity {
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

version(test_model_hcm) {
  unittest {
    assert(HcmPersonalContactOrganizationEntity);
  
    auto entity = HcmPersonalContactOrganizationEntity;
  }
}