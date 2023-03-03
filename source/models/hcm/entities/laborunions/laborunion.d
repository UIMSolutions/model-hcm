/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.laborunions.laborunion;

@safe:
import models.hcm;

class DHcmLaborUnionAgreementEntity : DEntity {
  mixin(EntityThis!("HcmLaborUnionAgreementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "agreementName": StringAttribute, //
        "description": StringAttribute, //
        "laborUnion": StringAttribute, //
        "unionId": UUIDAttribute, //
        "legalEntity": StringAttribute, //
        "legalEntityId": UUIDAttribute, //
        "relationship_LaborUnionRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_applicantprojectroles");
  }
}
mixin(EntityCalls!("HcmLaborUnionAgreementEntity"));

version(test_model_hcm) { unittest {
    assert(HcmLaborUnionAgreementEntity);
  
    auto entity = HcmLaborUnionAgreementEntity;
  }
}