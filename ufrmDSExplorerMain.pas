unit ufrmDSExplorerMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Edit;

type
  TfrmDSExplorerMain = class(TForm)
    Header: TToolBar;
    Footer: TToolBar;
    lblHeader: TLabel;
    pnlVendors: TPanel;
    lvVendors: TListView;
    lblVendors: TLabel;
    BindSourceDBVendors: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    pnlDataSets: TPanel;
    lblDataSet: TLabel;
    lvDataSets: TListView;
    BindSourceDBDataSets: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    Panel1: TPanel;
    lblLookup1: TLabel;
    lvLookup1: TListView;
    BindSourceDBLookup1: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    Panel2: TPanel;
    Label1: TLabel;
    lvLookup2: TListView;
    BindSourceDBLookup2: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    Label2: TLabel;
    Panel3: TPanel;
    Label4: TLabel;
    lvRecord: TListView;
    BindSourceDBRecord: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
    Edit1: TEdit;
    LinkControlToField1: TLinkControlToField;
    Label3: TLabel;
    Edit3: TEdit;
    LinkControlToField2: TLinkControlToField;
    Label6: TLabel;
    Edit2: TEdit;
    LinkControlToField3: TLinkControlToField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDSExplorerMain: TfrmDSExplorerMain;

implementation

{$R *.fmx}

uses udmRProPluginDS;

end.
