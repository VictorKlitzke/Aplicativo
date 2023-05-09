unit uLibMobile;

interface

uses
  Data.DB, Data.Bind.DBScope, Uni, Fmx.Dialogs;

procedure Salva(Tabela  : TUniQuery);
procedure Novo(Tabela   : TUniQuery);
procedure Apaga(Tabela  : TUniQuery);
procedure Cancela(Tabela: TUniQuery);
procedure Refresh_TB(Tabela: TUniQuery);

implementation

procedure Salva(Tabela : TUniQuery);
begin
  if Tabela.State in [dsEdit, dsInsert] then
  begin
    Tabela.Post;

      Tabela.ApplyUpdates;
      Tabela.CommitUpdates;
  end;
end;

procedure Refresh_TB(Tabela: TUniQuery);
begin
  Tabela.Close;
  Tabela.Open;
  Tabela.First;
end;

procedure Novo(Tabela: TUniQuery);
begin
  if Tabela.Active = False then
     Tabela.Open
  else begin
     Salva(Tabela);
  end;
  Tabela.Append;
end;

procedure Apaga(Tabela: TUniQuery);
begin
  if Tabela.RecordCount <> 0 then
  begin
   Tabela.Delete;
   try
     Tabela.ApplyUpdates;
     Tabela.CommitUpdates;
   finally
    Tabela.CancelUpdates;
   end;
  end else
    ShowMessage('Não há registros para apagar');
end;

procedure Cancela(Tabela: TUniQuery);
begin
  Tabela.Cancel;
  Salva(Tabela);
end;

end.
