//https://cap.cloud.sap/docs/cds/cdl
namespace galactic.adventurer;

using { cuid } from '@sap/cds/common';

entity SpaceAdventurers : cuid {
  adventurerName           : String(100);
  stardustCollection       : Integer;
  wormholeNavigationSkill  : Integer;
  originPlanet             : Association to Planets;
  spacesuitColor           : RGB;
  department               : Association to Departments;
  position                 : Association to Positions;
}

type RGB {
  r : UInt8;
  g : UInt8;
  b : UInt8;
}

entity Planets : cuid {
  name        : String(50);
  star        : String(50);
}

entity Departments : cuid {
  faction     : String(100);
  name        : String(100);
  adventurers : Association to many SpaceAdventurers on adventurers.department = $self;
}

entity Positions : cuid {
  title       : String(100);
  level       : Integer;
}