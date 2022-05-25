module models.hcm.bi.currentworker;

@safe:
import models.hcm;

class DHcmBICurrentWorkerEntity : DOOPEntity {
  mixin(EntityThis!("HcmBICurrentWorkerEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "company": StringAttribute, //
        "compensation": StringAttribute, //
        "benefit": StringAttribute, //
        "performance": StringAttribute, //
        "personSkill": StringAttribute, //
        "demographics": StringAttribute, //
        "employment": StringAttribute, //
        "geographicLocation": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "job": StringAttribute, //
        "position": StringAttribute, //
        "reportsTo": StringAttribute, //
        "title": StringAttribute, //
        "age": StringAttribute, //
        "yearsOfService": StringAttribute, //
        "positionAssignmentStartDate": StringAttribute, //
        "positionAssignmentEndDate": StringAttribute, //
        "employmentValidFrom": StringAttribute, //
        "employmentValidTo": StringAttribute, //
        "employmentDetailValidTo": StringAttribute, //
        "employmentDetailValidFrom": StringAttribute, //
        "fixedCompensationValidTo": StringAttribute, //
        "fixedCompensationValidFrom": StringAttribute, //
        "positionDetailValidFrom": StringAttribute, //
        "positionDetailValidTo": StringAttribute, //
        "jobDetailValidFrom": StringAttribute, //
        "jobDetailValidTo": StringAttribute, //
        "positionHierarchyValidTo": StringAttribute, //
        "positionHierarchyValidFrom": StringAttribute, //
        "reportsToWorkerPositionAssignmentValidFrom": StringAttribute, //
        "reportsToWorkerPositionAssignmentValidTo": StringAttribute, //
        "postalAddressValidFrom": StringAttribute, //
        "postalAddressValidTo": StringAttribute, //
        "personDetailsValidFrom": StringAttribute, //
        "personDetailsValidTo": StringAttribute, //
        "workerTitleValidFrom": StringAttribute, //
        "workerTitleValidTo": StringAttribute, //
        "workerEnrolledBenefitValidFrom": StringAttribute, //
        "workerEnrolledBenefitValidTo": StringAttribute, //
        "personDetailsValidToPrivate": StringAttribute, //
        "personDetailsValidFromPrivate": StringAttribute, //
        "positionDetailValidFromPrivate": StringAttribute, //
        "positionDetailValidToPrivate": StringAttribute, //
        "jobDetailValidFromPrivate": StringAttribute, //
        "jobDetailValidToPrivate": StringAttribute, //
        "employmentDetailValidToPrivate": StringAttribute, //
        "employmentDetailValidFromPrivate": StringAttribute, //
    ])
    .registerPath("hcm_bi.currentworkers");
  }
}
mixin(EntityCalls!("HcmBICurrentWorkerEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmBICurrentWorkerEntity);
  
  auto entity = HcmBICurrentWorkerEntity;
  }
}