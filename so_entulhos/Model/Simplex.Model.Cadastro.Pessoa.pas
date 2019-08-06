unit Simplex.Model.Cadastro.Pessoa;

{           Todos os direitos reservados           }
{      Desenvolvedor responsável: Osiel Gomes      }
{            Contato: byosiel@gmail.com            }

interface
uses
  Simplex.Interfaces.Crud, Simplex.Interfaces.Conexao, Aurelius.Engine.ObjectManager,
  Data.DB, Aurelius.Bind.Dataset, Simplex.Entity.Pessoa, System.Generics.Collections;

type
  TModelCadastroPessoa = class
    private
      FConexao : iConexaoAurelius;
      FManager : TObjectManager;
      FDataSetPessoas : TAureliusDataSet;
      FDataSetEnderecos : TAureliusDataSet;
      FDataSetContatos : TAureliusDataSet;
      FEntidade      : iEntity;
      PessoaList : TObjectList<TPessoa>;
      Pessoa     : TPessoa;
    public
      constructor Create;
      destructor Destroy; override;

      class function New : TModelCadastroPessoa;
      procedure Insert ;
      procedure InsertAddress;
      procedure InsertContact;
      procedure Edit;
      procedure Save;
      procedure Delete(aValue: TDataSource);
      procedure Cancel;
      procedure Open; overload;
      procedure Open(aValue : Integer); overload;
      procedure DataSetPessoa(aValue: TDataSource);
      procedure DataSetEnderecos(aValue: TDataSource);
      procedure DataSetContatos(aValue: TDataSource);
      function Entidade : iEntity;
      function HasChanges : Boolean;
  end;

implementation
uses
  Simplex.Factory.Conexao, System.SysUtils, Aurelius.Criteria.Base, Aurelius.Criteria.Linq,
  Simplex.Factory.Entity;
{ TModelCadastroPessoa }

procedure TModelCadastroPessoa.Cancel;
begin
  FDataSetPessoas.Cancel;
end;

constructor TModelCadastroPessoa.Create;
begin
  inherited;
  FConexao := TFactoryConexao.New.Aurelius;
  FManager := TObjectManager.Create(FConexao.Conn);
  FDataSetPessoas   := TAureliusDataSet.Create(nil);
  FDataSetEnderecos := TAureliusDataSet.Create(nil);
  FDataSetContatos  := TAureliusDataSet.Create(nil);

  FEntidade := TFactoryEntity.New;
end;

procedure TModelCadastroPessoa.DataSetContatos(aValue: TDataSource);
begin
  aValue.DataSet := FDataSetContatos;
end;

procedure TModelCadastroPessoa.DataSetEnderecos(aValue: TDataSource) ;
begin
  aValue.DataSet := FDataSetEnderecos;
end;

procedure TModelCadastroPessoa.DataSetPessoa(aValue: TDataSource);
begin
  if not Assigned(FDataSetPessoas.Manager) then
    FDataSetPessoas.Manager := FManager;
  aValue.DataSet := FDataSetPessoas;
end;

procedure TModelCadastroPessoa.Delete(aValue: TDataSource);
begin
  aValue.DataSet.Delete;
//  FDataSetEnderecos.Delete;
end;

destructor TModelCadastroPessoa.Destroy;
begin
  FreeAndNil(FDataSetContatos);
  FreeAndNil(FDataSetPessoas);
  FreeAndNil(FDataSetEnderecos);
  FreeAndNil(FManager);
  if Assigned(PessoaList) then FreeAndNil(PessoaList);
  inherited;
end;

function TModelCadastroPessoa.Entidade: iEntity;
begin
  Result := FEntidade;
end;

function TModelCadastroPessoa.HasChanges: Boolean;
begin
  Result := FManager.HasChanges;
end;

procedure TModelCadastroPessoa.Insert;
begin
  FDataSetPessoas.Append;
end;

procedure TModelCadastroPessoa.InsertAddress;
begin
  case FDataSetEnderecos.State of
    dsEdit:   FDataSetEnderecos.Post;
    dsInsert: FDataSetEnderecos.Post;
  end;
  FDataSetEnderecos.Append;
end;

procedure TModelCadastroPessoa.InsertContact;
begin
  case FDataSetContatos.State of
    dsEdit:   FDataSetContatos.Post;
    dsInsert: FDataSetContatos.Post;
  end;
  FDataSetContatos.Append;
end;

class function TModelCadastroPessoa.New: TModelCadastroPessoa;
begin
  Result := Self.Create;
end;

procedure TModelCadastroPessoa.Open(aValue: Integer);
begin
  FDataSetPessoas.Close;
  Pessoa := FManager.Find<TPessoa>.Add(Linq['ID'] = aValue).UniqueResult;
  FDataSetPessoas.SetSourceObject(Pessoa);
  FDataSetPessoas.Open;

  FDataSetContatos.Close;
  FDataSetContatos.DatasetField := FDataSetPessoas.FieldByName('Contatos') as TDataSetField;
  FDataSetContatos.Open;

  FDataSetEnderecos.Close;
  FDataSetEnderecos.DatasetField := FDataSetPessoas.FieldByName('Enderecos') as TDataSetField;
  FDataSetEnderecos.Open;
end;

procedure TModelCadastroPessoa.Open;
begin
  if not Assigned(PessoaList) then
    PessoaList := TObjectList<TPessoa>.Create;

  FDataSetPessoas.Close;
  FDataSetPessoas.SetSourceList(PessoaList);
  FDataSetPessoas.Open;
  FDataSetPessoas.First;

  FDataSetContatos.Close;
  FDataSetContatos.DatasetField := FDataSetPessoas.FieldByName('Contatos') as TDataSetField;
  FDataSetContatos.Open;
  FDataSetContatos.First;

  FDataSetEnderecos.Close;
  FDataSetEnderecos.DatasetField := FDataSetPessoas.FieldByName('Enderecos') as TDataSetField;
  FDataSetEnderecos.Open;
  FDataSetEnderecos.First;
end;

procedure TModelCadastroPessoa.Save;
begin
//Se for salvar por objeto
//  FManager.Save(FEntidade.Pessoa);

  case FDataSetPessoas.State of
    dsInsert : FDataSetPessoas.Post;
    dsEdit   : FDataSetPessoas.Post;
  end;

  FDataSetPessoas.Refresh;
end;

procedure TModelCadastroPessoa.Edit;
begin
  FDataSetPessoas.Edit;
  FDataSetEnderecos.Edit;
  FDataSetContatos.Edit;
end;

end.
