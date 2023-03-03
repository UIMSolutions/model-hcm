module models.hcm.entities.workers.summary;

@safe:
import models.hcm;

class DHcmWorkerSummaryEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerSummaryEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "buildingAddress": StringAttribute, //
        "officeLocation": StringAttribute, //
        "originalHireDateTime": StringAttribute, //
        "seniorityDate": StringAttribute, //
        "anniversaryDateTime": StringAttribute, //
        "title": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "titleId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "buildingAddressId": UUIDAttribute, //
        "worksFromHome": StringAttribute, //
        "relationship_TitleRelationshipId": UUIDAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_workers.summary");
  }
}
mixin(EntityCalls!("HcmWorkerSummaryEntity"));

version(test_model_hcm) { unittest {
    assert(HcmWorkerSummaryEntity);
  
    auto entity = HcmWorkerSummaryEntity;
  }
}