module models.hcm.entities.workers.bankaccount;

@safe:
import models.hcm;

class DHcmWorkerBankAccountEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerBankAccountEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "accountIdentification": StringAttribute, //
        "bankAccountNumber": StringAttribute, //
        "bankAccountType": StringAttribute, //
        "routingNumberType": StringAttribute, //
        "mobilePhone": StringAttribute, //
        "nameOfPerson": StringAttribute, //
        "email": StringAttribute, //
        "location": StringAttribute, //
        "name": StringAttribute, //
        "telephone": StringAttribute, //
        "extension": StringAttribute, //
        "routingNumber": StringAttribute, //
        "fax": StringAttribute, //
        "telexNumber": StringAttribute, //
        "internetAddress": StringAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "addressLocationId": UUIDAttribute, //
        "addressDescription": StringAttribute, //
        "addressCountryRegionId": UUIDAttribute, //
        "addressCountryRegionISOCode": StringAttribute, //
        "addressZipCode": StringAttribute, //
        "addressStreet": StringAttribute, //
        "addressStreetNumber": StringAttribute, //
        "addressBuildingCompliment": StringAttribute, //
        "addressPostBox": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressState": StringAttribute, //
        "addressCounty": StringAttribute, //
        "addressValidFrom": StringAttribute, //
        "addressValidTo": StringAttribute, //
        "bankIBAN": StringAttribute, //
        "swiftNo": StringAttribute, //
        "branchNumber": StringAttribute, //
        "branchName": StringAttribute, //
        "accountHolder": StringAttribute, //
        "bankLocationCode": StringAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.bankaccounts");
  }
}
mixin(EntityCalls!("HcmWorkerBankAccountEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerBankAccountEntity);
  
    auto entity = HcmWorkerBankAccountEntity;
  }
}