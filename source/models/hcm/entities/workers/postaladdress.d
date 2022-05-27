module models.hcm.entities.workers.postaladdress;

@safe:
import models.hcm;

class DHcmWorkerPostalAddressEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerPostalAddressEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "personnelNumber": StringAttribute, //
        "formattedAddress": StringAttribute, //
        "attentionToAddressLine": StringAttribute, //
        "buildingCompliment": StringAttribute, //
        "addressApartment": StringAttribute, //
        "addressBuilding": StringAttribute, //
        "addressCity": StringAttribute, //
        "addressCityInKana": StringAttribute, //
        "addressCountryRegionId": StringAttribute, //
        "addressCountryRegionISOCode": StringAttribute, //
        "addressCountyId": StringAttribute, //
        "addressDescription": StringAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressLatitude": StringAttribute, //
        "addressLocationId": StringAttribute, //
        "addressLongitude": StringAttribute, //
        "addressPostBox": StringAttribute, //
        "addressState": StringAttribute, //
        "addressStreet": StringAttribute, //
        "addressStreetInKana": StringAttribute, //
        "addressStreetNumber": StringAttribute, //
        "addressTimeZone": StringAttribute, //
        "addressZipCode": StringAttribute, //
        "addressLocationRoles": StringAttribute, //
        "dunsNumber": StringAttribute, //
        "isLocationOwner": StringAttribute, //
        "isPostalAddress": StringAttribute, //
        "isPrimary": StringAttribute, //
        "isPrimaryTaxRegistration": StringAttribute, //
        "isPrivate": StringAttribute, //
        "isPrivatePostalAddress": StringAttribute, //
        "isRoleBusiness": StringAttribute, //
        "isRoleDelivery": StringAttribute, //
        "isRoleHome": StringAttribute, //
        "isRoleInvoice": StringAttribute, //
        "effective": StringAttribute, //
        "expiration": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, //
        "backingTable_DirPartyLocationPostalAddressV2EntityRelationshipId": StringAttribute, ///HcmWorkerPostalAddressV2Entity
      ])
      .registerPath("hcm_workers.postaladdresses");
  }
}
mixin(EntityCalls!("HcmWorkerPostalAddressEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerPostalAddressEntity);
  
    auto entity = HcmWorkerPostalAddressEntity;
  }
}