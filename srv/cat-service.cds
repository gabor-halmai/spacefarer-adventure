using { spacefarer.adventure as my } from '../db/schema';

service SpacefarerService {
    entity GalacticSpacefarer as projection on  my.GalacticSpacefarer;
    entity IntergalacticDepartment as projection on my.IntergalacticDepartment;
    entity IntergalacticPosition as projection on my.IntergalacticPosition;

    action embarkAdventure(spacefarerID: UUID) returns String;
}
