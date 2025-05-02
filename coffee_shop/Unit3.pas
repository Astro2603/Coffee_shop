unit Unit3;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Effects, FMX.Objects, FMX.Layouts, FMX.Controls.Presentation;

type
  TFrame3 = class(TFrame)
    Layout2: TLayout;
    C1: TRectangle;
    GlowEffect1: TGlowEffect;
    C4: TRectangle;
    GlowEffect4: TGlowEffect;
    C3: TRectangle;
    GlowEffect3: TGlowEffect;
    C2: TRectangle;
    GlowEffect2: TGlowEffect;
    C5: TRectangle;
    GlowEffect5: TGlowEffect;
    C8: TRectangle;
    GlowEffect8: TGlowEffect;
    C7: TRectangle;
    GlowEffect7: TGlowEffect;
    C6: TRectangle;
    GlowEffect6: TGlowEffect;
    Q1: TLabel;
    Q5: TLabel;
    Q4: TLabel;
    Q8: TLabel;
    Q3: TLabel;
    Q7: TLabel;
    Q2: TLabel;
    Q6: TLabel;
    procedure C1Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure C4Click(Sender: TObject);
    procedure C8Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure C7Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses unit1;

{$R *.fmx}

procedure TFrame3.C1Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 1.50;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C1.Tag := C1.Tag - 1;
  Q1.Text := 'Qty: ' + C1.Tag.ToString;
  if C1.Tag=0 then
  C1.Visible := false;
end;

procedure TFrame3.C2Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 2;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C2.Tag := C2.Tag - 1;
  Q2.Text := 'Qty: ' + C2.Tag.ToString;
  if C2.Tag=0 then
  C2.Visible := false;
end;

procedure TFrame3.C3Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 2.30;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C3.Tag := C3.Tag - 1;
  Q3.Text := 'Qty: ' + C3.Tag.ToString;
  if C3.Tag=0 then
  C3.Visible := false;
end;

procedure TFrame3.C4Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 2;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C4.Tag := C4.Tag - 1;
  Q4.Text := 'Qty: ' + C4.Tag.ToString;
  if C4.Tag=0 then
  C4.Visible := false;
end;

procedure TFrame3.C5Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 2;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C5.Tag := C5.Tag - 1;
  Q5.Text := 'Qty: ' + C5.Tag.ToString;
  if C5.Tag=0 then
  C5.Visible := false;
end;

procedure TFrame3.C6Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 2.30;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C6.Tag := C6.Tag - 1;
  Q6.Text := 'Qty: ' + C6.Tag.ToString;
  if C6.Tag=0 then
  C6.Visible := false;
end;

procedure TFrame3.C7Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 2.30;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C7.Tag := C7.Tag - 1;
  Q7.Text := 'Qty: ' + C7.Tag.ToString;
  if C7.Tag=0 then
  C7.Visible := false;
end;

procedure TFrame3.C8Click(Sender: TObject);
begin
  form1.total.tagfloat := form1.total.tagfloat - 2;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  C8.Tag := C8.Tag - 1;
  Q8.Text := 'Qty: ' + C8.Tag.ToString;
  if C8.Tag=0 then
  C8.Visible := false;
end;

end.
