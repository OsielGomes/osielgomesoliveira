unit Simplex.Factory.Conexao;

{           Todos os direitos reservados           }
{      Desenvolvedor responsável: Osiel Gomes      }
{            Contato: byosiel@gmail.com            }

interface

uses
  Simplex.Interfaces.Conexao;

type
  TFactoryConexao = class(TInterfacedObject, iFactoryConexao)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iFactoryConexao;
      function Aurelius : iConexaoAurelius;

  end;

implementation
uses
  Simplex.Conexao.Aurelius;

{ TFactoryConexao }

function TFactoryConexao.Aurelius: iConexaoAurelius;
begin
  Result := TConexaoAurelius.New;
end;

constructor TFactoryConexao.Create;
begin
  inherited;

end;

destructor TFactoryConexao.Destroy;
begin

  inherited;
end;

class function TFactoryConexao.New: iFactoryConexao;
begin
  Result := Self.Create;
end;

end.
