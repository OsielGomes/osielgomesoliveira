unit Simplex.Factory.Crud;

{           Todos os direitos reservados           }
{      Desenvolvedor responsável: Osiel Gomes      }
{            Contato: byosiel@gmail.com            }

interface
uses
  Simplex.Interfaces.Crud, Simplex.Entity.Pessoa;


type
  TFactoryCrud = class(TInterfacedObject, iFactoryCrud)
    private
      FEntidade : iEntity;
      FCrud     : iCrudViewModel;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryCrud;
      function Entidade : iEntity;
      function CrudCadastroPessoa     : iCrudViewModel;

  end;

implementation
uses
  Simplex.Factory.Entity, Simplex.ViewModel.Cadastro.Pessoa;

{ TFactoryCrud }

constructor TFactoryCrud.Create;
begin
  inherited;

end;

function TFactoryCrud.CrudCadastroPessoa: iCrudViewModel;
begin
  Result := TViewModelCadastroPessoa.New;
end;

destructor TFactoryCrud.Destroy;
begin
  inherited;
end;

function TFactoryCrud.Entidade: iEntity;
begin
  Result := TFactoryEntity.New;
end;

class function TFactoryCrud.New: iFactoryCrud;
begin
  Result := Self.Create;
end;

end.
