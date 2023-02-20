module models.hcm.entities.positions.workerassignment;

@safe:
import models.hcm;

class DHcmPositionWorkerAssignmentEntity : DOOPEntity {
  mixin(EntityThis!("HcmPositionWorkerAssignmentEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "position": StringAttribute, //
        "positionId": UUIDAttribute, //
        "personnelNumber": StringAttribute, //
        "reasonCode": StringAttribute, //
        "reasonCodeId": UUIDAttribute, //
        "validFrom": StringAttribute, //
        "validTo": StringAttribute, //
        "worker": StringAttribute, //
        "isPrimaryPosition": StringAttribute, //
        "relationship_PositionRelationshipId": UUIDAttribute, //
        "relationship_WorkerRelationshipId": UUIDAttribute, //
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