unit UDiario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uDataModule;

type
TNumero = class
  public
    numero: string;
    constructor criar(num: string);

  end;

  TfrmDiarios = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    lbDiarios : TListBox;
    Button1: TButton;
    cbTurma: TComboBox;
    cbAluno: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    procedure atualizarLista;
    procedure atualizarComponentes;
    function pegarNomeAluno(ra : String) : String;
    function pegarNomeBD(tabela, codigo: String): String;
  public
    { Public declarations }
  end;

var
  frmDiarios: TfrmDiarios;

implementation

{$R *.dfm}

constructor TNumero.criar(num: String);
begin
  numero := num;
end;

procedure TfrmDiarios.FormCreate(Sender: TObject);
begin
 atualizarComponentes;
 atualizarLista;
 cbTurma.ItemIndex := 0;
 cbAluno.ItemIndex := 0;
end;

procedure TfrmDiarios.atualizarLista;
var
 codTurma, ra : String;
begin
  lbDiarios.Items.Clear;
  DM.ADOBD.SQL.Clear;
  DM.ADOBD.SQL.Add('Select * from DDiario order by codigoTurma');
  DM.ADOBD.Open;
  While not(DM.ADOBD.Eof) do
  Begin
    codTurma := DM.ADOBD.FieldByName('codigoTurma').AsString;
    ra       := DM.ADOBD.FieldByName('ra').AsString;
    lbDiarios.Items.Add('Turma '+codTurma+' - '+pegarNomeAluno(ra));
    DM.ADOBD.Next;
  End;
end;


procedure TfrmDiarios.Button1Click(Sender: TObject);
var
 codTurma, ra : String;
begin
  codTurma := (cbTurma.Items.Objects[cbTurma.ItemIndex] as TNumero).numero;
  ra       := (cbAluno.Items.Objects[cbAluno.ItemIndex] as TNumero).numero;
  DM.ADOBD.SQL.Clear;
  DM.ADOBD.SQL.Add('insert into DDiario values('+quotedStr(codTurma)+','+quotedStr(ra)+')');
  DM.ADOBD.execSQL;
  showMessage('Di�rio inclu�do com sucesso');
  atualizarLista;
end;

procedure TfrmDiarios.atualizarComponentes;
var
 tudo, curso, periodo, turma, disciplina, professor : String;
 ra, nome, tudoAluno : String;
begin
  cbTurma.Items.Clear;           //atualiza o combobox da turma primeiro
  DM.ADOBD.SQL.Clear;
  DM.ADOBD.SQL.Add('Select * from DTurma order by codigoTurma');
  DM.ADOBD.Open;
  While not(DM.ADOBD.Eof) do
  Begin
    tudo := '';
    turma := DM.ADOBD.FieldByName('codigoTurma').AsString;
    periodo := DM.ADOBD.FieldByName('periodo').AsString;
    curso := DM.ADOBD.FieldByName('codigoCurso').AsString;
    curso := pegarNomeBD('DCurso', curso);
    disciplina := DM.ADOBD.FieldByName('codigoDisciplina').AsString;
    disciplina := pegarNomeBD('DDisciplina', disciplina);

    tudo := 'Turma ' + turma + ' -Curso ' + curso + ' -Disciplina ' + disciplina + ' -Periodo ' + periodo;
    cbTurma.Items.AddObject(tudo, TNumero.criar(turma));
    DM.ADOBD.Next;
  End;
  //comboBox de turma atualizado


  cbALuno.Items.Clear;
  DM.ADOBD.SQL.Clear;       //atualizando comboBox de alunos
  DM.ADOBD.SQL.Add('Select * from DAluno order by ra');
  DM.ADOBD.Open;
  While not(DM.ADOBD.Eof) do
  Begin
    ra        := DM.ADOBD.FieldByName('ra').AsString;
    nome      := DM.ADOBD.FieldByName('nome').AsString;
    tudoAluno := ra+' - '+nome;
    cbAluno.Items.AddObject(tudoAluno,TNumero.criar(ra));
    DM.ADOBD.Next;
  End;

end;


function TfrmDiarios.pegarNomeAluno(ra: string) : String;
begin
   DM.ADOAux.SQL.Clear;
   DM.ADOAux.SQL.Add('select nome from DAluno where ra='+quotedStr(ra));
   DM.ADOAux.Open;
   if not(DM.ADOAux.Eof) then
   Begin
    result := DM.ADOAux.FieldByName('nome').AsString;
   End
   else
    result := '';
end;

function TfrmDiarios.pegarNomeBD(tabela, codigo: String): String;
begin
  DM.ADOAux.SQL.Clear;
  DM.ADOAux.SQL.Add('Select * from ' + tabela + ' where codigo=' +
    quotedStr(codigo));
  DM.ADOAux.Open;
  while not(DM.ADOAux.Eof) do
  Begin
    result := DM.ADOAux.FieldByName('nome').AsString;
    DM.ADOAux.Next;
  End;

end;

end.
