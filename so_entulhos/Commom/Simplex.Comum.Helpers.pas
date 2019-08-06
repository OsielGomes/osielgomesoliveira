unit Simplex.Comum.Helpers;

interface
uses
  Vcl.ExtCtrls;

type
  TLabeledEditToInteger = class helper for TLabeledEdit
    function ToInteger : Integer;
  end;

implementation

uses
  System.SysUtils;

{ TLabeledEditToInteger }

function TLabeledEditToInteger.ToInteger : Integer;
var
  valorInteiro : Integer;
begin
  Result := StrToInt(Self.Text);
end;

end.
