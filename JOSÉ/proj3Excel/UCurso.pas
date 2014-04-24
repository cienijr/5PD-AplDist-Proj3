unit UCurso;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Forms, Vcl.Dialogs, UDataModule, Controls, Vcl.StdCtrls;

type
  TfrmCurso = class(TForm)
    lblCodigo: TLabel;
    lblNome: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    btnIncluir: TButton;
    lbCursos: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    procedure atualizarLista;
  public
    { Public declarations }
  end;

var
  frmCurso: TfrmCurso;

implementation

{$R *.dfm}

procedure TfrmCurso.atualizarLista;
var
codigo, nome : String;
begin
  lbCursos.Clear;
  DM.ADOBD.SQL.Clear;
  DM.ADOBD.SQL.Add('Select * from DCurso order by codigo');
  DM.ADOBD.Open;
  While not(DM.ADOBD.Eof) do
  Begin
    codigo:=DM.ADOBD.FieldByName('codigo').AsString;
    nome:=DM.ADOBD.FieldByName('nome').AsString;
    lbCursos.Items.Add(codigo+' - '+nome);
    DM.ADOBD.Next;
  End;
end;

procedure TfrmCurso.btnIncluirClick(Sender: TObject);
begin
  DM.ADOBD.SQL.Clear;
  DM.ADOBD.SQL.Add('select * from DCurso where codigo='+quotedStr(edCodigo.Text));
  DM.ADOBD.Open;
  if not(DM.ADOBD.eof) then
   showMessage('Curso com tal c�digo j� existe')
  else
  begin
    DM.ADOBD.SQL.Clear;
    DM.ADOBD.SQL.Add('insert into DCurso values('+quotedStr(edCodigo.Text)+','+quotedStr(edNome.Text)+')');
    Dm.ADOBD.execSQL;
    showMessage('Curso inclu�do com sucesso');
    atualizarLista;
  end;
end;

procedure TfrmCurso.FormCreate(Sender: TObject);
begin
atualizarLista;
end;

end.
