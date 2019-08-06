unit Simplex.ViewModel.Cadastro.Pessoa;

{           Todos os direitos reservados           }
{      Desenvolvedor responsável: Osiel Gomes      }
{            Contato: byosiel@gmail.com            }

interface
uses
  Simplex.Interfaces.Crud, Simplex.Model.Cadastro.Pessoa ,Data.DB,
  Aurelius.Bind.Dataset;


type
//  TViewModelCadastroPessoa<T: class, constructor> = class(TInterfacedObject, iCrud<T>)
  TViewModelCadastroPessoa = class(TInterfacedObject, iCrudViewModel)
    private
//      FModel : iCrud<T>;
//      FModel : iFactoryCrud;
      FModel : TModelCadastroPessoa;
      FAureliusDataSet : TAureliusDataSet;
    public
      constructor Create;
      destructor Destroy; override;
//      class function New : iCrud<T>;
//
//      function Insert :iCrud<T>;
//      function Update :iCrud<T>;
//      function Save   :iCrud<T>;
//      function Delete :iCrud<T>;
//      function DataSetMaster(aValue: TDataSource) :iCrud<T>;
//      function DataSetDetail(aValue: TDataSet) :iCrud<T>;
//      function EntityMaster : T;
//      function EntityDetail : T;


      class function New : iCrudViewModel;

      function Insert(aValue : TDataSource) :iCrudViewModel;
      function Update(aValue : TDataSource) :iCrudViewModel;
      function Save(aValue : TDataSource)   :iCrudViewModel;
      function Delete(aValue : TDataSource) :iCrudViewModel;
      function DataSetMaster(aValue: TDataSource) :iCrudViewModel;
      function DataSetDetail(aValue: TDataSet) :iCrudViewModel;
      function EntityMaster : iCrudViewModel;
      function EntityDetail : iCrudViewModel;

  end;


implementation

uses
  Simplex.Factory.Crud, System.SysUtils;

{ TViewModelCadastroPessoa }

constructor TViewModelCadastroPessoa.Create;
begin
  inherited;
  FModel := TModelCadastroPessoa.New;
end;

function TViewModelCadastroPessoa.DataSetDetail(aValue: TDataSet): iCrudViewModel;
begin
  Result := Self;
//  FModel.;
end;

function TViewModelCadastroPessoa.DataSetMaster(aValue: TDataSource): iCrudViewModel;
begin
  Result := Self;
//  FModel.DataSetMaster(aValue);
end;

function TViewModelCadastroPessoa.Delete(aValue : TDataSource) : iCrudViewModel;
begin
  Result := Self;
end;

destructor TViewModelCadastroPessoa.Destroy;
begin
  FreeAndNil(FModel);
  inherited;
end;

function TViewModelCadastroPessoa.EntityDetail: iCrudViewModel;
begin
//  Result := Self;
end;

function TViewModelCadastroPessoa.EntityMaster: iCrudViewModel;
begin
//  Result := Self;
end;

function TViewModelCadastroPessoa.Insert(aValue : TDataSource) : iCrudViewModel;
begin
  Result := Self;
  FModel.Insert;
end;

class function TViewModelCadastroPessoa.New: iCrudViewModel;
begin
  Result := Self.Create;
end;

function TViewModelCadastroPessoa.Save(aValue : TDataSource)   : iCrudViewModel;
begin
  Result := Self;
end;

function TViewModelCadastroPessoa.Update(aValue : TDataSource) : iCrudViewModel;
begin
  Result := Self;
end;

end.
