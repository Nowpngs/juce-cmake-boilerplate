cmake_minimum_required(VERSION 3.22)

project(AudioPlugin VERSION 0.1.0)

juce_add_plugin(${PROJECT_NAME}
    COMPANT_NAME TestCompany
    IS_SYNTH FALSE
    NEED_MIDI_INPUT TRUE
    NEED_MIDI_OUTPUT TRUE
    PLUGIN_MANUFACTURER_CODE TEST
    PLUGIN_CODE AUPL
    FORMATS VST3
    PRODUCT_NAME "BasicAudioPlugin"
)

target_sources(${PROJECT_NAME}
    PRIVATE
    source/PluginProcessor.cpp
    source/PluginEditor.cpp
)

target_include_directories(${PROJECT_NAME}
    PRIVATE
    include
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
    juce::juce_audio_utils
    PUBLIC
    juce::juce_recommended_config_flags
    juce::juce_recommended_lto_flags
    juce::juce_recommended_warning_flags
)

target_compile_definitions(${PROJECT_NAME}
    PUBLIC
    JUCE_WEB_BROWSER=0
    JUCE_USE_CURL=0
    JUCE_VST3_CAN_REPLACE_VST2=0
)

if(MSVC)
    target_compile_definitions(${PROJECT_NAME}
        PRIVATE
        _SILENCE_CXX23_ALIGNED_STORAGE_DEPRECATION_WARNING)
endif()