/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.totalcomps.statementsectionheader;

@safe:
import models.hcm;

class DHcmTotalCompStatementSectionHeaderEntity : DEntity {
  mixin(EntityThis!("HcmTotalCompStatementSectionHeaderEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "StatementSectionId": UUIDAttribute, //
        "StatementSectionName": StringAttribute, //
      ])
      .registerPath("hcm_totalcomps.statementsectionheaders");
  }
}
mixin(EntityCalls!("HcmTotalCompStatementSectionHeaderEntity"));

version(test_model_hcm) { unittest {
    assert(HcmTotalCompStatementSectionHeaderEntity);
  
    auto entity = HcmTotalCompStatementSectionHeaderEntity;
  }
}