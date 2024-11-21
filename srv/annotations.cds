using { spacefarer.adventure as my } from '../db/schema';

annotate my.GalacticSpacefarer with @UI: {
    LineItem: [
        {Value: name, Label: 'Name'},
        {Value: originPlanet, Label: 'Origin Planet'},
        {Value: spacesuitColor, Label: 'Spacesuit Color'},
        {Value: stardustCollection, Label: 'Stardust Collected'},
        {Value: wormholeNavigationSkill, Label: 'Wormhole Navigation Skill'}
    ],
    SelectionFields: [name, originPlanet],
    HeaderInfo: {
        TypeName: 'Galactic Spacefarer',
        TypeNamePlural: 'Galactic Spacefarers',
        Title: {Value: name}
    }
};