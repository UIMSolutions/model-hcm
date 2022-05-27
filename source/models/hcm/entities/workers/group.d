module models.hcm.entities.workers.group;

@safe:
import models.hcm;

class DHcmWorkerGroupEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute, //
        "employeeGroupId": StringAttribute, //
        "backingTable_HcmWorkerGroup_RURelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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