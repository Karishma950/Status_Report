sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'statusreport/statusreport/test/integration/FirstJourney',
		'statusreport/statusreport/test/integration/pages/TeamsList',
		'statusreport/statusreport/test/integration/pages/TeamsObjectPage',
		'statusreport/statusreport/test/integration/pages/useCaseDetailsObjectPage'
    ],
    function(JourneyRunner, opaJourney, TeamsList, TeamsObjectPage, useCaseDetailsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('statusreport/statusreport') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheTeamsList: TeamsList,
					onTheTeamsObjectPage: TeamsObjectPage,
					onTheuseCaseDetailsObjectPage: useCaseDetailsObjectPage
                }
            },
            opaJourney.run
        );
    }
);