using Status_ReportService as service from '../../srv/service';
annotate service.Teams with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'teamName',
                Value : teamName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'poName',
                Value : poName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'smName',
                Value : smName,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Devlopers Details',
            ID : 'DevlopersDetails',
            Target : 'developerDetails/@UI.LineItem#DevlopersDetails',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'teamName',
            Value : teamName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'poName',
            Value : poName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'smName',
            Value : smName,
        },
    ],
);

annotate service.developerDetails with @(
    UI.LineItem #DevlopersDetails : [
        {
            $Type : 'UI.DataField',
            Value : team.teamName,
            Label : 'teamName',
        },
        {
            $Type : 'UI.DataField',
            Value : firstName,
            Label : 'firstName',
        },
        {
            $Type : 'UI.DataField',
            Value : lastName,
            Label : 'lastName',
        },
        {
            $Type : 'UI.DataField',
            Value : mailID,
            Label : 'mailID',
        },
        {
            $Type : 'UI.DataField',
            Value : firmContributions.skillname,
            Label : 'skillname',
        },
        {
            $Type : 'UI.DataField',
            Value : firmContributions.proficiencylevel,
            Label : 'proficiencylevel',
        },
        {
            $Type : 'UI.DataField',
            Value : firmContributions.noOfHours,
            Label : 'noOfHours',
        },
        {
            $Type : 'UI.DataField',
            Value : firmContributions.description,
            Label : 'description',
        },
        {
            $Type : 'UI.DataField',
            Value : firmContributions.activityName,
            Label : 'activityName',
        },
    ]
);

