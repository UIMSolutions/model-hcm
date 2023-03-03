/*********************************************************************************************************
	Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
	Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module models.hcm;

// DLang libraries (Phobos)
public import std.stdio;
public import std.string;
public import std.uuid;

// External libraries
public import vibe.d;

// UIM libraries
public import uim.core;
public import uim.oop;

public { // model-hcm packages
	import models.hcm.attributes;
	import models.hcm.entities;
}