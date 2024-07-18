namespace DAP_NS;

entity CustomerInfo
{
    key UID : UUID
        @Core.Description : 'Unique ID';
    CustID : Integer not null
        @Core.Description : 'Customer ID';
    Name : String(100) not null
        @Core.Description : 'Customer Name';
    SYSID : String(3) not null
        @Core.Description : 'SAP System ID';
    Installation : Integer not null
        @Core.Description : 'Installation Number';
    Service : String(60) not null
        @Core.Description : 'Type of Service';
    Date : DateTime not null
        @Core.Description : 'Created Date';
}
