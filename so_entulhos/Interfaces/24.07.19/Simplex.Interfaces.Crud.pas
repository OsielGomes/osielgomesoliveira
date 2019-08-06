unit Simplex.Interfaces.Crud;

interface

uses
  Data.DB, Simplex.Entity.Pessoa, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
//  iCrud<T> = interface
//    ['{FE7F3EBE-E3A5-4BD8-A241-869A15D4AF12}']
//    function Insert :iCrud<T>;
//    function Update :iCrud<T>;
//    function Save   :iCrud<T>;
//    function Delete :iCrud<T>;
//    function DataSetMaster(aValue: TDataSource) :iCrud<T>;
//    function DataSetDetail(aValue: TDataSet) :iCrud<T>;
//    function EntityMaster : T;
//    function EntityDetail : T;
//  end;
  iEntity = interface                                //princiapal
    ['{9835B439-168E-4A44-9A13-F25DB8102C33}']
    function Pessoa : TPessoa;
  end;

  iViewModelPessoa = interface
    ['{9B4123E4-E668-47CD-866B-31BC5E8DE686}']
     function InserirPessoa          : iViewModelPessoa;
     function InserirEndereco        : iViewModelPessoa;
     function EditarPessoa           : iViewModelPessoa;
     function SalvarPessoa           : iViewModelPessoa;
     function DeletarPessoa          : iViewModelPessoa;
     function Cancelar               : iViewModelPessoa;
     function Open                   : iViewModelPessoa; overload;
     function Open(aValue : Integer) : iViewModelPessoa; overload;
     function DataSet(aValue : TDataSource) : iViewModelPessoa;
     function DataSetEnderecos(aValue : TDataSource) : iViewModelPessoa;
     function DataSetContatos(aValue : TDataSource) : iViewModelPessoa;
     function Entidade       : iEntity;
     //Controles de Tela
     procedure MostrarOcultarTituloEdit(aEdit: TEdit; aLabel: TLabel); overload;
     procedure MostrarOcultarTituloEdit(aEdit: TMaskEdit; aLabel: TLabel); overload;
     function StatusPanel(aDataSource : TDataSource; aValue : TPanel): iViewModelPessoa;
     function StatusLabel(aDataSource : TDataSource; aValue : TLabel): iViewModelPessoa;
  end;

  iViewModelControls = interface
    ['{0539617E-920C-4106-A9CD-575A9EB7978E}']
    procedure MostrarOcultarTituloEdit(aEdit: TEdit; aLabel: TLabel); overload;
    procedure MostrarOcultarTituloEdit(aEdit: TMaskEdit; aLabel: TLabel); overload;
    function Status(aDataSource : TDataSource) : iViewModelPessoa;
    function BrushPanel(var aValue : TPanel): iViewModelPessoa;
    function CaptionLabel(var aValue : TLabel): iViewModelPessoa;
  end;

//  iCrudViewModel = interface
//    ['{390B96CA-50CB-4392-AC3E-DB177014A699}']
//    function Insert(aValue : TDataSource) :iCrudViewModel;
//    function Update(aValue : TDataSource) :iCrudViewModel;
//    function Save(aValue   : TDataSource) :iCrudViewModel;
//    function Delete(aValue : TDataSource) :iCrudViewModel;
////    function Open                         :iCrudViewModel;
//    function DataSetMaster(aValue: TDataSource) :iCrudViewModel;
//    function DataSetDetail(aValue: TDataSet) :iCrudViewModel;
//    function EntityMaster : iCrudViewModel;
//    function EntityDetail : iCrudViewModel;
//  end;



//  iFactoryCrud = interface
//    ['{BF5BAFAB-6676-4276-AB92-ACFA42B96133}']
//    function Entidade           : iEntity;
//    function CrudCadastroPessoa : iCrudViewModel;
//  end;


implementation

end.
