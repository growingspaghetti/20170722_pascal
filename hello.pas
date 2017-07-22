unit hello;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynEdit, Forms, Controls,
  Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    SynEdit1: TSynEdit;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

const
  a : real = 12;

var
  Form1: TForm1;
  P : PChar = 'This is a null-terminated string.';
  b : integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure printHello();
begin
     writeln ('Hello, world.', a);
     ShowMessage('This is a message from Lazarus' + P);
end;

function loop() : integer;
var a : integer;
begin
  a := 5;
  while a < 6 do
  begin;
        writeln (a);
        a := a + 1;
  end;
  loop := a;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     printHello();
     b := loop();
     writeln (b);
     ShowMessage(IntToStr(b));
     SynEdit1.Append(IntToStr(b));
end;

end.

