sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"spacefarerslistui/test/integration/pages/GalacticSpacefarersList.gen",
	"spacefarerslistui/test/integration/pages/GalacticSpacefarersObjectPage.gen"
], function (JourneyRunner, GalacticSpacefarersListGenerated, GalacticSpacefarersObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('spacefarerslistui') + '/test/flp.html#app-preview',
        pages: {
			onTheGalacticSpacefarersListGenerated: GalacticSpacefarersListGenerated,
			onTheGalacticSpacefarersObjectPageGenerated: GalacticSpacefarersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

