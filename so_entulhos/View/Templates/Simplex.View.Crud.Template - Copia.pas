unit Simplex.View.Crud.Template;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.WinXCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxClasses, cxImage,
  System.ImageList, Vcl.ImgList, cxImageList, Vcl.WinXPanels, cxImageComboBox;

type
  TfrmCrud = class(TForm)
    pnlMain: TPanel;
    pnlTopo: TPanel;
    lblTela: TLabel;
    pnlComponentes: TPanel;
    pnlBotoesTop: TPanel;
    edtPesquisar: TSearchBox;
    pnlBotaoAdicionar: TPanel;
    style: TcxStyleRepository;
    groupbyBox: TcxStyle;
    contentOdd: TcxStyle;
    content: TcxStyle;
    contentEven: TcxStyle;
    selection: TcxStyle;
    header: TcxStyle;
    inactive: TcxStyle;
    cxgrd1: TcxGrid;
    gridPrincipal: TcxGridDBTableView;
    gridlvl1: TcxGridLevel;
    corGroupbyBox: TcxStyle;
    pnlFechar: TPanel;
    colEditar: TcxGridDBColumn;
    colDeletar: TcxGridDBColumn;
    imgList: TcxImageList;
    dsPrincipal: TDataSource;
    cardMain: TCardPanel;
    cardGrid: TCard;
    shpDivisao: TShape;
    procedure gridPrincipalCustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCrud: TfrmCrud;

implementation

{$R *.dfm}

procedure TfrmCrud.FormCreate(Sender: TObject);
begin
  Self.BorderStyle := bsNone;
  Self.WindowState := wsMaximized;
end;

procedure TfrmCrud.gridPrincipalCustomDrawColumnHeader(Sender: TcxGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridColumnHeaderViewInfo; var ADone: Boolean);
begin
  gridPrincipal.OnCustomDrawColumnHeader := nil;
  ADone := True;
  AViewInfo.Borders := [bBottom];
  AViewInfo.Paint(ACanvas);
  gridPrincipal.OnCustomDrawColumnHeader := gridPrincipalCustomDrawColumnHeader;
end;

end.
