module models.hcm.entities.kmanswersbyperson;

@safe:
import models.hcm;

class DKMAnswersByPersonEntity : DOOPEntity {
  mixin(EntityThis!("KMAnswersByPersonEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "partyNumber": StringAttribute, //
        "collectionId": UUIDAttribute, //
        "status": StringAttribute, //
        "questionId": UUIDAttribute, //
        "questionText": StringAttribute, //
        "answerText": StringAttribute, //
        "comment": StringAttribute, //
        "answerId": UUIDAttribute, //
        "relationship_PersonRelationshipId": UUIDAttribute, //
        "backingTable_DirPersonRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_kmanswersbypersons");
  }
}
mixin(EntityCalls!("KMAnswersByPersonEntity"));

version(test_model_hcm) {
  unittest {
    assert(KMAnswersByPersonEntity);
  
    auto entity = KMAnswersByPersonEntity;
  }
}