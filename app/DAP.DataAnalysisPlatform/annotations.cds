using DAPService as service from '../../srv/service';
annotate service.CustomerInfo with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'CustID',
                Value : CustID,
            },
            {
                $Type : 'UI.DataField',
                Value : Name,
                Label : 'Name',
            },
            {
                $Type : 'UI.DataField',
                Label : 'SYSID',
                Value : SYSID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Installation',
                Value : Installation,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Service',
                Value : Service,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Date',
                Value : Date,
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
            Label : 'CustID',
            Value : CustID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'SYSID',
            Value : SYSID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Installation',
            Value : Installation,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Service',
            Value : Service,
        },
    ],
);

annotate service.CustomerInfo with @(
    UI.UpdateHidden : true
);
annotate service.CustomerInfo with @(
    UI.DeleteHidden : true
);
annotate service.CustomerInfo with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : CustID,
        },
        TypeName : '',
        TypeNamePlural : '',
    }
);
