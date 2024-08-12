using { DAP_NS as my } from '../db/schema.cds';

@path : '/service/DAPService1'
service DAPService1
{
    action Action1
    (
    );

    @odata.draft.enabled
    entity CustomerInfo as
        projection on my.CustomerInfo;
}

annotate DAPService1 with @requires :
[
    'authenticated-user'
];
