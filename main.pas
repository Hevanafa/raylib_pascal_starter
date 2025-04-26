unit main;

{$mode Delphi}

interface
uses
  Classes, SysUtils,
  { Raylib elements }
  cmem,
  {uncomment if necessary}
  //raymath,
  //rlgl,
  raylib;


type
  TProgram = class
    public
      constructor create;

    private
      raylib: TTexture2D;

      const
        screenWidth = 640;
        screenHeight = 400;

        CornflowerBlue: TColorB = (r: $64; g: $95; b: $ed; a: $ff);

      procedure init;
      procedure update;
      procedure draw;
  end;

implementation

procedure TProgram.init;
var
  temp: TImage;
begin
  InitWindow(screenWidth, screenHeight, 'Raylib + Pascal Example');

  temp := LoadImage(PChar('assets\images\raylib.png'));
  raylib := LoadTextureFromImage(temp);
  UnloadImage(temp);

  temp := LoadImage(PChar('assets\images\raylib_tiny.png'));
  SetWindowIcon(temp);
  UnloadImage(temp);

  SetTargetFPS(60);
end;

procedure TProgram.update;
begin
  // Todo: update code
end;

procedure TProgram.draw;
var
  s: String;
begin
  s := 'Hello world!';

  BeginDrawing();
  ClearBackground(CornflowerBlue);

  DrawTexture(raylib, Trunc((screenWidth - raylib.width) / 2), trunc((screenHeight - raylib.height) / 2), RAYWHITE);
  DrawText(PChar(s), trunc((screenWidth - MeasureText(PChar(s), 20)) / 2), screenHeight - 60, 20, RAYWHITE);

  EndDrawing();
end;

constructor TProgram.create;
begin
  init;

  { Main game loop }
  while not WindowShouldClose() do begin
    update;
    draw;
  end;

  { De-Initialization }
  { Close window and OpenGL context }
  CloseWindow;
end;

end.

