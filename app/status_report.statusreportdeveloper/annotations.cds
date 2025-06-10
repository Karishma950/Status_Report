using Status_Report_Developer as service from '../../srv/service1';
annotate service.useCaseDetails with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'usecaseID',
                Value : usecaseID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'usecaseName',
                Value : usecaseName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'startQuarter',
                Value : startQuarter,
            },
            {
                $Type : 'UI.DataField',
                Label : 'expectedGoLive',
                Value : expectedGoLive,
            },
            {
                $Type : 'UI.DataField',
                Label : 'goLiveQuarter',
                Value : goLiveQuarter,
            },
            {
                $Type : 'UI.DataField',
                Label : 'boardArea',
                Value : boardArea,
            },
            {
                $Type : 'UI.DataField',
                Label : 'numberofDeveloper',
                Value : numberofDeveloper,
            },
            {
                $Type : 'UI.DataField',
                Label : 'botStatusCodeList_code',
                Value : botStatusCodeList_code,
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
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'usecaseID',
            Value : usecaseID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'usecaseName',
            Value : usecaseName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'startQuarter',
            Value : startQuarter,
        },
        {
            $Type : 'UI.DataField',
            Label : 'expectedGoLive',
            Value : expectedGoLive,
        },
        {
            $Type : 'UI.DataField',
            Label : 'goLiveQuarter',
            Value : goLiveQuarter,
        },
    ],
);

