unit Simplex.Conexao.Aurelius;

{           Todos os direitos reservados           }
{      Desenvolvedor responsável: Osiel Gomes      }
{            Contato: byosiel@gmail.com            }

interface
uses
  Simplex.Interfaces.Conexao, Aurelius.Drivers.Interfaces,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.PG,
  FireDAC.Comp.UI, FireDAC.Comp.Client, Data.DB,   System.SysUtils, Aurelius.Drivers.FireDac,
  Aurelius.Engine.DatabaseManager, Aurelius.Sql.PostgreSQL, Aurelius.Schema.PostgreSQL;

type
  TConexaoAurelius = class(TInterfacedObject, iConexaoAurelius)
    private
    FConn : IDBConnection;
    FConexao : TFDConnection;
    DBManager : TDataBaseManager;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iConexaoAurelius;
      function Conn : IDBConnection;
  end;

implementation

{ TDaoConexaoAurelius }

function TConexaoAurelius.Conn: IDBConnection;
begin
   FConn := TFireDacConnectionAdapter.Create(FConexao, false);
   DBManager := TDatabaseManager.Create(FConn);
   DBManager.UpdateDatabase;
   Result := FConn;
end;

constructor TConexaoAurelius.Create;
begin
  FConexao := TFDConnection.Create(nil);
  FConexao.Params.DriverID := 'PG';
  FConexao.Params.Database := 'soEntulhos';
  FConexao.Params.UserName := 'postgres';
  FConexao.Params.Password := 'root';
  FConexao.Params.Values['SERVER=127.0.0.1'];
  FConexao.Connected := True;
end;

destructor TConexaoAurelius.Destroy;
begin
  FreeAndNil(FConexao);
  FreeAndNil(DBManager);
  inherited;
end;

class function TConexaoAurelius.New: iConexaoAurelius;
begin
  Result := Self.Create;
end;

end.
