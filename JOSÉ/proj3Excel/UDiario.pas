unit UDiario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrmDiario = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    lbDisciplinas: TListBox;
    cbTurma: TComboBox;
    cbAluno: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiario: TfrmDiario;

implementation

{$R *.dfm}

end.
