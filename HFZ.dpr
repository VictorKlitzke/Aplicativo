program HFZ;

uses
  System.StartUpCopy,
  FMX.Forms,
  uCadastroUsuario in 'Source\Views\uCadastroUsuario.pas' {CadastroUsuarios},
  uPrincipal in 'Source\Views\uPrincipal.pas' {Principal},
  DM in 'Source\Services\DM.pas' {Banco: TDataModule},
  uLoginUsuario in 'Source\Views\uLoginUsuario.pas' {LoginUsuario},
  uSobre in 'Source\Views\uSobre.pas' {Sobre},
  uPerfil in 'Source\Views\uPerfil.pas' {Perfil};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBanco, Banco);
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TCadastroUsuarios, CadastroUsuarios);
  Application.CreateForm(TLoginUsuario, LoginUsuario);
  Application.CreateForm(TSobre, Sobre);
  Application.CreateForm(TPerfil, Perfil);
  Application.Run;
end.
