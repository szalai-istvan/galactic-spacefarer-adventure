using CosmicService as service from '../../srv/cosmic-service';

annotate service.GalacticSpacefarers with {
  homePlanetName @readonly @Core.Computed;
};

annotate service.GalacticSpacefarers with @(
    UI.HeaderInfo                   : {
        TypeName      : 'Galactic Spacefarer',
        TypeNamePlural: 'Galactic Spacefarers',
        Title         : {Value: adventurerName},
        Description   : {Value: homePlanetName}
    },
    UI.HeaderFacets                 : [{
        $Type : 'UI.ReferenceFacet',
        Label : 'Stardust Status',
        Target: '@UI.DataPoint#StardustHeader'
    }],
    UI.DataPoint #StardustHeader    : {
        Value: stardustCollection,
        Title: 'Stardust Collection'
    },
    UI.FieldGroup #GeneratedGroup   : {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Label: 'Adventurer name',
                Value: adventurerName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Stardust collection',
                Value: stardustCollection,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Wormhole navigatoin skills',
                Value: wormholeNavigationSkill,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Spacesuit color',
                Value: spacesuitColor,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Homeplanet name',
                Value: homePlanetName,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Department info',
                Value: departmentInfo,
            },
            {
                $Type: 'UI.DataField',
                Label: 'Position info',
                Value: positionInfo,
            },
        ],
    },
    UI.FieldGroup #AssignmentDetails: {Data: [
        {
            $Type: 'UI.DataField',
            Value: homePlanetName,
            Label: 'Home Planet'
        },
        {
            $Type: 'UI.DataField',
            Value: departmentInfo,
            Label: 'Department'
        },
        {
            $Type: 'UI.DataField',
            Value: positionInfo,
            Label: 'Position'
        }
    ]},
    UI.Facets                       : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'GeneratedFacet1',
            Label : 'General Information',
            Target: '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Department & Rank',
            Target: '@UI.FieldGroup#AssignmentDetails'
        }
    ],
    UI.LineItem                     : [
        {
            $Type: 'UI.DataField',
            Label: 'Adventurer name',
            Value: adventurerName,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Stardust collection',
            Value: stardustCollection,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Wormhole navigatoin skills',
            Value: wormholeNavigationSkill,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Spacesuit color',
            Value: spacesuitColor,
        },
        {
            $Type: 'UI.DataField',
            Label: 'Homeplanet name',
            Value: homePlanetName,
        },
    ],
);
