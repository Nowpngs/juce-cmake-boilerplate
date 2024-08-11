#include <gtest/gtest.h>
#include <BasicAudioPlugin/PluginProcessor.h>

namespace audio_plugin_test
{
    TEST(AudioPluginAudioProcessor, ProcessorInitialization)
    {
        AudioPluginAudioProcessor processor{};
        ASSERT_TRUE(processor.getName().isNotEmpty());
    }
}