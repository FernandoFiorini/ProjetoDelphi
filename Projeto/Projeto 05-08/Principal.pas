unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cargo1: TMenuItem;
    Cargo2: TMenuItem;
    Funcionrio1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Sobre1: TMenuItem;
    Image1: TImage;
    lblUsuario: TLabel;
    fafaefafas1: TMenuItem;
    btnProjeto: TSpeedButton;
    btnFuncionario: TSpeedButton;
    Painel: TPanel;
    procedure Sair1Click(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Cargo2Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFuncionarioClick(Sender: TObject);
    procedure btnProjetoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;


implementation

{$R *.dfm}

uses Sobre, Cargo, Funcionarios, Modulo, Projeto;

procedure TfrmPrincipal.btnProjetoClick(Sender: TObject);
begin
  frmProjeto := TfrmProjeto.create(self);
  frmProjeto.ShowModal;
end;

procedure TfrmPrincipal.Cargo2Click(Sender: TObject);
begin
  frmCargo := TfrmCargo.Create(self);
  frmCargo.ShowModal;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  lblUsuario.Caption := usuario;
end;

procedure TfrmPrincipal.Funcionrio1Click(Sender: TObject);
begin
  frmFuncionarios := TfrmFuncionarios.Create(self);
  frmFuncionarios.ShowModal;
end;



procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  frmPrincipal.Close;
end;

procedure TfrmPrincipal.Sobre1Click(Sender: TObject);
begin
  frmSobre := TfrmSobre.Create(self);
  frmSobre.ShowModal;
end;

procedure TfrmPrincipal.btnFuncionarioClick(Sender: TObject);
begin
   frmFuncionarios:=TfrmFuncionarios.Create(self);
   frmFuncionarios.ShowModal;
end;

end.
