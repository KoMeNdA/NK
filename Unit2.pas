unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    QueryDel: TQuery;
    Button4: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  flag : integer;
implementation

uses Unit10;
{$R *.dfm}
//Обработка нажатия на кнопку "Добавить"
procedure TForm2.Button1Click(Sender: TObject);
begin
flag:=1;
Form10.Edit1.text:='';
Form10.Edit2.Date:=Now;
Form10.Edit3.text:='';
Form10.Edit4.text:='';
Form10.Edit5.text:='';
Form10.Edit6.text:='';
Form10.EditN.text:='';
Form10.showmodal;
end;
//Обработка данных на кнопку "Изменить"
procedure TForm2.Button2Click(Sender: TObject);
begin
flag:=2;
Form10.Edit1.text:=Query1.FieldByName('fio').value;
Form10.Edit2.Date:=Query1.FieldByName('data_ro').value;
Form10.Edit3.text:=Query1.FieldByName('seriy_p').value;
Form10.Edit4.text:=Query1.FieldByName('nomer_p').value;
Form10.Edit5.text:=Query1.FieldByName('propiska').value;
Form10.Edit6.text:=Query1.FieldByName('sudimost').value;
Form10.EditN.text:=Query1.FieldByName('id').value;
Form10.EditN.Enabled:=false;
Form10.ShowModal;
end;
//Обработка нажатия на кнопку "Удалить"
procedure TForm2.Button3Click(Sender: TObject);
begin
 if MessageDlg ('Удалить дaнные о клиенте',mtConfirmation, [mbYes,mbNo],0)=mrYes then
   begin
     QueryDel.ParamByName('n').Value:=Query1.FieldByName('id').value;
     QueryDel.ExecSQL;
     Query1.Close;
     Query1.Open;
   end;
end;





procedure TForm2.Button4Click(Sender: TObject);
begin
close;
end;

end.
