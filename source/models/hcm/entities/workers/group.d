/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.workers.group;

@safe:
import models.hcm;

class DHcmWorkerGroupEntity : DEntity {
  mixin(EntityThis!("HcmWorkerGroupEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        
        "employeeGroupId": UUIDAttribute, //
        "backingTable_HcmWorkerGroup_RURelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.groups");
  }
}
mixin(EntityCalls!("HcmWorkerGroupEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerGroupEntity);
  
    auto entity = HcmWorkerGroupEntity;
  }
}