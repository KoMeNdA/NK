unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, Grids, DBGrids;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    Query1: TQuery;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    QueryDel: TQuery;
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  flag : integer;
implementation

uses Unit11;

{$R *.dfm}



procedure TForm3.Button4Click(Sender: TObject);
begin
close;
end;

//Обработка нажатия на кнопку "Добавить"
procedure TForm3.Button1Click(Sender: TObject);
begin
flag:=1;
Form11.Edit1.text:='';
Form11.Edit2.text:='';
Form11.EditN.text:='';
Form11.showmodal;
end;
//Обработка данных на кнопку "Изменить"
procedure TForm3.Button2Click(Sender: TObject);
begin
flag:=2;
Form11.Edit1.text:=Query1.FieldByName('nazvanie').value;
Form11.Edit2.text:=Query1.FieldByName('stoimost').value;
Form11.EditN.text:=Query1.FieldByName('id').value;
Form11.EditN.Enabled:=false;
Form11.showmodal;
end;
//Обработка нажатия на кнопку "Удалить"
procedure TForm3.Button3Click(Sender: TObject);
begin
 if MessageDlg ('Удалить дaнные о клиенте',mtConfirmation, [mbYes,mbNo],0)=mrYes then
   begin
     QueryDel.ParamByName('n').Value:=Query1.FieldByName('id').value;
     QueryDel.ExecSQL;
     Query1.Close;
     Query1.Open;
   end;
end;

end.
 