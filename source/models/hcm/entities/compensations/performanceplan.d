/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.compensations.performanceplan;

@safe:
import models.hcm;

class DHcmCompensationPerformancePlanEntity : DEntity {
  mixin(EntityThis!("HcmCompensationPerformancePlanEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "Description": StringAttribute, //
        "Plan": StringAttribute, //
        "Effective": StringAttribute, //
        "Expiration": StringAttribute, //
        "BackingTable_HRMCompPerfPlanRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_compensations.performanceplans");
  }
}
mixin(EntityCalls!("HcmCompensationPerformancePlanEntity"));

version(test_model_hcm) { unittest {
    assert(HcmCompensationPerformancePlanEntity);
  
    auto entity = HcmCompensationPerformancePlanEntity;
  }
}