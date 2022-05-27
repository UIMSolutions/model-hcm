module models.hcm.entities.workers.projectrole;

@safe:
import models.hcm;

class DHcmWorkerProjectRoleEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerProjectRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "dataArea": StringAttribute, //
        "endDate": StringAttribute, //
        "projectId": StringAttribute, //
        "projectName": StringAttribute, //
        "role": StringAttribute, //
        "startDate": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "backingTable_HcmPersonProjectRoleEntityRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_workers.projectroles");
  }
}
mixin(EntityCalls!("HcmWorkerProjectRoleEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerProjectRoleEntity);
  
    auto entity = HcmWorkerProjectRoleEntity;
  }
}