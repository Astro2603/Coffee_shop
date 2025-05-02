unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Controls.Presentation, FMX.Objects, FMX.Layouts, FMX.TabControl,
  unit2, unit3;

const
C_user = 'customer';
C_pass = '123';

K_user = 'kitchen';
K_pass = '123';

Ca_user = 'cashier';
Ca_pass = '123';

type
  TForm1 = class(TForm)
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Label1: TLabel;
    Layout3: TLayout;
    Layout5: TLayout;
    Edit2: TEdit;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    TabItem2: TTabItem;
    Layout4: TLayout;
    Rectangle2: TRectangle;
    Layout6: TLayout;
    Layout7: TLayout;
    Label3: TLabel;
    Layout8: TLayout;
    Layout9: TLayout;
    Label4: TLabel;
    Layout10: TLayout;
    TabItem3: TTabItem;
    TabItem4: TTabItem;
    Rectangle3: TRectangle;
    total: TLabel;
    VertScrollBox1: TVertScrollBox;
    VertScrollBox2: TVertScrollBox;
    procedure Button1Click(Sender: TObject);
    procedure Label2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    items:TFrame2;
    cart:TFrame3;
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
var usn := edit2.Text;
var pass := edit1.Text;
begin
  if (usn = C_user) and (pass = C_pass) then
  begin
  Tabcontrol1.ActiveTab := tabitem2;
  end
  else if (usn = K_user) and (pass = K_pass) then
  begin
  Tabcontrol1.ActiveTab := tabitem4;
  end
  else if (usn = Ca_user) and (pass = Ca_pass) then
  begin
  Tabcontrol1.ActiveTab := tabitem3;
  end
  else
  showmessage('access denied');
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  items := TFrame2.Create(Vertscrollbox1); //when the form is created the itemframe or Tframe2 will be created
  items.Parent := Vertscrollbox1;//will make the horizontal scrollbox the parent of the itemframe or tframe2

  cart := TFrame3.Create(Vertscrollbox2);//same applies here
  cart.Parent := Vertscrollbox2;

  cart.C1.Visible := false; //this will make the item on the cart unclickable up to c12
  cart.C2.Visible := false;
  cart.C3.Visible := false;
  cart.C4.Visible := false;
  cart.C5.Visible := false;
  cart.C6.Visible := false;
  cart.C7.Visible := false;
  cart.C8.Visible := false;

  cart.C1.Tag := 0;//sets the counter of the item to 0
  cart.C2.Tag := 0;
  cart.C3.Tag := 0;
  cart.C4.Tag := 0;
  cart.C5.Tag := 0;
  cart.C6.Tag := 0;
  cart.C7.Tag := 0;
  cart.C8.Tag := 0;

   tabcontrol1.ActiveTab := tabitem1;//when you lunch the program it will open on the log in form
  tabcontrol1.TabPosition := Ttabposition.None;
end;

procedure TForm1.Label2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   edit1.Password := false;
end;

procedure TForm1.Label2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
   edit1.Password := true;
end;

end.
