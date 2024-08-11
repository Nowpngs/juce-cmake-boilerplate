#include <gtest/gtest.h>
#include <BasicAudioPlugin/PluginProcessor.h>

namespace audio_plugin_test
{
    TEST(AudioProcessor, ProcessorInitialization)
    {
        audio_plugin::AudioPluginAudioProcessor processor{};
        ASSERT_TRUE(processor.getName().isNotEmpty());
    }
}