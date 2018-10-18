unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Edit4.Enabled:=False;
  Edit4.Color:=clBtnFace;
  Edit5.Enabled:=False;
  Edit5.Color:=clBtnFace;
  Edit6.Enabled:=False;
  Edit6.Color:=clBtnFace;
  RadioButton1.Checked:=True;
end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin

end;

procedure TForm1.RadioButton2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit2Change(Sender: TObject);
var
  sJmlh, sDisc, sBersih: String[30];
  harga, banyak, jumlah, disc, bersih: Single;
  kode: Integer;
begin
  val(Edit2.Text,harga,kode);
  val(Edit3.Text,banyak,kode);
  jumlah:=harga*banyak;
  if RadioButton1.Checked then disc:=0.1*jumlah else disc:=0;
  bersih:=jumlah-disc;
  str(jumlah:20:0, sJmlh);
  str(disc:20:0, sDisc);
  str(bersih:20:0, sBersih);
  Edit4.Text := sJmlh;
  Edit5.Text := sDisc;
  Edit6.Text := sBersih;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Edit3Change(Sender: TObject);
var
  sJmlh, sDisc, sBersih: String[30];
  harga, banyak, jumlah, disc, bersih: Single;
  kode: Integer;
begin
  val(Edit2.Text,harga,kode);
  val(Edit3.Text,banyak,kode);
  jumlah:=harga*banyak;
  if RadioButton1.Checked then disc:=0.1*jumlah else disc:=0;
  bersih:=jumlah-disc;
  str(jumlah:20:0, sJmlh);
  str(disc:20:0, sDisc);
  str(bersih:20:0, sBersih);
  Edit4.Text := sJmlh;
  Edit5.Text := sDisc;
  Edit6.Text := sBersih;
end;

end.

