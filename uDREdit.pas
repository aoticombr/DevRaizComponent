unit uDREdit;

interface

uses
  Vcl.StdCtrls, System.Classes, System.UITypes;

type

  TDREdit = class(TCustomEdit)
  private
    FColorEnter: Tcolor;
    FColorNormal: Tcolor;
    FObrigatorio: Boolean;
    procedure SetColorEnter(const Value: Tcolor);
    procedure DoEnter; override;
    procedure DoExit; override;
    procedure SetColorNormal(const Value: Tcolor);
    procedure SetObrigatorio(const Value: Boolean);
  published
    property ColorNormal: Tcolor read FColorNormal write SetColorNormal;
    property ColorEnter: Tcolor read FColorEnter write SetColorEnter;
    property Color;
    property OnEnter;
    property OnExit;
    property Obrigatorio:Boolean read FObrigatorio write SetObrigatorio;
  end;
  TDRSimples = class(TComponent)

  end;

  procedure Register;

implementation

procedure Register;
begin
   RegisterComponents('AOTI', [TDREdit,TDRSimples]);
end;

{ TDREdit }

procedure TDREdit.DoEnter;
begin
  inherited;
  self.Color:= ColorEnter;
end;

procedure TDREdit.DoExit;
begin
  inherited;
  self.Color:= ColorNormal;
end;

procedure TDREdit.SetColorEnter(const Value: Tcolor);
begin
  FColorEnter := Value;
end;

procedure TDREdit.SetColorNormal(const Value: Tcolor);
begin
  FColorNormal := Value;
end;

procedure TDREdit.SetObrigatorio(const Value: Boolean);
begin
  FObrigatorio := Value;
end;

end.
