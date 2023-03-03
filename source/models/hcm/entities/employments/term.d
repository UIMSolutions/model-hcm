module models.hcm.entities.employments.term;

@safe:
import models.hcm;

class DHcmEmploymentTermEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentTermEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "agreementTermId": UUIDAttribute, //
        "legalEntityId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "employment": StringAttribute, //
        "relationship_EmploymentRelationshipId": UUIDAttribute, //
    ])
    .registerPath("hcm_employment.terms");
  }
}
mixin(EntityCalls!("HcmEmploymentTermEntity"));

version(test_model_hcm) { unittest {
    assert(HcmEmploymentTermEntity);
  
    auto entity = HcmEmploymentTermEntity;
  }
}