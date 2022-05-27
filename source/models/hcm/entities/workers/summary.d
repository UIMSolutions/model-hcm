module models.hcm.entities.workers.group;

@safe:
import models.hcm;

class DHcmWorkerSummaryEntity : DOOPEntity {
  mixin(EntityThis!("HcmWorkerSummaryEntity"));

  override void initialize() {
    super.initialize;

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
        "titleId": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "buildingAddressId": StringAttribute, //
        "worksFromHome": StringAttribute, //
        "relationship_TitleRelationshipId": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_workers.summary");
  }
}
mixin(EntityCalls!("HcmWorkerSummaryEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmWorkerSummaryEntity);
  
    auto entity = HcmWorkerSummaryEntity;
  }
}