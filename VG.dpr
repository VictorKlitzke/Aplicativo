program VG;

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
  uBuscarServicos in 'Source\Views\uBuscarServicos.pas' {BuscarServicos},
  uHelpers in 'Source\Helpers\uHelpers.pas',
  uBotaoLogar in 'Source\Views\uBotaoLogar.pas' {BotaoLogar},
  uSeguranca in 'Source\Views\uSeguranca.pas' {Seguranca};

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
  Application.CreateForm(TBotaoLogar, BotaoLogar);
  Application.CreateForm(TSeguranca, Seguranca);
  Application.Run;
end.
