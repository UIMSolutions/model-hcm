module models.hcm.entities.workers.projectrole;

@safe:
import models.hcm;

class DHcmWorkerProjectRoleEntity : DEntity {
  mixin(EntityThis!("HcmWorkerProjectRoleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "dataArea": StringAttribute, //
        "endDate": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectName": StringAttribute, //
        "role": StringAttribute, //
        "startDate": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "backingTable_HcmPersonProjectRoleEntityRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.projectroles");
  }
}
mixin(EntityCalls!("HcmWorkerProjectRoleEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerProjectRoleEntity);
  
    auto entity = HcmWorkerProjectRoleEntity;
  }
}