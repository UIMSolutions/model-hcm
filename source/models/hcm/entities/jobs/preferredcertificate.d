module models.hcm.entities.jobs.preferredcertificate;

@safe:
import models.hcm;

class DHcmJobPreferredCertificateEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobPreferredCertificateEntity"));

  override void initialize() {
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

version(test_model_hcm) {
  unittest {
    assert(HcmJobPreferredCertificateEntity);
  
    auto entity = HcmJobPreferredCertificateEntity;
  }
}