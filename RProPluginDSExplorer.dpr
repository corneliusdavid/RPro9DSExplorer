program RProPluginDSExplorer;

uses
  System.StartUpCopy,
  FMX.Forms,
  ufrmDSExplorerMain in 'ufrmDSExplorerMain.pas' {frmDSExplorerMain},
  udmRProPluginDS in 'udmRProPluginDS.pas' {dmRProPluginDS: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDSExplorerMain, frmDSExplorerMain);
  Application.CreateForm(TdmRProPluginDS, dmRProPluginDS);
  Application.Run;
end.
