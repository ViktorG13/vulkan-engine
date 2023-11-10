#pragma once

#include "lve_window.hpp"
#include "lve_pipeline.hpp"
#include "lve_device.hpp"

namespace lve
{
  class FirstApp
  {

  public:
    static constexpr uint32_t WIDTH = 800;
    static constexpr uint32_t HEIGHT = 600;

    void run();

  private:
    LveWindow lveWindow{WIDTH, HEIGHT, "Hello"};
    LveDevice lveDevice{lveWindow};
    LvePipeline lvePipeline{lveDevice, "./src/shaders/bin/simple_shader.vert.spv", "./src/shaders/bin/simple_shader.frag.spv", lvePipeline.defaultPipelineConfigInfo(WIDTH, HEIGHT)};
  };

} // namespace lve
