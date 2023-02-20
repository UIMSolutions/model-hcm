module models.hcm.entities.applicantprojectrole;

@safe:
import models.hcm;

class DHcmApplicantProjectRoleEntity : DOOPEntity {
  mixin(EntityThis!("HcmApplicantProjectRoleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "applicantId": UUIDAttribute, //
        "dataArea": StringAttribute, //
        "endDate": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectName": StringAttribute, //
        "role": StringAttribute, //
        "startDate": StringAttribute, //
        "backingTable_HcmPersonProjectRoleEntityRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_applicantprojectroles");
  }
}
mixin(EntityCalls!("HcmApplicantProjectRoleEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmApplicantProjectRoleEntity);
  
    auto entity = HcmApplicantProjectRoleEntity;
  }
}