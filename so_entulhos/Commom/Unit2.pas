unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXPanels, Vcl.Buttons,
  Simplex.Interfaces.CaixaDialogo, dxGDIPlusClasses;

type
  TfrmCaixaDialogo = class(TForm, iMessageDialog, iButtons)
    pnlMain: TPanel;
    cardTipoMensagem: TCardPanel;
    CardButtons: TCardPanel;
    cardWarning: TCard;
    cardQuestion: TCard;
    cardError: TCard;
    lblWarning: TLabel;
    lblMessageWarning: TLabel;
    cardYesNo: TCard;
    cardOkCancel: TCard;
    cardOk: TCard;
    pnlBotaoOkCardOk: TPanel;
    btnOkCardOk: TSpeedButton;
    lblMessageError: TLabel;
    lblError: TLabel;
    lblMessageQuestion: TLabel;
    lblQuestion: TLabel;
    pnlBotaoOkCardOkCancel: TPanel;
    btnOkCardOkCancel: TSpeedButton;
    pnlBotaoCancelCardOkCancel: TPanel;
    btnCancelCardOkCancel: TSpeedButton;
    pnlBotaoNoCardYesNo: TPanel;
    btnNoCardYesNo: TSpeedButton;
    pnlBotaoYesCardYesNo: TPanel;
    btnYesCardYesNo: TSpeedButton;
    imgError: TImage;
    imgQuestion: TImage;
    imgWarning: TImage;
    procedure btnOkCardOkClick(Sender: TObject);
  private
    FMessage: String;
  public
    destructor Destroy; override;
    function Dialog:                         iMessageDialog;
    function Warning:                        iMessageDialog;
    function Question:                       iMessageDialog;
    function Error:                          iMessageDialog;
    function MessageDialog(aValue : string): iMessageDialog;
    function Show:                           iMessageDialog;
    function Buttons:                        iButtons;
    function YesNo:       iMessageDialog;
    function OkCancel:    iMessageDialog;
    function Ok:          iMessageDialog;
  end;

var
  frmCaixaDialogo: TfrmCaixaDialogo;

implementation

uses
  Fundo.View.CaixaDialogo;

{$R *.dfm}

procedure TfrmCaixaDialogo.btnOkCardOkClick(Sender: TObject);
begin
  ModalResult := mrOk;
  Close;
end;

function TfrmCaixaDialogo.Buttons: iButtons;
begin
  Result := Self;
end;

destructor TfrmCaixaDialogo.Destroy;
begin
  inherited;
end;

{$REGION 'Dialog'}
function TfrmCaixaDialogo.Error: iMessageDialog;
begin
  Result := Self;
  cardTipoMensagem.ActiveCard := cardError;
  lblMessageError.Caption := FMessage;
end;

function TfrmCaixaDialogo.Question: iMessageDialog;
begin
  Result := Self;
  cardTipoMensagem.ActiveCard := cardQuestion;
  lblMessageQuestion.Caption := FMessage;
end;

function TfrmCaixaDialogo.Warning: iMessageDialog;
begin
  Result := Self;
  cardTipoMensagem.ActiveCard := cardWarning;
  lblMessageWarning.Caption := FMessage;
end;
{$ENDREGION}

{$Region 'Buttons'}
function TfrmCaixaDialogo.Ok: iMessageDialog;
begin
  CardButtons.ActiveCard := cardOk;
  Result := Self;

  case cardTipoMensagem.ActiveCardIndex of
    0 : pnlBotaoOkCardOk.Color := ColorToRGB($00249DEE); //Warning
    1 : pnlBotaoOkCardOk.Color := ColorToRGB($00A36215); //Question
    2 : pnlBotaoOkCardOk.Color := ColorToRGB($005151CC); //Error
  end;
end;

function TfrmCaixaDialogo.YesNo: iMessageDialog;
begin
  CardButtons.ActiveCard := cardYesNo;
  Result := Self;

  case cardTipoMensagem.ActiveCardIndex of
    0 : pnlBotaoYesCardYesNo.Color := ColorToRGB($00249DEE); //Warning
    1 : pnlBotaoYesCardYesNo.Color := ColorToRGB($00A36215); //Question
    2 : pnlBotaoYesCardYesNo.Color := ColorToRGB($005151CC); //Error
  end;
end;

function TfrmCaixaDialogo.OkCancel: iMessageDialog;
begin
  CardButtons.ActiveCard := cardOkCancel;
  Result := Self;

  case cardTipoMensagem.ActiveCardIndex of
    0 : pnlBotaoOkCardOkCancel.Color := ColorToRGB($00249DEE); //Warning
    1 : pnlBotaoOkCardOkCancel.Color := ColorToRGB($00A36215); //Question
    2 : pnlBotaoOkCardOkCancel.Color := ColorToRGB($005151CC); //Error
  end;
end;
{$ENDREGION}

function TfrmCaixaDialogo.MessageDialog(aValue: string): iMessageDialog;
begin
  Result := Self;
  FMessage:= aValue;
end;

function TfrmCaixaDialogo.Show: iMessageDialog;
begin
  Result := Self;
  Self.BorderStyle := bsNone;
  Self.Position    := poOwnerFormCenter;
  frmFundoCaixaDialogo.Show;
  Self.ShowModal;
  frmFundoCaixaDialogo.Hide;
end;

function TfrmCaixaDialogo.Dialog: iMessageDialog;
begin
  Result := Self;
end;

end.

