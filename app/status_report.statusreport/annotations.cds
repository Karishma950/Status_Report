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

