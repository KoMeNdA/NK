unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, ComCtrls;

type
  TForm10 = class(TForm)
    QueryIns: TQuery;
    QueryUpd: TQuery;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    EditN: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit2: TDateTimePicker;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  
implementation

uses Unit2;



{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
  if (flag=1) then
  begin
    QueryIns.ParamByName('n').value:=EditN.Text;
    QueryIns.ParamByName('f').value:=Edit1.Text;
    QueryIns.ParamByName('r').value:=Edit2.Date;
    QueryIns.ParamByName('sp').value:=Edit3.Text;
    QueryIns.ParamByName('np').value:=Edit4.Text;
    QueryIns.ParamByName('p').value:=Edit5.Text;
    QueryIns.ParamByName('s').value:=Edit6.Text;
    QueryIns.ExecSQL;
    Form2.Query1.Close;
    Form2.Query1.Open;
    Close;
    end;
   if(flag=2) then
   begin
    QueryUpd.ParamByName('f').value:=Edit1.Text;
    QueryUpd.ParamByName('r').value:=Edit2.Date;
    QueryUpd.ParamByName('sp').value:=Edit3.Text;
    QueryUpd.ParamByName('np').value:=Edit4.Text;
    QueryUpd.ParamByName('p').value:=Edit5.Text;
    QueryUpd.ParamByName('s').value:=Edit6.Text;
    QueryUpd.ParamByName('n').value:=Form2.Query1.FieldByName ('id').value;
    QueryUpd.ExecSQL;
    Form2.Query1.Close;
    Form2.Query1.Open;
    EditN.Enabled:=true;
    Close;
    end;

end;

procedure TForm10.Button2Click(Sender: TObject);
begin
EditN.Enabled:=true;
close;
end;

end.
