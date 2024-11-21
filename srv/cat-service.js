const cds = require('@sap/cds');

module.exports = cds.service.impl(async function () {
    const { GalacticSpacefarer } = this.entities;

    this.on('embarkAdventure', async (req) => {
        const { spacefarerID } = req.data;

        const spacefarer = await SELECT.one.from(GalacticSpacefarer).where({ ID: spacefarerID });
        if (!spacefarer) {
            req.error(404, `Spacefarer with ${spacefarerID} ID can't be found.`);
        }

        // Cosmic custom logic
        console.log(`Cosmic Event: ${spacefarer.name} has embarked on their adventure!`);
        return `Spacefarer ${spacefarer.name} from Planet: ${spacefarer.originPlanet} is ready to explore the galaxy!`;
    });
});
