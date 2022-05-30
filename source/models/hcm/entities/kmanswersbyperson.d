module models.hcm.entities.kmanswersbyperson;

@safe:
import models.hcm;

class DKMAnswersByPersonEntity : DOOPEntity {
  mixin(EntityThis!("KMAnswersByPersonEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "partyNumber": StringAttribute, //
        "collectionId": StringAttribute, //
        "status": StringAttribute, //
        "questionId": StringAttribute, //
        "questionText": StringAttribute, //
        "answerText": StringAttribute, //
        "comment": StringAttribute, //
        "answerId": StringAttribute, //
        "relationship_PersonRelationshipId": StringAttribute, //
        "backingTable_DirPersonRelationshipId": StringAttribute, //
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