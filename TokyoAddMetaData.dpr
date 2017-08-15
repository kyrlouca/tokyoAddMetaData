program TokyoAddMetaData;

uses
  Vcl.Forms,
  MainE in 'MainE.pas' {MainEFRM};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainEFRM, MainEFRM);
  Application.Run;
end.
