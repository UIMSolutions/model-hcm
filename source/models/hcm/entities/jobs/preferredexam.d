/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.preferredexam;

@safe:
import models.hcm;

class DHcmJobPreferredExamEntity : DEntity {
  mixin(EntityThis!("HcmJobPreferredExamEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "test": StringAttribute, //
        "testId": UUIDAttribute, //
        "job": StringAttribute, //
        "obId": UUIDAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_jobs.preferredexams");
  }
}
mixin(EntityCalls!("HcmJobPreferredExamEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobPreferredExamEntity);
  
    auto entity = HcmJobPreferredExamEntity;
  }
}