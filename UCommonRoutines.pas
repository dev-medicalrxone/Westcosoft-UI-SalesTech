unit UCommonRoutines;

interface

Uses
  Forms;

Type
  TSupplier = class(TObject)
    function CalcBalance(SupplierID: Integer):Single;
  end;

  TCommonForm = class(TObject)
    procedure ActivateForm(InForm: TForm);
  end;

Var
  Supplier: TSupplier;
  CommonForm: TCommonForm;

implementation

Uses
  UDMSuplidores;

function TSupplier.CalcBalance(SupplierID: Integer):Single;
Begin
  Result := 0;
  With DataModuleSuplidores do
  Begin
    QTotalAdeudado.Close;
    QTotalAdeudado.ParamByName('NumeroSuplidor').AsInteger := SupplierID;
    QTotalAdeudado.Open;
    QTotalPagado.Close;
    QTotalPagado.ParamByName('NumeroSuplidor').AsInteger := SupplierID;
    QTotalPagado.Open;
    Result := (QTotalAdeudadoTAdeudado.Value - QTotalPagadoTPagado.Value);
  end;
end;

procedure TCommonForm.ActivateForm(InForm: TForm);
begin
//
end;

end.
