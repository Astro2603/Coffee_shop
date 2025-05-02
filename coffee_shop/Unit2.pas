unit Unit2;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Effects, unit3, FMX.Objects;

type
  TFrame2 = class(TFrame)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    M1: TRectangle;
    GlowEffect1: TGlowEffect;
    M2: TRectangle;
    GlowEffect2: TGlowEffect;
    M3: TRectangle;
    GlowEffect3: TGlowEffect;
    M4: TRectangle;
    GlowEffect4: TGlowEffect;
    M5: TRectangle;
    GlowEffect5: TGlowEffect;
    M6: TRectangle;
    GlowEffect6: TGlowEffect;
    M7: TRectangle;
    GlowEffect7: TGlowEffect;
    M8: TRectangle;
    GlowEffect8: TGlowEffect;
    procedure M1Click(Sender: TObject);
    procedure M4Click(Sender: TObject);
    procedure M3Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure M5Click(Sender: TObject);
    procedure M8Click(Sender: TObject);
    procedure M7Click(Sender: TObject);
    procedure M6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cart:tframe3;
  end;

implementation

uses unit1;

{$R *.fmx}

procedure TFrame2.M1Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 1.50;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C1.Visible := true;
  form1.cart.C1.Tag := form1.cart.C1.Tag + 1;
  form1.cart.Q1.Text := 'QTY: ' + form1.cart.C1.Tag.ToString;
end;

procedure TFrame2.M2Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 2.00;
  form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C2.Visible := true;
  form1.cart.C2.Tag := form1.cart.C2.Tag + 1;
  form1.cart.Q2.Text := 'QTY: ' + form1.cart.C2.Tag.ToString;
end;

procedure TFrame2.M3Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 2.30;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C3.Visible := true;
  form1.cart.C3.Tag := form1.cart.C3.Tag + 1;
  form1.cart.Q3.Text := 'QTY: ' + form1.cart.C3.Tag.ToString;
end;

procedure TFrame2.M4Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 2.00;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C4.Visible := true;
  form1.cart.C4.Tag := form1.cart.C4.Tag + 1;
  form1.cart.Q4.Text := 'QTY: ' + form1.cart.C4.Tag.ToString;
end;

procedure TFrame2.M5Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 2.00;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C5.Visible := true;
  form1.cart.C5.Tag := form1.cart.C5.Tag + 1;
  form1.cart.Q5.Text := 'QTY: ' + form1.cart.C5.Tag.ToString;
end;

procedure TFrame2.M6Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 2.30;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C6.Visible := true;
  form1.cart.C6.Tag := form1.cart.C6.Tag + 1;
  form1.cart.Q6.Text := 'QTY: ' + form1.cart.C6.Tag.ToString;
end;

procedure TFrame2.M7Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 2.30;
  form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C7.Visible := true;
  form1.cart.C7.Tag := form1.cart.C7.Tag + 1;
  form1.cart.Q7.Text := 'QTY: ' + form1.cart.C7.Tag.ToString;
end;

procedure TFrame2.M8Click(Sender: TObject);
begin
  form1.total.TagFloat := form1.total.tagfloat + 2.00;
   form1.total.Text := 'Total: ' + FormatFloat('0.00', form1.total.TagFloat);

  form1.cart.C8.Visible := true;
  form1.cart.C8.Tag := form1.cart.C8.Tag + 1;
  form1.cart.Q8.Text := 'QTY: ' + form1.cart.C8.Tag.ToString;
end;

end.
