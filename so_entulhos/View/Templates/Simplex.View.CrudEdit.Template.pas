unit Simplex.View.CrudEdit.Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, dxGDIPlusClasses;

type
  TfrmCrudEdit = class(TForm)
    pnlMain: TPanel;
    pnlEditMain: TPanel;
    pnlBotoes: TPanel;
    pnlStatus: TPanel;
    lblStatus: TLabel;
    pnlSalvar: TPanel;
    pnlCancelar: TPanel;
    imgSalvar: TImage;
    pnlBorda: TPanel;
    pnlFechar: TPanel;
    imgFechar: TImage;
    lblMensagem: TLabel;
    procedure imgFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
//    class function New(aValue : Integer) : TfrmCrudEdit;
  end;

var
  frmCrudEdit: TfrmCrudEdit;

implementation

{$R *.dfm}

procedure TfrmCrudEdit.imgFecharClick(Sender: TObject);
begin
  Close;
end;

end.
