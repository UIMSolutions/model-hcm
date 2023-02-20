module models.hcm.entities.workers.advanceholdertable;

@safe:
import models.hcm;

class DHcmWorkerEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "company": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "employeeId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "name": StringAttribute, //
        "advanceHolder": StringAttribute, //
        "hcmEmployment": StringAttribute, //
        "workTypeId": UUIDAttribute, //
        "legalEntity": StringAttribute, //
        "Worker": StringAttribute, //
        "partyNumber": StringAttribute, //
        "backingTable_EmployeeTable_RURelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.advanceholdertables");
  }
}
mixin(EntityCalls!("HcmWorkerEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerEntity);
  
    auto entity = HcmWorkerEntity;
  }
}