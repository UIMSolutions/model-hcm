/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.jobs.preferredcertificate;

@safe:
import models.hcm;

class DHcmJobPreferredCertificateEntity : DEntity {
  mixin(EntityThis!("HcmJobPreferredCertificateEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "certificateType": StringAttribute, //
        "certificateTypeId": UUIDAttribute, //
        "importance": StringAttribute, //
        "job": StringAttribute, //
        "jobId": UUIDAttribute, //
        "relationship_JobRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_jobs.preferredcertificates");
  }
}
mixin(EntityCalls!("HcmJobPreferredCertificateEntity"));

version(test_model_hcm) { unittest {
    assert(HcmJobPreferredCertificateEntity);
  
    auto entity = HcmJobPreferredCertificateEntity;
  }
}