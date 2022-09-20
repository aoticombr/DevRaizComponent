program DEMO;

uses
  Vcl.Forms,
  ufmenu in 'ufmenu.pas' {fmenu};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfmenu, fmenu);
  Application.Run;
end.
