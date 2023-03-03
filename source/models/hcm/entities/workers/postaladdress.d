module models.hcm.entities.workers.postaladdress;

@safe:
import models.hcm;

class DHcmWorkerPostalAddressEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerPostalAddressEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

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
        "addressCountryRegionId": UUIDAttribute, //
        "addressCountryRegionISOCode": StringAttribute, //
        "addressCountyId": UUIDAttribute, //
        "addressDescription": StringAttribute, //
        "addressDistrictName": StringAttribute, //
        "addressLatitude": StringAttribute, //
        "addressLocationId": UUIDAttribute, //
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
        "relationship_WorkerRelationshipId": UUIDAttribute, //
        "backingTable_DirPartyLocationPostalAddressV2EntityRelationshipId": UUIDAttribute, ///HcmWorkerPostalAddressV2Entity
      ])
      .registerPath("hcm_workers.postaladdresses");
  }
}
mixin(EntityCalls!("HcmWorkerPostalAddressEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerPostalAddressEntity);
  
    auto entity = HcmWorkerPostalAddressEntity;
  }
}