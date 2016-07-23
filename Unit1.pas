unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    chk1: TCheckBox;
    chk2: TCheckBox;
    chk3: TCheckBox;
    chk4: TCheckBox;
    chk5: TCheckBox;
    chk6: TCheckBox;
    lbl1: TLabel;
    lbl2: TLabel;
    edt4: TEdit;
    cbb1: TComboBox;
    cbb2: TComboBox;
    edt5: TEdit;
    edt6: TEdit;
    chk7: TCheckBox;
    chk8: TCheckBox;
    chk9: TCheckBox;
    edt7: TEdit;
    chk10: TCheckBox;
    cbb3: TComboBox;
    btn1: TButton;
    lbl3: TLabel;
    lbl4: TLabel;
    btn2: TButton;
    chk11: TCheckBox;
    cbb4: TComboBox;
    chk12: TCheckBox;
    edt8: TEdit;
    procedure btn1Click(Sender: TObject);
    procedure chk1Click(Sender: TObject);
    procedure chk3Click(Sender: TObject);
    procedure chk4Click(Sender: TObject);
    procedure chk5Click(Sender: TObject);
    procedure chk6Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure chk11Click(Sender: TObject);
    procedure chk12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function memoupd(): string;
var
 filename, auth, login, password, mode, locstart, location, walkspeed, cp, step, init,
    debug, test, gmap,dist,iv: string;
begin
  filename:='pokecli.py ';
  if not(Form1.cbb3.text = 'SELECT MODE') then
  begin
    if Form1.cbb3.ItemIndex = 0 then
      auth := '-a ptc '
    else
      auth := '-a google ';
  end
  else
    auth := '';
  if not(Form1.edt2.text = '') then
  begin
    login := '-u ' + Form1.edt2.text + ' ';
  end
  else
    login := '';
  if not(Form1.edt3.text = '') then
  begin
    password := '-p ' + Form1.edt3.text + ' ';
  end
  else
    password := '';

  if Form1.chk1.Checked then
  begin
    location := '-l "' + Form1.edt4.text + '" ';
  end
  else
    location := '';
  if Form1.chk2.Checked then
  begin
    locstart := '-lc ';
  end
  else
    locstart := '';
  if Form1.chk3.Checked then
  begin
    if Form1.cbb1.ItemIndex = 0 then
      mode := '-m all '
    else if Form1.cbb1.ItemIndex = 1 then

      mode := '-m poke '
    else if Form1.cbb1.ItemIndex = 2 then
      mode := '-m farm ';
  end
  else
    mode := '';
  if Form1.chk4.Checked then
  begin
    walkspeed := '-w ' + Form1.cbb2.text + ' ';
  end
  else
    walkspeed := '';
  if Form1.chk5.Checked then
  begin
    cp := '-c ' + Form1.edt5.text + ' ';
  end
  else
    cp := '';
  if Form1.chk6.Checked then
  begin
    step := '--maxsteps ' + Form1.edt6.text + ' ';
  end
  else
    step := '';
  if Form1.chk7.Checked then
  begin
    init := '--initial-transfer ';
  end
  else
    init := '';
  if Form1.chk8.Checked then
  begin
    debug := '-d ';
  end
  else
    debug := '';
  if Form1.chk9.Checked then
  begin
    test := '-t ';
  end
  else
    test := '';
  if Form1.chk10.Checked then
  begin
    gmap := '-k "' + Form1.edt7.text + '" ';
  end
  else
    gmap := '';
    if Form1.chk11.Checked then
  begin
   if Form1.cbb1.ItemIndex = 0 then
      mode := '--distance_unit km '
    else if Form1.cbb1.ItemIndex = 1 then

      mode := '--distance_unit mi '
    else if Form1.cbb1.ItemIndex = 2 then
      dist := '--distance_unit ft ';

  end
  else
    dist := '';
    if Form1.chk12.Checked then
     begin
       iv:= '-iv '+Form1.edt8.text+' ';
     end else iv:='';
  Result :=filename +auth + login + password + mode + locstart + location + walkspeed +
    cp + step + init + debug + test + gmap+dist+iv;

end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  Form1.edt1.text :=memoupd;
end;

procedure TForm1.btn2Click(Sender: TObject);
var
Batfile:textfile;
begin
if not(edt2.text = '') then
  begin
Assignfile(Batfile, ExtractFilePath(Application.ExeName)+'\'+edt2.Text+'.bat');
Rewrite(Batfile);
Writeln(Batfile,'@echo on');
Writeln(Batfile,memoupd);
Closefile(Batfile);
  end;
end;

procedure TForm1.chk11Click(Sender: TObject);
begin
     if chk11.Checked then
    cbb4.Enabled := True
  else
  begin
    cbb4.Enabled := False;
  end;
end;

procedure TForm1.chk12Click(Sender: TObject);
begin
   if chk12.Checked then
    edt8.Enabled := True
  else
  begin
    edt8.Enabled := False;
  end;
end;

procedure TForm1.chk1Click(Sender: TObject);
begin
  if chk1.Checked then
    edt4.Enabled := True
  else
  begin
    edt4.Enabled := False;
  end;

end;

procedure TForm1.chk3Click(Sender: TObject);
begin
  if chk3.Checked then
    cbb1.Enabled := True
  else
  begin
    cbb1.Enabled := False;
  end;

end;

procedure TForm1.chk4Click(Sender: TObject);
begin
  if chk4.Checked then
    cbb2.Enabled := True
  else
  begin
    cbb2.Enabled := False;
  end;
end;

procedure TForm1.chk5Click(Sender: TObject);
begin
  if chk5.Checked then
    edt5.Enabled := True
  else
  begin
    edt5.Enabled := False;
  end;
end;

procedure TForm1.chk6Click(Sender: TObject);
begin
  if chk6.Checked then
    edt6.Enabled := True
  else
  begin
    edt6.Enabled := False;
  end;
end;

end.
