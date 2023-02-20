module models.hcm.entities.payrolls.bankaccountdisbursement;

@safe:
import models.hcm;

class DPayrollBankAccountDisbursementEntity : DOOPEntity {
  mixin(EntityThis!("PayrollBankAccountDisbursementEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "amount": StringAttribute, //
        "remainder": StringAttribute, //
        "legalEntity": StringAttribute, //
        "lineNumber": StringAttribute, //
        "accountIdentification": StringAttribute, //
        "company": StringAttribute, //
        "accountIdentificationId": UUIDAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "inPrenoteStatus": StringAttribute, //
        "relationship_WorkerBankAccountRelationshipId": UUIDAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, ///PayrollBankAccountDisbursementEntity
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