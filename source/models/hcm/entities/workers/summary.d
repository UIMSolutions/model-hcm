/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.workers.summary;

@safe:
import models.hcm;

class DHcmWorkerSummaryEntity : DEntity {
  mixin(EntityThis!("HcmWorkerSummaryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "buildingAddress": StringAttribute, //
        "officeLocation": StringAttribute, //
        "originalHireDateTime": StringAttribute, //
        "seniorityDate": StringAttribute, //
        "anniversaryDateTime": StringAttribute, //
        "title": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "titleId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "buildingAddressId": UUIDAttribute, //
        "worksFromHome": StringAttribute, //
        "relationship_TitleRelationshipId": UUIDAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.summary");
  }
}
mixin(EntityCalls!("HcmWorkerSummaryEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerSummaryEntity);
  
    auto entity = HcmWorkerSummaryEntity;
  }
}