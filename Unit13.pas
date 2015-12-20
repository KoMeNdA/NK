unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, DBCtrls, DB, DBTables;

type
  TForm13 = class(TForm)
    EditN: TEdit;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Query1: TQuery;
    Query2: TQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    QueryIns: TQuery;
    QueryUpd: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
  if (flag=1) then
  begin
    QueryIns.ParamByName('id').value:=StrToInt(EditN.Text);
    QueryIns.ParamByName('id_c').value:=Query1.FieldByName('id').value;
    QueryIns.ParamByName('id_u').value:=Query2.FieldByName('id').value;
    QueryIns.ParamByName('nom').value:=StrToInt(Edit1.Text);
    QueryIns.ParamByName('data').value:=DateTimePicker1.Date;
    QueryIns.ExecSQL;
    Form5.Query2.Close;
    Form5.Query2.Open;
    Close;
    end;
  if(flag=2) then
  begin
    QueryUpd.ParamByName('id').value:=Form5.Query2.FieldByName ('id').value;
    QueryUpd.ParamByName('id_c').value:=Query1.FieldByName('id').value;
    QueryUpd.ParamByName('id_u').value:=Query2.FieldByName('id').value;
    QueryUpd.ParamByName('nom').value:=StrToInt(Edit1.Text);
    QueryUpd.ParamByName('data').value:=DateTimePicker1.Date;
    QueryUpd.ExecSQL;
    Form5.Query2.Close;
    Form5.Query2.Open;
    Close;
    end;

end;
procedure TForm13.Button2Click(Sender: TObject);
begin
 close;
end;

end.
