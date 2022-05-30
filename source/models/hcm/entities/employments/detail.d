module models.hcm.entities.employments.detail;

@safe:
import models.hcm;

class DHcmEmploymentDetailEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "adjustedWorkerStartDate": StringAttribute, //
        "employerNoticeAmount": StringAttribute, //
        "employerUnitOfNotice": StringAttribute, //
        "lastDateWorked": StringAttribute, //
        "transitionDate": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "workerNoticeAmount": StringAttribute, //
        "workerStartDate": StringAttribute, //
        "workerUnitOfNotice": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "legalEntityId": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "reasonCodeId": StringAttribute, //
        "employmentType": StringAttribute, //
        "relationship_EmploymentRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_employment.details");
  }
}
mixin(EntityCalls!("HcmEmploymentDetailEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmEmploymentDetailEntity);
  
    auto entity = HcmEmploymentDetailEntity;
  }
}