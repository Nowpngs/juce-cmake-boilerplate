#include <BasicAudioPlugin/PluginProcessor.h>
#include <gtest/gtest.h>

namespace audio_plugin_test
{
TEST (AudioProcessor, ProcessorInitialization)
{
    audio_plugin::AudioPluginAudioProcessor processor {};
    ASSERT_TRUE (processor.getName ().isNotEmpty ());
}
}