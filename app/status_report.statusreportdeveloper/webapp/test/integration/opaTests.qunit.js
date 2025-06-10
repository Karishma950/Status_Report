sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'statusreport/statusreportdeveloper/test/integration/FirstJourney',
		'statusreport/statusreportdeveloper/test/integration/pages/useCaseDetailsList',
		'statusreport/statusreportdeveloper/test/integration/pages/useCaseDetailsObjectPage',
		'statusreport/statusreportdeveloper/test/integration/pages/weeklyStatusObjectPage'
    ],
    function(JourneyRunner, opaJourney, useCaseDetailsList, useCaseDetailsObjectPage, weeklyStatusObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('statusreport/statusreportdeveloper') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheuseCaseDetailsList: useCaseDetailsList,
					onTheuseCaseDetailsObjectPage: useCaseDetailsObjectPage,
					onTheweeklyStatusObjectPage: weeklyStatusObjectPage
                }
            },
            opaJourney.run
        );
    }
);