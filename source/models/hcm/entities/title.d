/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm.entities.title;

@safe:
import models.hcm;

class DHcmTitleEntity : DEntity {
  mixin(EntityThis!("HcmTitleEntity"));

  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "TitleId": UUIDAttribute, // 
      ])
      .registerPath("hcm_titles");
  }
}
mixin(EntityCalls!("HcmTitleEntity"));

///
unittest {
  auto entity = new DHcmTitleEntity;
  assert(entity.name == "HcmTitleEntity");  
}