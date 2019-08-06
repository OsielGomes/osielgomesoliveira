unit Simplex.View.Menu.Frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrameMenu = class(TFrame)
    pnlMain: TPanel;
    lblDescricao: TLabel;
    lblTituloMenu: TLabel;
    lblCategoria: TLabel;
    shpSelecionado: TShape;
    procedure pnlMainMouseEnter(Sender: TObject);
    procedure pnlMainMouseLeave(Sender: TObject);
    procedure pnlMainClick(Sender: TObject);
  private
    { Private declarations }
    FInjectPanel : TPanel;
    FInjectKey   : String;
    FInjectComponent : TComponentClass;
  public
    procedure PanelInjection(Key : String; Value : TComponentClass; const Parent : TPanel);
  end;

implementation

uses
  Gerenciador.Form;

{$R *.dfm}

function HexToTColor(sColor : String) : TColor;
begin
  Result :=
    RGB (
      StrToInt('$'+Copy(sColor, 1, 2)),
      StrToInt('$'+Copy(sColor, 3, 2)),
      StrToInt('$'+Copy(sColor, 5, 2))
    );
end;

procedure TFrameMenu.PanelInjection(Key: String; Value: TComponentClass; const Parent: TPanel);
begin
  FInjectPanel     := Parent;
  FInjectKey       := Key;
  FInjectComponent := Value;
end;

procedure TFrameMenu.pnlMainClick(Sender: TObject);
begin
  pnlMain.Color := HexToTColor('16191C');
  shpSelecionado.Brush.Color := HexToTColor('1562A3');
  _Gerenciador.AddForm(FInjectKey, FInjectComponent, FInjectPanel);
end;

procedure TFrameMenu.pnlMainMouseEnter(Sender: TObject);
begin
  pnlMain.Color := HexToTColor('1562A3');
end;

procedure TFrameMenu.pnlMainMouseLeave(Sender: TObject);
begin
  pnlMain.Color := HexToTColor('16191C');
end;

end.
