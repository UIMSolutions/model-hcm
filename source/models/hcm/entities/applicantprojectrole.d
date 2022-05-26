module models.hcm.entities.applicantprojectrole;

@safe:
import models.hcm;

class DHcmApplicantProjectRoleEntity : DOOPEntity {
  mixin(EntityThis!("HcmApplicantProjectRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "applicantId": StringAttribute, //
        "dataArea": StringAttribute, //
        "endDate": StringAttribute, //
        "projectId": StringAttribute, //
        "projectName": StringAttribute, //
        "role": StringAttribute, //
        "startDate": StringAttribute, //
        "backingTable_HcmPersonProjectRoleEntityRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
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