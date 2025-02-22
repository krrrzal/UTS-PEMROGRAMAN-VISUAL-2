unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label3: TLabel;
    Edit3: TEdit;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: string;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
ZQUERY1.Insert;
ZQUERY1['nama']:=Edit1.Text;
ZQUERY1['diskripsi']:=Edit2.Text;
ZQUERY1.Post;
//
Edit1.Text:='';
Edit2.Text:='';
Edit1.SetFocus;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
with ZQuery1 do
begin
ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('update satuan set nama="'+Edit1.Text+'" where id="'+a+'"');
ZQuery1.ExecSQL;

ZQuery1.SQL.Clear;
ZQuery1.SQL.Add('select * from satuan');
ZQuery1.Open;
end;
ShowMessage('Data Berhasil Diubah!');
end;

procedure TForm1.Button3Click(Sender: TObject);
var str:string;
begin
str:='Anda Yakin '+ZQUERY1.Fields[1].AsString+' Akan Dihapus?';
if (Application.MessageBox(Pchar(str), 'Peringatan',MB_YESNO) = IDYES) then
ZQUERY1.Delete
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
Edit1.SetFocus;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
Edit1.Text:= ZQuery1.Fields[1].AsString;
a:= ZQuery1.Fields[0].AsString;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  searchTerm: string;
begin
  searchTerm := Edit3.Text;

  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select * from satuan where nama like :searchTerm or diskripsi like :searchTerm');
  ZQuery1.Params.ParamByName('searchTerm').AsString := '%' + searchTerm + '%';
  ZQuery1.Open;
end;

end.
