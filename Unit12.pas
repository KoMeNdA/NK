unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, DB, DBTables;

type
  TForm12 = class(TForm)
    EditN: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Query1: TQuery;
    Query2: TQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    QueryIns: TQuery;
    QueryUpd: TQuery;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
  if (flag=1) then
  begin
    QueryIns.ParamByName('n').value:=EditN.Text;
    QueryIns.ParamByName('o').value:=Edit1.Text;
    QueryIns.ExecSQL;
    Form3.Query1.Close;
    Form3.Query1.Open;
    Close;
    end;
   if(flag=2) then
   begin
    QueryUpd.ParamByName('u').value:=Edit1.Text;
    QueryUpd.ParamByName('st').value:=Edit2.Text;
    QueryUpd.ParamByName('n').value:=Form3.Query1.FieldByName ('id').value;
    QueryUpd.ExecSQL;
    Form3.Query1.Close;
    Form3.Query1.Open;
    EditN.Enabled:=true;
    Close;
    end;
end;

end.
