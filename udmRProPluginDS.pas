unit udmRProPluginDS;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.Oracle, FireDAC.Phys.OracleDef,
  FireDAC.FMXUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TdmRProPluginDS = class(TDataModule)
    rproConn: TFDConnection;
    qryRProPluginVendors: TFDQuery;
    qryRProPluginDataSets: TFDQuery;
    qryRProPluginLookup1: TFDQuery;
    qryRProPluginLookup1LOOKUP_KEY1: TStringField;
    qryRProPluginLookup2: TFDQuery;
    srcRProPluginDatasets: TDataSource;
    dsRProPluginVendors: TDataSource;
    dsRProPluginLookup1: TDataSource;
    qryRProPluginLookup1DATASET_SID: TStringField;
    qryRProPluginVendorsVENDOR_SID: TStringField;
    qryRProPluginVendorsVENDOR_NAME: TWideStringField;
    qryRProPluginVendorsCREATED_DATE: TDateTimeField;
    qryRProPluginDataSetsDATASET_SID2: TStringField;
    qryRProPluginDataSetsVENDOR_SID: TFMTBCDField;
    qryRProPluginDataSetsDATASET_NAME: TWideStringField;
    qryRProPluginDataSetsCREATED_DATE: TDateTimeField;
    qryRProPluginLookup2REC_NO: TBCDField;
    qryRProPluginLookup2REC_SID: TStringField;
    qryRProPluginLookup2LOOKUP_KEY2: TStringField;
    qryRProPluginLookup2CREATED_DATE: TDateTimeField;
    srcRProPluginLookup2: TDataSource;
    qryRProPluginRecord: TFDQuery;
    qryRProPluginRecordREC_SID: TFMTBCDField;
    qryRProPluginRecordREC_VALUE: TWideStringField;
    qryRProPluginRecordCREATED_DATE: TDateTimeField;
    qryRProPluginRecordMODIFIED_DATE: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRProPluginDS: TdmRProPluginDS;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{$R *.dfm}

end.
