/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.applicantprojectrole;

@safe:
import models.hcm;

class DHcmApplicantProjectRoleEntity : DEntity {
  mixin(EntityThis!("HcmApplicantProjectRoleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "applicantId": UUIDAttribute, //
        "dataArea": StringAttribute, //
        "endDate": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectName": StringAttribute, //
        "role": StringAttribute, //
        "startDate": StringAttribute, //
        "backingTable_HcmPersonProjectRoleEntityRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("hcm_applicantprojectroles");
  }
}
mixin(EntityCalls!("HcmApplicantProjectRoleEntity"));

unittest {
  auto entity = new DHcmApplicantProjectRoleEntity;
  assert(entity.name == "HcmApplicantProjectRoleEntity");
}