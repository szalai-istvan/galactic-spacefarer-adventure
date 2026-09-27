using { galactic.adventurer as adventurer } from '../db/schema';

@path: '/cosmic'
service CosmicService @(requires: 'authenticated-user') {

  @restrict: [
    {
      grant: '*',
      to   : 'authenticated-user',
      where: 'originPlanet.name = $user.homePlanet'
    }
  ]
  @odata.draft.enabled
  entity GalacticSpacefarers as projection on adventurer.GalacticSpacefarers {
    *,
    originPlanet.name as homePlanetName,
    concat(department.name, ' at ', department.faction) as departmentInfo : String,
    concat('Level ', position.level, ' ', position.title) as positionInfo : String
  }
}