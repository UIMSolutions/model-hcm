module models.hcm.entities.payrolls.paycycle;

@safe:
import models.hcm;

class DPayrollBankAccountDisbursementEntity : DOOPEntity {
  mixin(EntityThis!("PayrollBankAccountDisbursementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute, //
        "payCycleId": StringAttribute, //
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