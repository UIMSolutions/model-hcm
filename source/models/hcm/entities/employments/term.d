/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.employments.term;

@safe:
import models.hcm;

class DHcmEmploymentTermEntity : DEntity {
  mixin(EntityThis!("HcmEmploymentTermEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "agreementTermId": UUIDAttribute, //
        "legalEntityId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "employment": StringAttribute, //
        "relationship_EmploymentRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_employment.terms");
  }
}
mixin(EntityCalls!("HcmEmploymentTermEntity"));

version(test_model_hcm) { unittest {
    assert(HcmEmploymentTermEntity);
  
    auto entity = HcmEmploymentTermEntity;
  }
}