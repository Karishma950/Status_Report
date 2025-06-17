using Status_Report_AdminService as service from '../../srv/service';
annotate service.Teams with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Team Name',
                Value : teamName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'PO',
                Value : poName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Scrum Master',
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
            Label : 'Team Members',
            ID : 'TeamMembers',
            Target : 'developerDetails/@UI.LineItem#TeamMembers',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Usecase Details',
            ID : 'UsecaseDetails',
            Target : 'useCaseDetails/@UI.LineItem#UsecaseDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Devloper details',
            ID : 'Devloperdetails',
            Target : '@UI.FieldGroup#Devloperdetails',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Team Name',
            Value : teamName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'PO',
            Value : poName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Scrum Master',
            Value : smName,
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : teamName,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.FieldGroup #Devloperdetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : developerDetails.firstName,
                Label : 'firstName',
            },
            {
                $Type : 'UI.DataField',
                Value : developerDetails.lastName,
                Label : 'lastName',
            },
            {
                $Type : 'UI.DataField',
                Value : developerDetails.skills.skillName,
                Label : 'skillName',
            },
            {
                $Type : 'UI.DataField',
                Value : teamName,
                Label : 'teamName',
            },
            {
                $Type : 'UI.DataField',
                Value : developerDetails.firmContributions.activityName,
                Label : 'activityName',
            },
            {
                $Type : 'UI.DataField',
                Value : developerDetails.firmContributions.description,
                Label : 'description',
            },
            {
                $Type : 'UI.DataField',
                Value : developerDetails.firmContributions.noOfHours,
                Label : 'noOfHours',
            },
        ],
    },
);

annotate service.developerDetails with @(
    UI.LineItem #TeamMembers : [
        {
            $Type : 'UI.DataField',
            Value : firstName,
            Label : 'First Name',
        },
        {
            $Type : 'UI.DataField',
            Value : lastName,
            Label : 'Last Name',
        },
        {
            $Type : 'UI.DataField',
            Value : mailID,
            Label : 'Mail ID',
        },
    ]
);

annotate service.useCaseDetails with @(
    UI.LineItem #UsecaseDetails : [
        {
            $Type : 'UI.DataField',
            Value : usecaseID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : usecaseName,
            Label : 'Usecase Name',
        },
        {
            $Type : 'UI.DataField',
            Value : boardArea,
            Label : 'Board Area',
        },
        {
            $Type : 'UI.DataField',
            Value : startQuarter,
            Label : 'Start Quarter',
        },
        {
            $Type : 'UI.DataField',
            Value : expectedGoLive,
            Label : 'Expected Go-Live',
        },
        {
            $Type : 'UI.DataField',
            Value : goLiveQuarter,
            Label : 'Go-Live Quarter',
        },
        {
            $Type : 'UI.DataField',
            Value : numberofDeveloper,
            Label : 'Number of Developers',
        },
        {
            $Type : 'UI.DataField',
            Value : botStatusCodeList_Code,
            Label : 'Status',
        },
    ],
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : usecaseName,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'General Information',
            ID : 'GeneralInformation',
            Target : '@UI.FieldGroup#GeneralInformation',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Weekly Status',
            ID : 'WeeklyStatus',
            Target : 'weeklyStatuses/@UI.LineItem#WeeklyStatus',
        },
    ],
    UI.FieldGroup #GeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : usecaseID,
                Label : 'ID',
            },
            {
                $Type : 'UI.DataField',
                Value : usecaseName,
                Label : 'Usecase Name',
            },
            {
                $Type : 'UI.DataField',
                Value : boardArea,
                Label : 'Board Area',
            },
            {
                $Type : 'UI.DataField',
                Value : startQuarter,
                Label : 'Start Quarter',
            },
            {
                $Type : 'UI.DataField',
                Value : expectedGoLive,
                Label : 'Expected Go-Live',
            },
            {
                $Type : 'UI.DataField',
                Value : goLiveQuarter,
                Label : 'Go-Live Quarter',
            },
            {
                $Type : 'UI.DataField',
                Value : numberofDeveloper,
                Label : 'Number of Developers',
            },
            {
                $Type : 'UI.DataField',
                Value : botStatusCodeList_Code,
                Label : 'Status',
            },
        ],
    },
    );

annotate service.weeklyStatus with @(
    UI.LineItem #WeeklyStatus : [
        {
            $Type : 'UI.DataField',
            Value : status,
            Label : 'Status',
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
    ]
);

