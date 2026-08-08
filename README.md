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

C++, OpenGL 3, GLFW, GLEW, Assimp, Dear ImGui, stb_image

## Building

Open `OpenGLRenderer.sln` in Visual Studio and build. Dependencies are included in the repository.

## Notes

This is a personal learning project rather than a finished product. I wrote it to understand how renderers are put together before working on engines where most of that machinery is already in place.
