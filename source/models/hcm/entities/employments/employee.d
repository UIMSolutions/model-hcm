/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.employments.employee;

@safe:
import models.hcm;

class DHcmEmploymentEmployeeEntity : DEntity {
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

version(test_model_hcm) { unittest {
    assert(HcmEmploymentEmployeeEntity);
  
    auto entity = HcmEmploymentEmployeeEntity;
  }
}