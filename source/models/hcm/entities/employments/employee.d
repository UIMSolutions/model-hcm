module models.hcm.entities.employments.employee;

@safe:
import models.hcm;

class DHcmEmploymentEmployeeEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentEmployeeEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "probationPeriod": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "legalEntityId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_employment.employees");
  }
}
mixin(EntityCalls!("HcmEmploymentEmployeeEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmEmploymentEmployeeEntity);
  
    auto entity = HcmEmploymentEmployeeEntity;
  }
}