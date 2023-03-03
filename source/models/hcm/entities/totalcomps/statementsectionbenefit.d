/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.totalcomps.statementsectionbenefit;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionBenefitEntity : DEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionBenefitEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "benefit": StringAttribute, //
        "statementSection": StringAttribute, //
        "benefitId": UUIDAttribute, //
        "statementSectionId": UUIDAttribute, //
        "relationship_HcmTotalCompStatementSectionHeaderEntityRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_totalcomps.statementsectionbenefits");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionBenefitEntity"));

version(test_model_hcm) { unittest {
    assert(HcmTotalCompStatementSectionBenefitEntity);
  
    auto entity = HcmTotalCompStatementSectionBenefitEntity;
  }
}