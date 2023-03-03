module models.hcm.entities.workers.contact;

@safe:
import models.hcm;

class DHcmWorkerContactEntity : DEntity {
  mixin(EntityThis!("HcmWorkerContactEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "locationId": UUIDAttribute,
        "partyNumber": StringAttribute,
        "relationship_HcmWorkerRelationshipId": UUIDAttribute,
        "backingTable_DirPartyContactEntityRelationshipId": UUIDAttribute,
      ])
      .registerPath("hcm_workers.contacts");
  }
}
mixin(EntityCalls!("HcmWorkerContactEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerContactEntity);
  
    auto entity = HcmWorkerContactEntity;
  }
}