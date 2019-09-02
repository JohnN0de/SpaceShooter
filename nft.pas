unit nft;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TFormRecords = class(TForm)
    RichEdit1: TRichEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRecords: TFormRecords;

implementation

{$R *.dfm}

procedure TFormRecords.Button1Click(Sender: TObject);
begin
RichEdit1.Clear;
end;

procedure TFormRecords.Button2Click(Sender: TObject);
begin
FormRecords.Close;
end;

end.
