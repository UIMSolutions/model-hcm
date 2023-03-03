/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.bi.currentworker;

@safe:
import models.hcm;

class DHcmBICurrentWorkerEntity : DEntity {
  mixin(EntityThis!("HcmBICurrentWorkerEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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

version(test_model_hcm) { unittest {
    assert(HcmBICurrentWorkerEntity);
  
    auto entity = HcmBICurrentWorkerEntity;
  }
}