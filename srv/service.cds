using { Status_Report as my } from '../db/schema.cds';

@path : '/service/Status_ReportService'
service Status_ReportService
{
    @odata.draft.enabled
    entity Teams as
        projection on my.Teams;

    @odata.draft.enabled
    entity firmContribution as
        projection on my.firmContribution;

    @odata.draft.enabled
    entity skills as
        projection on my.skills;
}

annotate Status_ReportService with @requires :
[
    'authenticated-user'
];
