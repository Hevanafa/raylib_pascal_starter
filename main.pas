unit main;

// Note: copy the raylib.dll file from the 'ray4laz/libs/x86_64-windows' folder to your project folder.
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
    private
      const
        screenWidth = 800;
        screenHeight = 450;

        CORNFLOWERBLUE: TColorB = (r: 100; g: 149; b: 237; a: 255);

      procedure init;
      procedure update;
      procedure draw;

    public
      constructor create;

  end;

implementation

procedure TProgram.init;
begin
  InitWindow(screenWidth, screenHeight, 'raylib + Pascal');
  SetTargetFPS(60);
end;

procedure TProgram.update;
begin
  // Todo: update code
end;

procedure TProgram.draw;
begin
  BeginDrawing();
    ClearBackground(CORNFLOWERBLUE);
    DrawText('Hello world!', 50, 100, 20, RAYWHITE);
  EndDrawing();
end;

constructor TProgram.create;
begin
  init;

  // Main game loop
  while not WindowShouldClose() do
    begin
      update;
      draw;
    end;

  // De-Initialization
  // Close window and OpenGL context
  CloseWindow;
end;

end.

