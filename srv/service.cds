using { DAP_NS as my } from '../db/schema.cds';

@path : '/service/DAPService'
service DAPService
{
    @odata.draft.enabled
    entity CustomerInfo as
        projection on my.CustomerInfo;
}

annotate DAPService with @requires :
[
    'authenticated-user',
    'any',
    'system-user'
];
