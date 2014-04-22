unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UAluno, UCurso, UDisciplina, UProfessor,
  UTurma, Vcl.Menus, Vcl.ToolWin,
  Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, ComObj;

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
    procedure urma1Click(Sender: TObject);
    procedure Dirio1Click(Sender: TObject);
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
  frmCurso.Show;
end;

procedure TfrmPrincipal.Dirio1Click(Sender: TObject);
var
  vData, vExcel: Variant;
  I: Integer;
begin
  vExcel := CreateOLEObject('Excel.Application');
  vExcel.WorkBooks.Add;
  vExcel.Visible := true;

  // c�lulas congeladas
  vExcel.Range['C8'].Activate;
  vExcel.Application.ActiveWindow.FreezePanes := True;

  // c�lulas giradas
  vExcel.Range['C5:AX7'].Orientation := 90;

  // largura das colunas
  vExcel.Columns['A'].ColumnWidth := 5.86;
  vExcel.Columns['AY'].ColumnWidth := 5.86;
  vExcel.Columns['B'].ColumnWidth := 46.29;
  vExcel.Columns['C:AX'].ColumnWidth := 1.57;
  vExcel.Columns['AZ:BC'].ColumnWidth := 3.57;
  vExcel.Columns['BD:BD'].ColumnWidth := 4.71;
  vExcel.Columns['BE:BE'].ColumnWidth := 4.14;

  // textos est�ticos
  vData := vExcel.Range['K1'];
  vData.Font.Bold := True;
  vData.Value := 'Col�gio T�cnico de Campinas';

  vData := vExcel.Range['B5'];
  vData.Font.Bold := True;
  vData.Value := 'Aulas Previstas: ';

  vData := vExcel.Range['B6'];
  vData.Font.Bold := True;
  vData.Value := 'Aulas Dadas: ';

  vData := vExcel.Range['J3'];
  vData.Font.Bold := True;
  vData.Value := 'Curr�c:';

  vData := vExcel.Range['AA4'];
  vData.Font.Bold := True;
  vData.Value := 'Professor:';

  vData := vExcel.Range['AM3'];
  vData.Font.Bold := True;
  vData.Value := 'Per:';

  // mesclagem de c�lulas
  vExcel.Range['C6', 'C7'].MergeCells := True;
  vExcel.Range['D6', 'D7'].MergeCells := True;
  vExcel.Range['E6', 'E7'].MergeCells := True;
  vExcel.Range['F6', 'F7'].MergeCells := True;
  vExcel.Range['G6', 'G7'].MergeCells := True;
  vExcel.Range['H6', 'H7'].MergeCells := True;
  vExcel.Range['I6', 'I7'].MergeCells := True;
  vExcel.Range['J6', 'J7'].MergeCells := True;
  vExcel.Range['K6', 'K7'].MergeCells := True;
  vExcel.Range['L6', 'L7'].MergeCells := True;
  vExcel.Range['M6', 'M7'].MergeCells := True;
  vExcel.Range['N6', 'N7'].MergeCells := True;
  vExcel.Range['O6', 'O7'].MergeCells := True;
  vExcel.Range['P6', 'P7'].MergeCells := True;
  vExcel.Range['Q6', 'Q7'].MergeCells := True;
  vExcel.Range['R6', 'R7'].MergeCells := True;
  vExcel.Range['S6', 'S7'].MergeCells := True;
  vExcel.Range['T6', 'T7'].MergeCells := True;
  vExcel.Range['U6', 'U7'].MergeCells := True;
  vExcel.Range['V6', 'V7'].MergeCells := True;
  vExcel.Range['W6', 'W7'].MergeCells := True;
  vExcel.Range['X6', 'X7'].MergeCells := True;
  vExcel.Range['Y6', 'Y7'].MergeCells := True;
  vExcel.Range['Z6', 'Z7'].MergeCells := True;
  vExcel.Range['AA6', 'AA7'].MergeCells := True;
  vExcel.Range['AB6', 'AB7'].MergeCells := True;
  vExcel.Range['AC6', 'AC7'].MergeCells := True;
  vExcel.Range['AD6', 'AD7'].MergeCells := True;
  vExcel.Range['AE6', 'AE7'].MergeCells := True;
  vExcel.Range['AF6', 'AF7'].MergeCells := True;
  vExcel.Range['AG6', 'AG7'].MergeCells := True;
  vExcel.Range['AH6', 'AH7'].MergeCells := True;
  vExcel.Range['AI6', 'AI7'].MergeCells := True;
  vExcel.Range['AJ6', 'AJ7'].MergeCells := True;
  vExcel.Range['AK6', 'AK7'].MergeCells := True;
  vExcel.Range['AL6', 'AL7'].MergeCells := True;
  vExcel.Range['AM6', 'AM7'].MergeCells := True;
  vExcel.Range['AN6', 'AN7'].MergeCells := True;
  vExcel.Range['AO6', 'AO7'].MergeCells := True;
  vExcel.Range['AP6', 'AP7'].MergeCells := True;
  vExcel.Range['AQ6', 'AQ7'].MergeCells := True;
  vExcel.Range['AR6', 'AR7'].MergeCells := True;
  vExcel.Range['AS6', 'AS7'].MergeCells := True;
  vExcel.Range['AT6', 'AT7'].MergeCells := True;
  vExcel.Range['AU6', 'AU7'].MergeCells := True;
  vExcel.Range['AV6', 'AV7'].MergeCells := True;
  vExcel.Range['AW6', 'AW7'].MergeCells := True;
  vExcel.Range['AX6', 'AX7'].MergeCells := True;
  vExcel.Range['AY6', 'AY7'].MergeCells := True;
  vExcel.Range['AZ6', 'AZ7'].MergeCells := True;
  vExcel.Range['BA6', 'BA7'].MergeCells := True;
  vExcel.Range['BB6', 'BB7'].MergeCells := True;
  vExcel.Range['BC6', 'BC7'].MergeCells := True;
  vExcel.Range['BD6', 'BD7'].MergeCells := True;
  vExcel.Range['BE6', 'BE7'].MergeCells := True;

  vExcel.Range['AZ5:BC5'].MergeCells := True;
  vData := vExcel.Range['AZ5'];
  vData.Value := 'Avalia��es';
  vData.Font.Bold := True;
  vData.Cells.HorizontalAlignment := 3;

  vData := vExcel.Range['AY6'];
  vData.Value := 'RA';
  vData.Font.Bold := True;
  vData.Cells.HorizontalAlignment := 3;

  for I := 1 to 48 do begin
    vExcel.Cells[5, I+2].Value := I;   // linha, coluna
  end;


  { vData := varArrayOf(['cotuca', 'ter�a-feira', 'At� Breve', 'Soma']);
    vExcel.Range['A2:D2'].value := vData;
    vExcel.Range['D2'].Font.Color := clRed;

    vData := varArrayOf(['10', '20', '30', '=sum(A3:C3)']);
    vExcel.Range['A3:d3'].value := vData; }

  vExcel.Quit;
end;

procedure TfrmPrincipal.Disciplina1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmDisciplina, frmDisciplina);
  frmDisciplina.Show;
end;

procedure TfrmPrincipal.Professor1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmProfessor, frmProfessor);
  frmProfessor.Show;
end;

procedure TfrmPrincipal.urma1Click(Sender: TObject);
begin
  Application.CreateForm(TfrmTurma, frmTurma);
  frmTurma.Show;
end;

end.
