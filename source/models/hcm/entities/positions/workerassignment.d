module models.hcm.entities.positions.workerassignment;

@safe:
import models.hcm;

class DHcmPositionWorkerAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionWorkerAssignmentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "position": StringAttribute, //
        "positionId": StringAttribute, //
        "personnelNumber": StringAttribute, //
        "reasonCode": StringAttribute, //
        "reasonCodeId": StringAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "worker": StringAttribute, //
        "isPrimaryPosition": StringAttribute, //
        "relationship_PositionRelationshipId": StringAttribute, //
        "relationship_WorkerRelationshipId": StringAttribute, //
      ])
      .registerPath("hcm_employment.workerassignments");
  }
}
mixin(EntityCalls!("HcmPositionWorkerAssignmentEntity"));

version(test_model_hcm) {
  unittest {
    assert(HcmPositionWorkerAssignmentEntity);
  
    auto entity = HcmPositionWorkerAssignmentEntity;
  }
}