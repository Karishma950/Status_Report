using { Status_Report_Admin as my } from '../db/schema.cds';

@path : '/service/Status_Report_Developer'
service Status_Report_Developer
{
    @odata.draft.enabled
    entity useCaseDetails as
        projection on my.useCaseDetails;

    @odata.draft.enabled
    entity firmContribution as
        projection on my.firmContribution;
}

annotate Status_Report_Developer with @requires :
[
    'authenticated-user'
];
