/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.workers.advanceholdertable;

@safe:
import models.hcm;

class DHcmWorkerEntity : DEntity {
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

version(test_model_hcm) { unittest {
    assert(HcmWorkerEntity);
  
    auto entity = HcmWorkerEntity;
  }
}