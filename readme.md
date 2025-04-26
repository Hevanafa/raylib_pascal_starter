# Raylib + Pascal Starter


## Installing Dependencies

1. Requires the **Ray4Laz** Raylib bindings obtained from here: https://github.com/GuvaCode/Ray4Laz
2. Copy the `libraylib.dll` obtained from `ray4laz/libs/x86_64-win64` folder to your project folder
3. In **Project Options** > **Compiler Options** > **Paths**, add the following in the **other unit files** textbox:

`..\ray4laz\source;..\ray4laz\package`

or if you're using both folders in the root folder of this project:

`source;package`
