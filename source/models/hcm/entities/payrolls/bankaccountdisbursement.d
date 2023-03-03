/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.payrolls.bankaccountdisbursement;

@safe:
import models.hcm;

class DPayrollBankAccountDisbursementEntity : DEntity {
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

version(test_model_hcm) { unittest {
    assert(PayrollBankAccountDisbursementEntity);
  
    auto entity = PayrollBankAccountDisbursementEntity;
  }
}