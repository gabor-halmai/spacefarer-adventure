namespace spacefarer.adventure;

entity GalacticSpacefarer {
    key ID : UUID;
    name : String(100);
    originPlanet : String(80);
    spacesuitColor : String(25);
    stardustCollection : Decimal(12,2);
    wormholeNavigationSkill : Integer;
    department : Association to IntergalacticDepartment;
    position : Association to IntergalacticPosition;
}

entity IntergalacticDepartment { 
    key ID : UUID;
    name : String(50);
    description : String(255);
}

entity IntergalacticPosition {
    key ID : UUID;
    title : String(80);
    level : String(40);
}
