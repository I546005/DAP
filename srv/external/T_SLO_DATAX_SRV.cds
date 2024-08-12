/* checksum : af1876dc7bd972ec8a8c26cab523690f */
@cds.external : true
@m.IsDefaultEntityContainer : 'true'
@sap.supported.formats : 'atom json xlsx'
service T_SLO_DATAX_SRV {};

@cds.external : true
@cds.persistence.skip : true
@sap.content.version : '1'
@sap.semantics : 'subscriptions'
entity T_SLO_DATAX_SRV.SubscriptionCollection {
  @sap.label : 'Sub. ID'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  @sap.filterable : 'false'
  key ID : String(32) not null;
  @m.FC_TargetPath : 'SyndicationAuthorName'
  @m.FC_KeepInContent : 'false'
  @sap.label : 'User Name'
  @sap.creatable : 'false'
  @sap.filterable : 'false'
  user : String(12);
  @odata.Type : 'Edm.DateTime'
  @m.FC_TargetPath : 'SyndicationUpdated'
  @m.FC_KeepInContent : 'false'
  @sap.label : 'Time Stamp'
  @sap.creatable : 'false'
  @sap.filterable : 'false'
  updated : DateTime;
  @m.FC_TargetPath : 'SyndicationTitle'
  @m.FC_KeepInContent : 'false'
  @sap.label : 'Title'
  @sap.filterable : 'false'
  title : String(255);
  @sap.label : 'Delivery Address'
  @sap.filterable : 'false'
  deliveryAddress : LargeString;
  @sap.label : 'Persist Notification'
  @sap.filterable : 'false'
  persistNotifications : Boolean;
  @sap.label : 'Collection'
  @sap.filterable : 'false'
  collection : String(40);
  @sap.label : 'Filter'
  @sap.filterable : 'false'
  filter : LargeString;
  @sap.label : 'Select'
  @sap.filterable : 'false'
  ![select] : String(255);
  @sap.label : 'Change Type'
  changeType : String(30);
};

@cds.external : true
@cds.persistence.skip : true
@sap.creatable : 'false'
@sap.updatable : 'false'
@sap.deletable : 'false'
@sap.addressable : 'false'
@sap.content.version : '1'
@sap.semantics : 'notifications'
entity T_SLO_DATAX_SRV.NotificationCollection {
  @sap.label : 'Notification ID'
  key ID : String(32) not null;
  @sap.label : 'Collection'
  collection : String(40);
  @m.FC_TargetPath : 'SyndicationTitle'
  @m.FC_KeepInContent : 'false'
  @sap.label : 'Notif. Text'
  title : LargeString;
  @odata.Type : 'Edm.DateTime'
  @m.FC_TargetPath : 'SyndicationUpdated'
  @m.FC_KeepInContent : 'false'
  @sap.label : 'Time Stamp'
  updated : DateTime;
  @sap.label : 'Change Type'
  changeType : String(30);
  @sap.label : 'No. of Entries'
  entriesOfInterest : Integer;
  @sap.label : 'Recipient'
  @sap.creatable : 'false'
  @sap.updatable : 'false'
  recipient : String(112);
};

@cds.external : true
@cds.persistence.skip : true
@sap.label : 'Filter text'
@sap.deletable : 'false'
@sap.searchable : 'true'
@sap.requires.filter : 'true'
@sap.content.version : '1'
entity T_SLO_DATAX_SRV.filter {
  @sap.unicode : 'false'
  @sap.label : 'GUID'
  key Uuid : Binary(16) not null;
  @sap.unicode : 'false'
  @sap.label : 'Customer ID'
  Custid : Integer;
  @sap.unicode : 'false'
  @sap.label : 'Customer Name'
  Custname : String(30);
  @sap.unicode : 'false'
  @sap.label : 'SAP System ID'
  Sysid : String(8);
  @sap.unicode : 'false'
  @sap.label : 'Installation Number'
  Installation : String(30);
  @sap.unicode : 'false'
  @sap.label : 'Type of Service'
  Service : String(50);
  @sap.unicode : 'false'
  @sap.label : 'Created Date'
  Creadate : String(10);
};

