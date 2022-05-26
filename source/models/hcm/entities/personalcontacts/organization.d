module models.hcm.entities.personalcontacts.organization;

@safe:
import models.hcm;

class DHcmPersonalContactOrganizationEntity : DOOPEntity {
  mixin(EntityThis!("HcmPersonalContactOrganizationEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "workerPersonnelNumber": StringAttribute, //
        "contactOrganizationPartyNumber": StringAttribute, //
        "relationshipType": StringAttribute, //
        "isBeneficiary": StringAttribute, //
        "organizationName": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, //
        "relationship_RelationshipTypeRelationshipId": StringAttribute, //
        "backingTable_DirOrganizationRelationshipId": StringAttribute, //
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