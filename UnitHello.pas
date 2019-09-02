unit UnitHello;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFormHello = class(TForm)
    Timer1: TTimer;
    procedure FormPaint(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    s:byte;
  end;

var
  FormHello: TFormHello;

implementation

{$R *.dfm}

procedure TFormHello.FormPaint(Sender: TObject);
var
  bitmap: Vcl.Graphics.TBitmap;
  rgn:HRGN;
begin
  bitmap := TBitmap.Create;
  bitmap.Width := screen.Width;
  bitmap.Height := screen.Height;

  bitmap.LoadFromFile
    ('C:\Users\Demo\Desktop\������\���������������� relese\Delphi\����������� �����\Space-Fighter.bmp');
  FormHello.Canvas.CopyRect(rect(200, 100, screen.Width div 2 + 125, screen.Height - 50),
    bitmap.Canvas, rect(0, 0, screen.Width div 2 - 75, screen.Height - 150));
    rgn :=CreateRectRgn(220, 140, screen.Width div 2 + 125, screen.Height - 50);
   SetWindowRgn(Handle,rgn,true);
end;

procedure TFormHello.Timer1Timer(Sender: TObject);
begin
inc(s);
if s > 5 then  close;

end;

end.
