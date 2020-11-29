#include "usb_names.h"

#define MIDI_NAME   {'T','e','e','n','s','y',' ','S','y','n','t','h'}
#define MIDI_NAME_LEN  12

// Do not change this part.  This exact format is required by USB.

struct usb_string_descriptor_struct usb_string_product_name = {
        2 + MIDI_NAME_LEN * 2,
        3,
        MIDI_NAME
};