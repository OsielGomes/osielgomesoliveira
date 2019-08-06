unit Gerenciador.Form;

interface

uses
  Vcl.ExtCtrls, System.Classes, Vcl.Forms, System.Generics.Collections;

Type
  iGerenciadorForm = interface
    ['{BD2E550E-FBC7-4927-B71E-507D4F98255D}']
    function AddForm(Key : String; Value : TComponentClass; const Parent : TPanel; Index : Boolean = false) : iGerenciadorForm;
    function GetForm (Value : String) : TForm;
    function GetFormIndex : TForm;
    function RemoveForm (Value : String) : iGerenciadorForm;
  end;

  TGerenciadorForm = class(TInterfacedObject, iGerenciadorForm)
    private
      FormIndex : TForm;
      ListaForm : TObjectDictionary<String, TForm>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iGerenciadorForm;
      function AddForm(Key : String; Value : TComponentClass; const Parent : TPanel; Index : Boolean = false) : iGerenciadorForm;
      function GetForm (Value : String) : TForm;
      function GetFormIndex : TForm;
      function RemoveForm (Value : String) : iGerenciadorForm;
  end;

var
  _Gerenciador : iGerenciadorForm;

implementation

uses
  System.SysUtils;

{ TGerenciadorForm }

function TGerenciadorForm.AddForm(Key: String; Value: TComponentClass;
  const Parent: TPanel; Index: Boolean): iGerenciadorForm;
var
  aForm : TForm;
begin
  Result := Self;
  if not ListaForm.TryGetValue(Key, aForm)  then
  begin
    Application.CreateForm(Value, aForm);
    aForm.Caption := Key;
    ListaForm.Add(Key, aForm);
  end;

  aForm.Parent := Parent;
  aForm.Show;

  if Index then
    FormIndex := aForm;
end;

constructor TGerenciadorForm.Create;
begin
  ListaForm := TObjectDictionary<String, TForm>.Create;
end;

destructor TGerenciadorForm.Destroy;
begin
  FreeAndNil(ListaForm);
  inherited;
end;

function TGerenciadorForm.GetForm(Value: String): TForm;
begin
  ListaForm.TryGetValue(Value, Result);
end;

function TGerenciadorForm.GetFormIndex: TForm;
begin
  Result := FormIndex;
end;

class function TGerenciadorForm.New: iGerenciadorForm;
begin
  Result := Self.Create;
end;

function TGerenciadorForm.RemoveForm(Value: String): iGerenciadorForm;
var
  aForm : TForm;
begin
  if ListaForm.TryGetValue(Value, aForm) then
  begin
    FreeAndNil(aForm);
    ListaForm.Remove(Value);
  end;
end;

initialization
  _Gerenciador := TGerenciadorForm.New;

end.
