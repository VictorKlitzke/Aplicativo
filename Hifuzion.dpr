program Hifuzion;

uses
  System.StartUpCopy,
  FMX.Forms,
  uCadastroUsuario in 'Source\Views\uCadastroUsuario.pas' {CadastroUsuarios},
  uPrincipal in 'Source\Views\uPrincipal.pas' {Principal},
  DM in 'Source\Services\DM.pas' {Banco: TDataModule},
  uLibMobile in 'Source\Controllers\uLibMobile.pas' {Banco: TDataModule},
  uLoginUsuario in 'Source\Views\uLoginUsuario.pas' {LoginUsuario},
  uSobre in 'Source\Views\uSobre.pas' {Sobre},
  uPerfil in 'Source\Views\uPerfil.pas' {Perfil},
  uAdicionarServicos in 'Source\Views\uAdicionarServicos.pas' {AdicionarServicos},
  uSeguranca in 'Source\Views\uSeguranca.pas' {Seguranca},
  uBuscaServicos in 'Source\Views\uBuscaServicos.pas' {BuscarServicos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBanco, Banco);
  Application.CreateForm(TPrincipal, Principal);
  Application.CreateForm(TCadastroUsuarios, CadastroUsuarios);
  Application.CreateForm(TLoginUsuario, LoginUsuario);
  Application.CreateForm(TSobre, Sobre);
  Application.CreateForm(TPerfil, Perfil);
  Application.CreateForm(TAdicionarServicos, AdicionarServicos);
  Application.CreateForm(TSeguranca, Seguranca);
  Application.CreateForm(TBuscarServicos, BuscarServicos);
  Application.Run;
end.
