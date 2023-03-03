/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.templatetask;

@safe:
import models.hcm;

class DHcmJobTemplateTaskEntity : DEntity {
  mixin(EntityThis!("HcmJobTemplateTaskEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "jobTask": StringAttribute, //
        "jobTemplate": StringAttribute, //
        "note": StringAttribute, //
        "jobTaskId": UUIDAttribute, //
        "jobTemplateId": UUIDAttribute, //
        "relationship_HcmJobTaskRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_jobs.templatetasks");
  }
}
mixin(EntityCalls!("HcmJobTemplateTaskEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobTemplateTaskEntity);
  
    auto entity = HcmJobTemplateTaskEntity;
  }
}