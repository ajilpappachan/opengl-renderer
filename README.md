# OpenGL Renderer

A real-time 3D renderer written in C++ with OpenGL 3, built to work through the fundamentals that sit underneath a production engine: the render loop, shader management, camera control, lighting, and model loading.

[Demo video](https://youtu.be/dMPQNr5dtY8)

## What's in it

- Model loading through **Assimp**, with meshes and materials handled per model
- Phong lighting applied across loaded models
- A free-look camera
- Shader loading and compilation wrapped in its own class
- A **Dear ImGui** debug interface for adjusting scene parameters at runtime
- Texture loading via `stb_image`

## Built with

C++, OpenGL 3, GLFW, GLEW, GLM, Assimp, Dear ImGui, stb_image

## Building

Open `OpenGLRenderer.sln` in Visual Studio and build. Everything is
vendored under `Res/` — headers in `Res/include`, libraries in `Res/lib`, and the Assimp runtime
DLL in `Res/bin` — so there is nothing to fetch or configure.

GLEW and GLFW link statically. Assimp links through an import library, so a post-build step copies
`assimp-vc142-mt.dll` into the output directory automatically; the build runs straight from a fresh
clone.

**x64 only.** The vendored libraries are all 64-bit builds, so there is no 32-bit configuration to
select. The project builds against whichever Visual Studio toolset you have installed.

The vendored Assimp is **5.0.1**.

## Notes

This is a personal learning project rather than a finished product. I wrote it to understand how renderers are put together before working on engines where most of that machinery is already in place.

## License

My source is MIT licensed — see [LICENSE](LICENSE). That covers the renderer itself, not the
vendored dependencies under `Res/` (GLFW, GLEW, GLM, Assimp, Dear ImGui, stb_image) or the models
and textures in `Res/models`, all of which keep their own licences.
