module models.hcm.entities.employments.term;

@safe:
import models.hcm;

class DHcmEmploymentTermEntity : DOOPEntity {
  mixin(EntityThis!("HcmEmploymentTermEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "agreementTermId": StringAttribute, //
        "legalEntityId": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "employmentStartDate": StringAttribute, //
        "employmentEndDate": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "employment": StringAttribute, //
        "relationship_EmploymentRelationshipId": StringAttribute, //
    ])
    .registerPath("hcm_employment.terms");
  }
}
mixin(EntityCalls!("HcmEmploymentTermEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmEmploymentTermEntity);
  
    auto entity = HcmEmploymentTermEntity;
  }
}