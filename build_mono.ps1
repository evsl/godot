# Build temporary binary
scons -j6 p=windows tools=yes module_mono_enabled=yes mono_glue=no
# Generate glue sources
.\bin\godot.windows.tools.64.mono --generate-mono-glue modules/mono/glue

### Build binaries normally
# Editor
scons p=windows target=release_debug tools=yes module_mono_enabled=yes
# Export templates
scons -j6 p=windows target=debug tools=no module_mono_enabled=yes
scons -j6 p=windows target=release tools=no module_mono_enabled=yes