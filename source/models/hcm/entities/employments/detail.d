/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.employments.detail;

@safe:
import models.hcm;

class DHcmEmploymentDetailEntity : DEntity {
  mixin(EntityThis!("HcmEmploymentDetailEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "legalEntityId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "reasonCodeId": UUIDAttribute, //
        "employmentType": StringAttribute, //
        "relationship_EmploymentRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_employment.details");
  }
}
mixin(EntityCalls!("HcmEmploymentDetailEntity"));

version(test_model_hcm) { unittest {
    assert(HcmEmploymentDetailEntity);
  
    auto entity = HcmEmploymentDetailEntity;
  }
}