module models.hcm.entities.workers.contact;

@safe:
import models.hcm;

class DHcmWorkerContactEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerContactEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "personnelNumber": StringAttribute,
        "type": StringAttribute,
        "locator": StringAttribute,
        "description": StringAttribute,
        "purpose": StringAttribute,
        "locatorExtension": StringAttribute,
        "countryRegionCode": StringAttribute,
        "isPrimary": StringAttribute,
        "isMobilePhone": StringAttribute,
        "isPrivate": StringAttribute,
        "locationId": StringAttribute,
        "partyNumber": StringAttribute,
        "relationship_HcmWorkerRelationshipId": StringAttribute,
        "backingTable_DirPartyContactEntityRelationshipId": StringAttribute,
      ])
      .registerPath("hcm_workers.contacts");
  }
}
mixin(EntityCalls!("HcmWorkerContactEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerContactEntity);
  
    auto entity = HcmWorkerContactEntity;
  }
}