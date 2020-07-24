# Reset the keyboard mapping
hidutil property --set '{"UserKeyMapping":[]}'

# Ctrl = 0x7000000e4
# Windows Left = 0x7000000e6
# Alt Left = 0x7000000e7

# AltGr = 0x7000000E3

# ² = 0x700000064
# < = 0x700000035

# Set the mapping to switch from alt keys
hidutil property --set '{
  "UserKeyMapping": [
    {
      "HIDKeyboardModifierMappingSrc":0x7000000E3,
      "HIDKeyboardModifierMappingDst":0x7000000E6
    },
    {
      "HIDKeyboardModifierMappingSrc":0x700000064,
      "HIDKeyboardModifierMappingDst":0x700000035
    },
    {
      "HIDKeyboardModifierMappingSrc":0x700000035,
      "HIDKeyboardModifierMappingDst":0x700000064
    }
  ]
}'
