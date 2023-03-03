/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.employments.contractor;

@safe:
import models.hcm;

class DHcmEmploymentContractorEntity : DEntity {
  mixin(EntityThis!("HcmEmploymentContractorEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "employment": StringAttribute, //
        "purchaseOrderNumber": StringAttribute, //
        "purchReqTable": StringAttribute, //
        "startDate": StringAttribute, //
        "endDate": StringAttribute, //
        "vendorLegalEntityId": UUIDAttribute, //
        "vendorAccountNumber": StringAttribute, //
        "vendorDataAreaID": StringAttribute, //
        "vendorID": StringAttribute, //
        "vendorDataArea": StringAttribute, //
        "employmentLegalEntity": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "worker": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "purchaseRequisitionId": UUIDAttribute, //
        "employmentLegalEntityId": UUIDAttribute, //
        "relationship_HcmEmploymentRelationshipId": UUIDAttribute, //
        "relationship_PurchPurchaseOrderHeaderV2EntityRelationshipId": UUIDAttribute, //
        "relationship_VendVendorV2EntityRelationshipId": UUIDAttribute, //
        "backingTable_HcmEmploymentContractorRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_employment.contractors");
  }
}
mixin(EntityCalls!("HcmEmploymentContractorEntity"));

version(test_model_hcm) { unittest {
    assert(HcmEmploymentContractorEntity);
  
    auto entity = HcmEmploymentContractorEntity;
  }
}