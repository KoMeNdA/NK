unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls;

type
  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    EditN: TEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QueryUpd: TQuery;
    QueryIns: TQuery;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
  if (flag=1) then
  begin
    QueryIns.ParamByName('n').value:=EditN.Text;
    QueryIns.ParamByName('u').value:=Edit2.Text;
    QueryIns.ParamByName('st').value:=Edit1.Text;
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

procedure TForm11.Button2Click(Sender: TObject);
begin
EditN.Enabled:=true;
close;
end;

end.
