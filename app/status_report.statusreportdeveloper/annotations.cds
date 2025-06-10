using Status_Report_Developer as service from '../../srv/service1';
using from '../../db/schema';

annotate service.useCaseDetails with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : usecaseID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Usecase Name',
                Value : usecaseName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Start Quarter',
                Value : startQuarter,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Expected Go-Live',
                Value : expectedGoLive,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Go-Live Quarter',
                Value : goLiveQuarter,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Board Area',
                Value : boardArea,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Number of Developers',
                Value : numberofDeveloper,
            },
            {
                $Type : 'UI.DataField',
                Value : botStatusCodeList_Code,
                Label : 'Status',
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
            Label : 'Weekly Status',
            ID : 'WeeklyStatus',
            Target : 'weeklyStatuses/@UI.LineItem#WeeklyStatus',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : usecaseID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Usecase Name',
            Value : usecaseName,
        },
        {
            $Type : 'UI.DataField',
            Value : boardArea,
            Label : 'Board Area',
        },
        {
            $Type : 'UI.DataField',
            Label : 'Start Quarter',
            Value : startQuarter,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Expected Go-Live',
            Value : expectedGoLive,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Go-Live Quarter',
            Value : goLiveQuarter,
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

