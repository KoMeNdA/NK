unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, DB, DBTables, StdCtrls;

type
  TForm4 = class(TForm)
    DataSource1: TDataSource;
    Query1: TQuery;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    QueryDel: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  flag : integer;
implementation

uses Unit12;

{$R *.dfm}
//Обработка данных на кнопку "Добавить"
procedure TForm4.Button1Click(Sender: TObject);
begin
flag:=1;
Form12.Edit1.text:='';
Form12.DBLookupComboBox1.KeyValue:='';
Form12.DBLookupComboBox2.KeyValue:='';
Form12.EditN.text:='';
Form12.showmodal;
end;
//Обработка данных на кнопку "Изменить"
procedure TForm4.Button2Click(Sender: TObject);
begin
flag:=2;
Form12.Edit1.text:=Query1.FieldByName('opis').value;
Form12.DBLookupComboBox1.KeyValue:=Query1.FieldByName('id_s').value;
Form12.DBLookupComboBox2.KeyValue:=Query1.FieldByName('id_u').value;
Form12.EditN.text:=Query1.FieldByName('id').value;
Form12.EditN.Enabled:=false;
Form12.showmodal;
end;

//Обработка нажатия на кнопку "Удалить"
procedure TForm4.Button3Click(Sender: TObject);
begin
 if MessageDlg ('Удалить дaнные о клиенте',mtConfirmation, [mbYes,mbNo],0)=mrYes then
   begin
     QueryDel.ParamByName('n').Value:=Query1.FieldByName('id').value;
     QueryDel.ExecSQL;
     Query1.Close;
     Query1.Open;
   end;
   end;

procedure TForm4.Button4Click(Sender: TObject);
begin
close;
end;

end.
 