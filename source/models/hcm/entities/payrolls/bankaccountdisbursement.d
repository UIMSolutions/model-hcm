module models.hcm.entities.payrolls.bankaccountdisbursement;

@safe:
import models.hcm;

class DPayrollBankAccountDisbursementEntity : DOOPEntity {
  mixin(EntityThis!("PayrollBankAccountDisbursementEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "amount": StringAttribute, //
        "remainder": StringAttribute, //
        "legalEntity": StringAttribute, //
        "lineNumber": StringAttribute, //
        "accountIdentification": StringAttribute, //
        "company": StringAttribute, //
        "accountIdentificationId": StringAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "inPrenoteStatus": StringAttribute, //
        "relationship_WorkerBankAccountRelationshipId": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, ///PayrollBankAccountDisbursementEntity
      ])
      .registerPath("hcm_payrolls.bankaccountdisbursement");
  }
}
mixin(EntityCalls!("PayrollBankAccountDisbursementEntity"));

version(test_model_hcm) {
  unittest {
    assert(PayrollBankAccountDisbursementEntity);
  
    auto entity = PayrollBankAccountDisbursementEntity;
  }
}