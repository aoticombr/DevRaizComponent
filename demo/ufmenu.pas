unit ufmenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDREdit, Vcl.ExtCtrls;

type
  Tfmenu = class(TForm)
    DREdit1: TDREdit;
    DREdit2: TDREdit;
    DREdit3: TDREdit;
    DREdit4: TDREdit;
    DREdit5: TDREdit;
    Edit1: TEdit;
    Timer1: TTimer;
    DRSimples1: TDRSimples;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmenu: Tfmenu;

implementation

{$R *.dfm}

end.
