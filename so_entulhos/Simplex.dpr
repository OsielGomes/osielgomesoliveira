program Simplex;

uses
  Vcl.Forms,
  Simplex.View.Principal in 'View\Simplex.View.Principal.pas' {frmPrincipal},
  Simplex.View.SQLMonitor in 'Commom\Simplex.View.SQLMonitor.pas' {SqlMonitorForm},
  Gerenciador.Form in 'Commom\Gerenciador.Form.pas',
  Simplex.View.Menu.Base in 'Commom\Simplex.View.Menu.Base.pas' {frmMenuBase},
  Simplex.View.Menu.Frame in 'Commom\Simplex.View.Menu.Frame.pas' {FrameMenu: TFrame},
  Simplex.View.Menu.Cadastros in 'Commom\Simplex.View.Menu.Cadastros.pas' {frmMenuCadastros},
  Simplex.Interfaces.Crud in 'Interfaces\Simplex.Interfaces.Crud.pas',
  Simplex.Interfaces.Conexao in 'Interfaces\Simplex.Interfaces.Conexao.pas',
  Simplex.Conexao.Aurelius in 'Dao\Conexao\Simplex.Conexao.Aurelius.pas',
  Simplex.Factory.Conexao in 'Factory\Simplex.Factory.Conexao.pas',
  Simplex.Model.Cadastro.Pessoa in 'Model\Simplex.Model.Cadastro.Pessoa.pas',
  Simplex.Entity.Pessoa in 'Entitity\Simplex.Entity.Pessoa.pas',
  Unit1 in 'View\Templates\Unit1.pas' {Form1},
  Simplex.Factory.Entity in 'Factory\Simplex.Factory.Entity.pas',
  Simplex.ViewModel.Pessoa in 'ViewModel\Simplex.ViewModel.Pessoa.pas',
  Simplex.View.Crud.Template in 'View\Templates\Simplex.View.Crud.Template.pas' {frmCrud},
  Simplex.View.Clientes in 'View\Simplex.View.Clientes.pas' {frmClientes},
  Simplex.View.CrudEdit.Template in 'View\Templates\Simplex.View.CrudEdit.Template.pas' {frmCrudEdit},
  Simplex.View.Edit.Cliente in 'View\Simplex.View.Edit.Cliente.pas' {frmEditCliente},
  Fundo.View.Padrao in 'Commom\Fundo.View.Padrao.pas' {frmFundo},
  Simplex.View.CaixaDialogo in 'Commom\Simplex.View.CaixaDialogo.pas' {frmCaixaDialogo},
  Simplex.Interfaces.CaixaDialogo in 'Interfaces\Simplex.Interfaces.CaixaDialogo.pas',
  Fundo.View.CaixaDialogo in 'Commom\Fundo.View.CaixaDialogo.pas' {frmFundoCaixaDialogo},
  Simplex.View.Principal2 in 'View\Simplex.View.Principal2.pas' {frmCadastros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmFundo, frmFundo);
  Application.CreateForm(TfrmCaixaDialogo, frmCaixaDialogo);
  Application.CreateForm(TfrmFundoCaixaDialogo, frmFundoCaixaDialogo);
  Application.Run;
end.
