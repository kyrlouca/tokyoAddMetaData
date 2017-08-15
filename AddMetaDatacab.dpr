program AddMetaDataCab;

uses
  Forms,
  MainE in 'MainE.pas' {MainEFRM};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TMainEFRM, MainEFRM);
  Application.Run;
end.
