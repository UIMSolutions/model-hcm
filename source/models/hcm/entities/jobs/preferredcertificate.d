module models.hcm.entities.jobs.preferredcertificate;

@safe:
import models.hcm;

class DHcmJobPreferredCertificateEntity : DOOPEntity {
  mixin(EntityThis!("HcmJobPreferredCertificateEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "certificateType": StringAttribute, //
        "certificateTypeId": StringAttribute, //
        "importance": StringAttribute, //
        "job": StringAttribute, //
        "jobId": StringAttribute, //
        "relationship_JobRelationshipId": StringAttribute, //
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