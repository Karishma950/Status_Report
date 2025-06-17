using { Status_Report_Admin as my } from '../db/schema.cds';

@path : '/service/Status_Report_AdminService'
service Status_Report_AdminService
{
    @odata.draft.enabled
    entity Teams as
        projection on my.Teams;

    @odata.draft.enabled
    entity firmContribution as
        projection on my.firmContribution;


}

annotate Status_Report_AdminService with @requires :
[
    'authenticated-user'
];
