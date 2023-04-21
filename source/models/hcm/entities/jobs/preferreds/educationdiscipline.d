/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.preferrededucationdiscipline;

@safe:
import models.hcm;

class DHcmJobPreferredEducationDisciplineEntity : DEntity {
  mixin(EntityThis!("HcmJobPreferredEducationDisciplineEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "education": StringAttribute, //
        "educationId": UUIDAttribute, //
        "importance": StringAttribute, //
        "job": StringAttribute, //
        "jobId": UUIDAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_jobs.preferrededucationdisciplines");
  }
}
mixin(EntityCalls!("HcmJobPreferredEducationDisciplineEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobPreferredEducationDisciplineEntity);
  
    auto entity = HcmJobPreferredEducationDisciplineEntity;
  }
}
