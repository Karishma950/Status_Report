using { Status_Report_Admin as my } from '../db/schema.cds';

@path : '/service/Status_Report_Developer'
service Status_Report_Developer
{
    @odata.draft.enabled
    entity useCaseDetails as
        projection on my.useCaseDetails;
}

annotate Status_Report_Developer with @requires :
[
    'authenticated-user'
];
