module models.hcm.entities.workers.group;

@safe:
import models.hcm;

class DHcmWorkerGroupEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "employeeGroupId": UUIDAttribute, //
        "backingTable_HcmWorkerGroup_RURelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.groups");
  }
}
mixin(EntityCalls!("HcmWorkerGroupEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerGroupEntity);
  
    auto entity = HcmWorkerGroupEntity;
  }
}