/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.payrolls.payperiod;

@safe:
import models.hcm;

class DPayrollPayPeriodEntity : DEntity {
  mixin(EntityThis!("PayrollPayPeriodEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "defaultPaymentDate": StringAttribute, //
        "comments": StringAttribute, //
        "payCycle": StringAttribute, //
        "periodEndDate": StringAttribute, //
        "periodStartDate": StringAttribute, //
        "status": StringAttribute, //
        "payCycleId": UUIDAttribute, //
        "relationship_PayCycleRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_payrolls.payperiods");
  }
}
mixin(EntityCalls!("PayrollPayPeriodEntity"));

version(test_model_hcm) { unittest {
    assert(PayrollPayPeriodEntity);
  
    auto entity = PayrollPayPeriodEntity;
  }
}