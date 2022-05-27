module models.hcm.entities.payrolls.payperiod;

@safe:
import models.hcm;

class DPayrollPayPeriodEntity : DOOPEntity {
  mixin(EntityThis!("PayrollPayPeriodEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "defaultPaymentDate": StringAttribute, //
        "comments": StringAttribute, //
        "payCycle": StringAttribute, //
        "periodEndDate": StringAttribute, //
        "periodStartDate": StringAttribute, //
        "status": StringAttribute, //
        "payCycleId": StringAttribute, //
        "relationship_PayCycleRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_payrolls.payperiods");
  }
}
mixin(EntityCalls!("PayrollPayPeriodEntity"));

version(test_model_hcm) {
  unittest {
    assert(PayrollPayPeriodEntity);
  
    auto entity = PayrollPayPeriodEntity;
  }
}