/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.payrolls.paycycle;

@safe:
import models.hcm;

class DPayrollBankAccountDisbursementEntity : DEntity {
  mixin(EntityThis!("PayrollBankAccountDisbursementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        
        "payCycleId": UUIDAttribute, //
        "payCycleFrequency": StringAttribute, //
      ])
      .registerPath("hcm_payrolls.paycycles");
  }
}
mixin(EntityCalls!("PayrollBankAccountDisbursementEntity"));

version(test_model_hcm) { unittest {
    assert(PayrollBankAccountDisbursementEntity);
  
    auto entity = PayrollBankAccountDisbursementEntity;
  }
}