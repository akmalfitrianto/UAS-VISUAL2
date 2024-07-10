unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    e1: TEdit;
    e2: TEdit;
    e3: TEdit;
    e4: TEdit;
    e5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    DBGrid1: TDBGrid;
    Edit5: TEdit;
    Button6: TButton;
    cbMember: TComboBox;
    lblDiskon: TLabel;
    Button1: TButton;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure posisiawal;
    procedure FormShow(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure cbMemberChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Diskon: Double;
  a: string;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
e1.Enabled:=True;
e2.Enabled:=True;
e3.Enabled:=True;
e4.Enabled:=True;
e5.Enabled:=True;
btn1.Enabled:=False;
btn2.Enabled:=True;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=True;
end;

procedure TForm1.bersih;
begin
e1.Clear;
e2.Clear;
e3.Clear;
e4.Clear;
e5.Clear;
end;

procedure TForm1.posisiawal;
begin
bersih;
btn1.Enabled:=True;
btn2.Enabled:=False;
btn3.Enabled:=False;
btn4.Enabled:=False;
btn5.Enabled:=False;
e1.Enabled:=False;
e2.Enabled:=False;
e3.Enabled:=False;
e4.Enabled:=False;
e5.Enabled:=False;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
bersih;
posisiawal;
end;

procedure TForm1.cbMemberChange(Sender: TObject);
begin
if cbMember.Text = 'iya' then
  Diskon := 10.0
else if cbMember.Text = 'tidak' then
  Diskon := 5.0
else
  Diskon := 0.0;

lblDiskon.Caption := 'DISKON : ' + FloatToStr(Diskon) + '%';
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('insert into kustomer(nik, nama, telp, email, alamat, member) values (:nik, :nama, :telp, :email, :alamat, :member)');
DataModule2.ZQuery1.Params.ParamByName('nik').AsInteger :=StrToInt(e1.Text);
DataModule2.ZQuery1.Params.ParamByName('nama').AsString := e2.Text;
DataModule2.ZQuery1.Params.ParamByName('telp').AsString := e3.Text;
DataModule2.ZQuery1.Params.ParamByName('email').AsString := e4.Text;
DataModule2.ZQuery1.Params.ParamByName('alamat').AsString := e5.Text;
DataModule2.ZQuery1.Params.ParamByName('member').AsString := cbMember.Text;
DataModule2.ZQuery1.ExecSQL;

DataModule2.ZQuery1.SQL.Clear;
DataModule2.ZQuery1.SQL.Add('select * from kustomer');
DataModule2.ZQuery1.Open;

ShowMessage('Data Berhasil disimpan');
posisiawal;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
e1.Text:= DataModule2.ZQuery1.Fields[1].AsString;
e2.Text:= DataModule2.ZQuery1.Fields[2].AsString;
e3.Text:= DataModule2.ZQuery1.Fields[3].AsString;
e4.Text:= DataModule2.ZQuery1.Fields[4].AsString;
e5.Text:= DataModule2.ZQuery1.Fields[5].AsString;
a:= DataModule2.ZQuery1.Fields[0].AsString;

e1.Enabled:=True;
e2.Enabled:=True;
e3.Enabled:=True;
e4.Enabled:=True;
e5.Enabled:=True;
btn1.Enabled:=False;
btn2.Enabled:=False;
btn3.Enabled:=True;
btn4.Enabled:=True;
btn5.Enabled:=True;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
with DataModule2.ZQuery1 do
  begin
  SQL.Clear;
  SQL.Add('update kustomer set nik="'+e1.Text+'", nama="'+e2.Text+'", telp="'+e3.Text+'", email="'+e4.Text+'", alamat="'+e5.Text+'", member="'+cbMember.Text+'" where id="'+a+'"');
  ExecSQL;

  SQL.Clear;
  SQL.Add('select * from kustomer');
  Open;
  end;
ShowMessage('Data berhasil diubah');
posisiawal;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
with DataModule2.ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('delete from kustomer where id="'+a+'"');
    ExecSQL;

    SQL.Clear;
    SQL.Add('select * from kustomer');
    Open;
  end;
  ShowMessage('data berhasil dihapus');
posisiawal;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
with DataModule2.ZQuery1 do
  begin
  SQL.Clear;
  SQL.Add('select * from kustomer where nama like "%'+Edit5.Text+'%"');
  Open;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
DataModule2.frxReport1.ShowReport()
end;

end.
