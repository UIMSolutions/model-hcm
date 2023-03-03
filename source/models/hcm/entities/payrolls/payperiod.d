module models.hcm.entities.payrolls.payperiod;

@safe:
import models.hcm;

class DPayrollPayPeriodEntity : DOOPEntity {
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