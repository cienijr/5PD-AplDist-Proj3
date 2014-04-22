unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UAluno, UCurso, UDisciplina, UProfessor, UTurma, UDiario, Vcl.Menus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Dirio1: TMenuItem;
    Sair1: TMenuItem;
    Aluno1: TMenuItem;
    Curso1: TMenuItem;
    Dirio2: TMenuItem;
    Disciplina1: TMenuItem;
    Professor1: TMenuItem;
    urma1: TMenuItem;
    procedure Aluno1Click(Sender: TObject);
    procedure Curso1Click(Sender: TObject);
    procedure Disciplina1Click(Sender: TObject);
    procedure Professor1Click(Sender: TObject);
    procedure Turma1Click(Sender: TObject);
    procedure Dirio2Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Aluno1Click(Sender: TObject);
begin
Application.CreateForm(TFrmAluno, frmAluno);
frmAluno.Show;
end;

procedure TfrmPrincipal.Curso1Click(Sender: TObject);
begin
Application.CreateForm(TfrmCurso, frmCurso);
frmCurso.show;
end;

procedure TfrmPrincipal.Dirio2Click(Sender: TObject);
begin
Application.CreateForm(TfrmDiarios, frmDiarios);
frmDiarios.show;
end;

procedure TfrmPrincipal.Disciplina1Click(Sender: TObject);
begin
 Application.CreateForm(TfrmDisciplina, frmDisciplina);
frmDisciplina.show;
end;

procedure TfrmPrincipal.Professor1Click(Sender: TObject);
begin
 Application.CreateForm(TfrmProfessor, frmProfessor);
frmProfessor.show;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
 frmPrincipal.Close;
end;

procedure TfrmPrincipal.Turma1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTurma, frmTurma);
frmTurma.show;
end;

end.
