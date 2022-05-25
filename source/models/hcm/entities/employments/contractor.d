module models.hcm.employments.contractor;

@safe:
import models.hcm;

class DHcmEmploymentContractorEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentContractorEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "employment": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "purchReqTable": StringAttribute, //
        "startDate": StringAttribute, //
        "endDate": StringAttribute, //
        "vendorLegalEntityId": StringAttribute, //
        "vendorAccountNumber": StringAttribute, //
        "vendorDataAreaID": StringAttribute, //
        "vendorID": StringAttribute, //
        "vendorDataArea": StringAttribute, //
        "employmentLegalEntity": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "purchaseRequisitionId": StringAttribute, //
        "employmentLegalEntityId": StringAttribute, //
        "relationship_HcmEmploymentRelationshipId": StringAttribute, //
        "relationship_PurchPurchaseOrderHeaderV2EntityRelationshipId": StringAttribute, //
        "relationship_VendVendorV2EntityRelationshipId": StringAttribute, //
        "backingTable_HcmEmploymentContractorRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_employment.contractors");
  }
}
mixin(EntityCalls!("HcmEmploymentContractorEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmEmploymentContractorEntity);
  
    auto entity = HcmEmploymentContractorEntity;
  }
}