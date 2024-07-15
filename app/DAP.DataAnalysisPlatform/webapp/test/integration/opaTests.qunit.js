sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'DAP/DataAnalysisPlatform/test/integration/FirstJourney',
		'DAP/DataAnalysisPlatform/test/integration/pages/CustomerInfoList',
		'DAP/DataAnalysisPlatform/test/integration/pages/CustomerInfoObjectPage'
    ],
    function(JourneyRunner, opaJourney, CustomerInfoList, CustomerInfoObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('DAP/DataAnalysisPlatform') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheCustomerInfoList: CustomerInfoList,
					onTheCustomerInfoObjectPage: CustomerInfoObjectPage
                }
            },
            opaJourney.run
        );
    }
);