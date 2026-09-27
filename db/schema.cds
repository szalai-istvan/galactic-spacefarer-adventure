//https://cap.cloud.sap/docs/cds/cdl
namespace galactic.adventurer;

using { cuid } from '@sap/cds/common';

entity GalacticSpacefarers : cuid {
  adventurerName           : String(100);
  stardustCollection       : Integer;
  wormholeNavigationSkill  : Integer;
  originPlanet             : Association to Planets;
  spacesuitColor           : String(30);
  department               : Association to Departments;
  position                 : Association to Positions;
}

entity Planets : cuid {
  name        : String(50);
  star        : String(50);
}

entity Departments : cuid {
  faction     : String(100);
  name        : String(100);
  adventurers : Association to many GalacticSpacefarers on adventurers.department = $self;
}

entity Positions : cuid {
  title       : String(100);
  level       : Integer;
}