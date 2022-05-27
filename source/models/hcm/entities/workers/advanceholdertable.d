module models.hcm.entities.workers.advanceholdertable;

@safe:
import models.hcm;

class DHcmWorkerEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "company": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "employeeId": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "name": StringAttribute, //
        "advanceHolder": StringAttribute, //
        "hcmEmployment": StringAttribute, //
        "workTypeId": StringAttribute, //
        "legalEntity": StringAttribute, //
        "Worker": StringAttribute, //
        "partyNumber": StringAttribute, //
        "backingTable_EmployeeTable_RURelationshipId": StringAttribute, //
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