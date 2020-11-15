unit KondisiBadan;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls,
  Vcl.ComCtrls, Math, Vcl.Grids;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox1: TGroupBox;
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Series10: TLineSeries;
    Chart2: TChart;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series11: TLineSeries;
    GroupBox2: TGroupBox;
    Chart3: TChart;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    Button1: TButton;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    Button2: TButton;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    StaticText7: TStaticText;
    GroupBox5: TGroupBox;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    TabSheet3: TTabSheet;
    GroupBox6: TGroupBox;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    StaticText17: TStaticText;
    StaticText18: TStaticText;
    StaticText19: TStaticText;
    StaticText20: TStaticText;
    StaticText21: TStaticText;
    StaticText22: TStaticText;
    StaticText23: TStaticText;
    StaticText24: TStaticText;
    StaticText25: TStaticText;
    GroupBox7: TGroupBox;
    StaticText26: TStaticText;
    StaticText27: TStaticText;
    StaticText28: TStaticText;
    StaticText29: TStaticText;
    StaticText30: TStaticText;
    StaticText31: TStaticText;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    Edit31: TEdit;
    Edit32: TEdit;
    Edit33: TEdit;
    Edit34: TEdit;
    Edit35: TEdit;
    StaticText32: TStaticText;
    StaticText33: TStaticText;
    StaticText34: TStaticText;
    StaticText35: TStaticText;
    StaticText36: TStaticText;
    StaticText37: TStaticText;
    StaticText38: TStaticText;
    StaticText39: TStaticText;
    StaticText40: TStaticText;
    GroupBox8: TGroupBox;
    StaticText41: TStaticText;
    StaticText42: TStaticText;
    StaticText43: TStaticText;
    Edit36: TEdit;
    Edit37: TEdit;
    Edit38: TEdit;
    GroupBox9: TGroupBox;
    Chart4: TChart;
    Series12: TAreaSeries;
    Series13: TAreaSeries;
    Series14: TAreaSeries;
    Chart5: TChart;
    Series15: TAreaSeries;
    Series16: TAreaSeries;
    Series17: TAreaSeries;
    Edit40: TEdit;
    TabSheet4: TTabSheet;
    Chart6: TChart;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Edit42: TEdit;
    Edit43: TEdit;
    Edit44: TEdit;
    Edit45: TEdit;
    Edit46: TEdit;
    Edit47: TEdit;
    StaticText46: TStaticText;
    StaticText47: TStaticText;
    StaticText48: TStaticText;
    StaticText49: TStaticText;
    StaticText50: TStaticText;
    StaticText51: TStaticText;
    Series21: TLineSeries;
    TabSheet5: TTabSheet;
    StringGrid1: TStringGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fuzzifikasi;
    procedure fis;
    procedure defuzzifikasi;
    procedure Button2Click(Sender: TObject);
    //procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  y: extended;
  TB,BB: extended;
  MyuR,MyuS,MyuB,MyuP,MyuSs,MyuT: extended;
  a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r: extended;
  TIdeal,CIdeal,Ideal,xx,x1,x2,tr,scTI,scCI,scI,MyuTI,MyuCI,MyuI,z: extended;
  KB,TI,CI,Id: extended;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
  x: Integer;
begin
  //GRAFIK BERAT BADAN
  for x := 0 to 70 do
    begin
      if (x>=0) and (x<=40) then y:=1;
      if (x>=40) and (x<=70) then y:=1-((x-40)/30);
      if (x>70) and (x<0) then y:=0;
      series1.AddXY(x,y);
    end;

  for x := 40 to 100 do
    begin
      if (x>=40) and (x<=70) then y:=(x-40)/30;
      if (x>=70) and (x<=100) then y:=1-((x-70)/30);
      if (x<40) and (x>100) then y:=0;
      series2.AddXY(x,y);
    end;

  for x := 70 to 140 do
    begin
      if (x>=70) and (x<=100) then y:=(x-70)/30;
      if (x>=100) and (x<=140) then y:=1;
      if (x>=140) and (x<=70) then y:=0;
      series3.AddXY(x,y);
    end;

    //GRAFIK TINGGI BADAN
  for x := 0 to 160 do
    begin
      if (x>=0) and (x<=140) then y:=1;
      if (x>=140) and (x<=160) then y:=1-((x-140)/20);
      if (x>160) and (x<0) then y:=0;
      series4.AddXY(x,y);
    end;

  for x := 140 to 175 do
    begin
      if (x>=140) and (x<=160) then y:=(x-140)/20;
      if (x>=160) and (x<=175) then y:=1-((x-160)/15);
      if (x<140) and (x>175) then y:=0;
      series5.AddXY(x,y);
    end;

  for x := 160 to 315 do
    begin
      if (x>=160) and (x<=175) then y:=(x-160)/15;
      if (x>=175) and (x<=315) then y:=1;
      if (x>=175) and (x<=160) then y:=0;
      series6.AddXY(x,y);
    end;

    //GRAFIK KONDISI BADAN
  for x := 0 to 25 do
    begin
      y:=4*x/100;
      series7.AddXY(x/100,y);
    end;
  for x := 25 to 50 do
    begin
      y:=2-(4*x/100);
      series7.AddXY(x/100,y);
    end;
  for x := 25 to 50 do
    begin
      y:=(4*x/100)-1;
      series8.AddXY(x/100,y);
    end;
  for x := 50 to 75 do
    begin
      y:=3-(4*x/100);
      series8.AddXY(x/100,y);
    end;
  for x := 50 to 75 do
    begin
      y:=(4*x/100)-2;
      series9.AddXY(x/100,y);
    end;
  for x := 75 to 100 do
    begin
      y:=4-(4*x/100);
      series9.AddXY(x/100,y);
    end;

    //RULE BASE
    stringgrid1.Cells[1,0]:='LIGHT';
    stringgrid1.Cells[2,0]:='MEDIUM';
    stringgrid1.Cells[3,0]:='HEAVY';

    stringgrid1.Cells[0,1]:='SHORT';
    stringgrid1.Cells[0,2]:='MEDIUM';
    stringgrid1.Cells[0,3]:='TALL';

    stringgrid1.Cells[1,1]:='IDEAL (I)';
    stringgrid1.Cells[1,2]:='IDEAL ENOUGH (Cukup Ideal - CI)';
    stringgrid1.Cells[1,3]:='NOT IDEAL (Tidak Ideal - TI)';

    stringgrid1.Cells[2,1]:='NOT IDEAL (Tidak Ideal - TI)';
    stringgrid1.Cells[2,2]:='IDEAL (I)';
    stringgrid1.Cells[2,3]:='IDEAL ENOUGH (Cukup Ideal - CI)';

    stringgrid1.Cells[3,1]:='NOT IDEAL (Tidak Ideal - TI)';
    stringgrid1.Cells[3,2]:='IDEAL ENOUGH (Cukup Ideal - CI)';
    stringgrid1.Cells[3,3]:='IDEAL (I)';
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
begin

  TB:=strtofloat(edit1.Text);
  BB:=strtofloat(edit2.Text);
  for i := 0 to 2 do
    begin
      series10.AddXY(BB,i);
      series11.AddXY(TB,i);
    end;

  fuzzifikasi;
  fis;
  defuzzifikasi;
end;

procedure TForm1.fuzzifikasi;
begin
  edit3.Clear; edit4.Clear; edit5.Clear; edit6.Clear; edit7.Clear; edit8.Clear;
  //BERAT BADAN
  if (BB>=0) and (BB<=40) then MyuR:=1
  else if (BB>=40) and (BB<=70) then MyuR:=1-((BB-40)/30)
  else if (BB>70) and (BB<0) then MyuR:=0;
  edit3.Text:=floattostr(roundto (MyuR,-3));

  if (BB>=40) and (BB<=70) then MyuS:=(BB-40)/30
  else if (BB>=70) and (BB<=100) then MyuS:=1-((BB-70)/30)
  else if (BB<40) and (BB>100) then MyuS:=0;
  edit4.Text:=floattostr(roundto (MyuS,-3));

  if (BB>=70) and (BB<=100) then MyuB:=(BB-70)/30
  else if (BB>=100) and (BB<=140) then MyuB:=1
  else if (BB>=140) and (BB<=70) then MyuB:=0;
  edit5.Text:=floattostr(roundto (MyuB,-3));


  //TINGGI BADAN
  if (TB>=0) and (TB<=140) then MyuP:=1
  else if (TB>=140) and (TB<=160) then MyuP:=1-((TB-140)/20)
  else if (TB>160) and (TB<0) then MyuP:=0;
  edit6.Text:=floattostr(roundto (MyuP,-3));

  if (TB>=140) and (TB<=160) then MyuSs:=(TB-140)/20
  else if (TB>=160) and (TB<=175) then MyuSs:=1-((TB-160)/15)
  else if (TB<140) and (TB>175) then MyuSs:=0;
  edit7.Text:=floattostr(roundto (MyuSs,-3));

  if (TB>=160) and (TB<=175) then MyuT:=(TB-160)/15
  else if (TB>=175) and (TB<=315) then MyuT:=1
  else if (TB>=175) and (TB<=160) then MyuT:=0;
  edit8.Text:=floattostr(roundto (MyuT,-3));

end;

procedure TForm1.fis;
var xx: integer;
begin
  //RULE BASE
  edit9.Text:=floattostr(roundto (MyuP,-3)); edit10.Text:=floattostr(roundto (MyuSs,-3)); edit11.Text:=floattostr(roundto (MyuT,-3));
  edit18.Text:=floattostr(roundto (MyuR,-3)); edit21.Text:=floattostr(roundto (MyuR,-3)); edit24.Text:=floattostr(roundto (MyuR,-3));

  edit12.Text:=floattostr(roundto (MyuP,-3)); edit13.Text:=floattostr(roundto (MyuSs,-3)); edit14.Text:=floattostr(roundto (MyuT,-3));
  edit19.Text:=floattostr(roundto (MyuS,-3)); edit22.Text:=floattostr(roundto (MyuS,-3)); edit25.Text:=floattostr(roundto (MyuS,-3));

  edit15.Text:=floattostr(roundto (MyuP,-3)); edit16.Text:=floattostr(roundto (MyuSs,-3)); edit17.Text:=floattostr(roundto (MyuT,-3));
  edit20.Text:=floattostr(roundto (MyuB,-3)); edit23.Text:=floattostr(roundto (MyuB,-3)); edit26.Text:=floattostr(roundto (MyuB,-3));

  //MIN OPERATION
  a:=strtofloat(edit9.Text);
  b:=strtofloat(edit18.Text);
  c:=strtofloat(edit12.Text);
  d:=strtofloat(edit19.Text);
  e:=strtofloat(edit15.Text);
  f:=strtofloat(edit20.Text);
  g:=strtofloat(edit10.Text);
  h:=strtofloat(edit21.Text);
  i:=strtofloat(edit13.Text);
  j:=strtofloat(edit22.Text);
  k:=strtofloat(edit16.Text);
  l:=strtofloat(edit23.Text);
  m:=strtofloat(edit11.Text);
  n:=strtofloat(edit24.Text);
  o:=strtofloat(edit14.Text);
  p:=strtofloat(edit25.Text);
  q:=strtofloat(edit17.Text);
  r:=strtofloat(edit26.Text);

  if a<b then edit27.Text:=floattostr(a) else if a>b then edit27.Text:=floattostr(b);
  if c<d then edit28.Text:=floattostr(c) else if c>d then edit28.Text:=floattostr(d);
  if e<f then edit29.Text:=floattostr(e) else if e>f then edit29.Text:=floattostr(f);

  if g<h then edit30.Text:=floattostr(g) else if g>h then edit30.Text:=floattostr(h);
  if i<j then edit31.Text:=floattostr(i) else if i>j then edit31.Text:=floattostr(j);
  if k<l then edit32.Text:=floattostr(k) else if k>l then edit32.Text:=floattostr(l);

  if m<n then edit33.Text:=floattostr(m) else if m>n then edit33.Text:=floattostr(n);
  if o<p then edit34.Text:=floattostr(o) else if o>p then edit34.Text:=floattostr(p);
  if q<r then edit35.Text:=floattostr(q) else if q>r then edit35.Text:=floattostr(r);

  //MAX OPERATION
  //tidak ideal
  if edit33.Text>edit29.text then edit36.Text:=edit33.Text
  else if edit33.Text<edit29.text then edit36.Text:=edit29.Text;
  //tidak ideal
  if (edit28.Text > edit30.text) and (edit28.Text > edit32.text) and (edit28.Text > edit34.text) then edit37.Text:=edit28.Text
  else if (edit30.Text > edit28.text) and (edit30.Text > edit32.text) and (edit30.Text > edit34.text) then edit37.Text:=edit30.Text
  else if (edit32.Text > edit28.text) and (edit32.Text > edit30.text) and (edit32.Text > edit34.text) then edit37.Text:=edit32.Text
  else if (edit34.Text > edit28.text) and (edit34.Text > edit30.text) and (edit34.Text > edit32.text) then edit37.Text:=edit34.Text;
  //ideal
  if (edit27.Text > edit31.text) and (edit27.Text > edit35.Text) then edit38.Text:=edit27.Text
  else if (edit31.Text > edit27.text) and (edit31.Text > edit35.Text) then edit38.Text:=edit31.Text
  else if (edit35.Text > edit27.text) and (edit35.Text > edit31.Text) then edit38.Text:=edit35.Text;

  //COG
  TIdeal:=(strtofloat(edit36.Text));
  CIdeal:=(strtofloat(edit37.Text));
  Ideal:=(strtofloat(edit38.Text));
  //truncate
  for xx := 0 to 25 do
    begin
      x1:=TIdeal*0.25;
      tr:=4*xx/100;
      if (x1<=xx/100) then tr:=TIdeal;
      series12.AddXY(xx/100,tr);
    end;
  for xx := 25 to 50 do
    begin
      x2:=0.5-(0.25*TIdeal);
      tr:=2-(4*xx/100);
      if (xx/100<=x2) then tr:=TIdeal;
      series12.AddXY(xx/100,tr);
    end;
  for xx := 25 to 50 do
    begin
      x1:=(0.25*CIdeal)+0.25;
      tr:=(4*xx/100)-1;
      if (x1<=xx/100) then tr:=CIdeal;
      series13.AddXY(xx/100,tr);
    end;
  for xx := 50 to 75 do
    begin
      x2:=0.75-(0.25*CIdeal);
      tr:=3-(4*xx/100);
      if (xx/100<=x2) then tr:=CIdeal;
      series13.AddXY(xx/100,tr);
    end;
  for xx := 50 to 75 do
    begin
      x1:=(0.25*Ideal)+0.5;
      tr:=(4*xx/100)-2;
      if (x1<=xx/100) then tr:=Ideal;
      series14.AddXY(xx/100,tr);
    end;
  for xx := 75 to 100 do
    begin
      x2:=1-(0.25*Ideal);
      tr:=4-(4*xx/100);
      if (xx/100<=x2) then tr:=Ideal;
      series14.AddXY(xx/100,tr);
    end;

  //scale
  for xx := 0 to 25 do
    begin
      scTI:=(4*xx*TIdeal)/100;
      series15.AddXY(xx/100,scTI);
    end;
  for xx := 25 to 50 do
    begin
      scTI:=(2*Tideal)-((4*xx*Tideal)/100);
      series15.AddXY(xx/100,scTI);
    end;
  for xx := 25 to 50 do
    begin
      scCI:=((4*xx*CIdeal)/100)-(1*CIdeal);
      series16.AddXY(xx/100,scCI);
    end;
  for xx := 50 to 75 do
    begin
      scCI:=(3*CIdeal)-((4*xx*CIdeal)/100);
      series16.AddXY(xx/100,scCI);
    end;
  for xx := 50 to 75 do
    begin
      scI:=((4*xx*Ideal)/100)-(2*Ideal);
      series17.AddXY(xx/100,scI);
    end;
  for xx := 75 to 100 do
    begin
      scI:=(4*Ideal)-((4*xx*Ideal)/100);
      series17.AddXY(xx/100,scI);
    end;

   //penghitungan COG
   z:=((0.25*TIdeal)+(0.5*CIdeal)+(0.75*Ideal))/(TIdeal+CIdeal+Ideal);
   edit40.Text:=floattostr(roundto (z,-3));
end;

procedure TForm1.defuzzifikasi;
var x,i: integer;
begin
  KB:=strtofloat(edit40.Text);
    for i := 0 to 2 do
    begin
      series21.AddXY(KB,i);
    end;

  //GRAFIK KONDISI BADAN
  for x := 0 to 25 do
    begin
      y:=4*x/100;
      series18.AddXY(x/100,y);
    end;
  for x := 25 to 50 do
    begin
      y:=2-(4*x/100);
      series18.AddXY(x/100,y);
    end;
  for x := 25 to 50 do
    begin
      y:=(4*x/100)-1;
      series19.AddXY(x/100,y);
    end;
  for x := 50 to 75 do
    begin
      y:=3-(4*x/100);
      series19.AddXY(x/100,y);
    end;
  for x := 50 to 75 do
    begin
      y:=(4*x/100)-2;
      series20.AddXY(x/100,y);
    end;
  for x := 75 to 100 do
    begin
      y:=4-(4*x/100);
      series20.AddXY(x/100,y);
    end;

  //display KB
  if (0<=KB) and (KB<=0.25) then MyuTI:=(KB/0.25)
  else if (0.25<=KB) and (KB<=0.5) then MyuTI:=1-((KB-0.25)/0.25)
  else if KB>0.5 then MyuTI:=0;
  edit42.Text:=floattostr(roundto(MyuTI,-3));

  if (0.25<=KB) and (KB<=0.5) then MyuCI:=((KB-0.25)/0.25)
  else if (0.5<=KB) and (KB<=0.75) then MyuCI:=1-((KB-0.5)/0.25)
  else if (0.75<=KB) and (KB<=0.5) then MyuCI:=0;
  edit43.Text:=floattostr(roundto(MyuCI,-3));

  if (0.5<=KB) and (KB<=0.75) then MyuI:=((KB-0.5)/0.25)
  else if (0.75<=KB) and (KB<=1) then MyuI:=1-((KB-0.75)/0.25)
  else if (1<=KB) and (KB<=0.75) then MyuI:=0;
  edit44.Text:=floattostr(roundto(MyuI,-3));

  TI:=strtofloat(edit42.Text);
  CI:=strtofloat(edit43.Text);
  Id:=strtofloat(edit44.Text);

  edit45.Text:=floattostr(TI*100);
  edit46.Text:=floattostr(CI*100);
  edit47.Text:=floattostr(Id*100);
end;

//CLEAR ALL
procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.Clear; edit2.Clear; edit3.Clear;
  edit4.Clear; edit5.Clear; edit6.Clear;
  edit7.Clear; edit8.Clear; edit9.Clear;
  edit10.Clear; edit11.Clear; edit12.Clear;
  edit13.Clear; edit14.Clear; edit15.Clear;
  edit16.Clear; edit17.Clear; edit18.Clear;
  edit19.Clear; edit20.Clear; edit21.Clear;
  edit22.Clear; edit23.Clear; edit24.Clear;
  edit25.Clear; edit26.Clear; edit27.Clear;
  edit28.Clear; edit29.Clear; edit30.Clear;
  edit31.Clear; edit32.Clear; edit33.Clear;
  edit34.Clear; edit35.Clear; edit36.Clear;
  edit37.Clear; edit38.Clear; edit40.Clear;
  edit42.Clear;  edit43.Clear; edit44.Clear;
  edit45.Clear; edit46.Clear; edit47.Clear;

  series10.Clear; series11.Clear; series12.Clear;
  series13.Clear; series14.Clear; series15.Clear;
  series16.Clear; series17.Clear; series21.Clear;
end;

end.
