module models.hcm.entities.payrolls.paycycle;

@safe:
import models.hcm;

class DPayrollBankAccountDisbursementEntity : DOOPEntity {
  mixin(EntityThis!("PayrollBankAccountDisbursementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "description": StringAttribute, //
        "payCycleId": UUIDAttribute, //
        "payCycleFrequency": StringAttribute, //
      ])
      .registerPath("hcm_payrolls.paycycles");
  }
}
mixin(EntityCalls!("PayrollBankAccountDisbursementEntity"));

version(test_model_hcm) {
  unittest {
    assert(PayrollBankAccountDisbursementEntity);
  
    auto entity = PayrollBankAccountDisbursementEntity;
  }
}