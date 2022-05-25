module models.hcm.employments.employee;

@safe:
import models.hcm;

class DHcmEmploymentEmployeeEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentEmployeeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "probationPeriod": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "legalEntityId": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, //
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