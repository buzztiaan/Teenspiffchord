/*************************************************************************
 * nasa_us.h - Keyboard mapping for nasa-style chords with American      *
 * keyboard setting on the PC side.                                      *
 * $Id:: nasa_us.h 26 2012-01-22 18:27:08Z spacemanspiff               $ *
 *************************************************************************
 * SpiffChorder - Spaceman Spiff's Chording Keyboard Experiment          *
 * Copyright (C) 2006-2012  Mikkel Holm Olsen                            *
 * Modified 2012-06 for Teensy by buZz                                   *
 *                                                                       *
 * This program is free software: you can redistribute it and/or modify  *
 * it under the terms of the GNU General Public License as published by  *
 * the Free Software Foundation, either version 3 of the License, or     *
 * (at your option) any later version.                                   *
 *                                                                       *
 * This program is distributed in the hope that it will be useful,       *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of        *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
 * GNU General Public License for more details.                          *
 *                                                                       *
 * You should have received a copy of the GNU General Public License     *
 * along with this program.  If not, see <http://www.gnu.org/licenses/>. *
 *************************************************************************/
#ifndef KEYMAP_H
#define KEYMAP_H


// SPECIAL CHORDER KEYS (none-teensy) 
#define KEY__ 0
#define MODE_NUM 140
#define MODE_FUNC 141
#define MODE_RESET 142 

#define MACRO_quotes 143
#define MACRO_00 144
#define MACRO_000 145
#define MACRO_parens 146

#define SHIFTMODE 147
#define NUMSHIFTMODE 148
#define ALTSHIFTMODE 149
#define CTRLSHIFTMODE 150

#define KEY_DHT11MODE 151

#include <keylayouts.h>

/**********************************************************
 *  order is  Far Thumb, Center Thumb, Near Thumb button  *
 *  Index Finger, Middle Finger, Ring Finger, Pinky       *
 *  FCN IMRP                                              *
 **********************************************************/
const int keymap_default[128] = {
  KEY__,                        // --- ----  0x00 no keys pressed
  KEY_W,                        // --- ---P  0x01
  KEY_Y,                        // --- --R-  0x02
  KEY_U,                        // --- --RP  0x03
  KEY_R,                        // --- -M--  0x04
  KEY__,                        // --- -M-P  0x05
  KEY_H,                        // --- -MR-  0x06
  KEY_S,                        // --- -MRP  0x07

  KEY_I,                        // --- I---  0x08
  KEY_B,                        // --- I--P  0x09
  KEY_K,                        // --- I-R-  0x0A
  KEY_Z,                        // --- I-RP  0x0B
  KEY_D,                        // --- IM--  0x0C
  KEY__,                        // --- IM-P  0x0D
  KEY_E,                        // --- IMR-  0x0E
  KEY_T,                        // --- IMRP  0x0F

  MODE_NUM,                     // --N ----  0x10
  MODE_FUNC,                    // --N ---P  0x11
  KEY_ESC,                      // --N --R-  0x12
  KEY_SEMICOLON,                    // --N --RP  0x13
  KEY_COMMA,                    // --N -M--  0x14
  KEY__,                        // --N -M-P  0x15
  KEY_PERIOD,                     // --N -MR-  0x16
  ALTSHIFTMODE,                     // --N -MRP  0x17

  KEY__,                        // --N I---  0x18
  KEY_INSERT,                      // --N I--P  0x19
  KEY__,                        // --N I-R-  0x1A
  CTRLSHIFTMODE,                    // --N I-RP  0x1B
  KEY_F9,                       // --N IM--  0x1C
  KEY_F4,                       // --N IM-P  0x1D
  KEY_QUOTE,                     // --N IMR-  0x1E
  KEY_NUM_LOCK,                  // --N IMRP  0x1F <-- niet gewoon numlock?

  KEY_SPACE,                      // -C- ----  0x20
  KEY_F,                        // -C- ---P  0x21
  KEY_G,                        // -C- --R-  0x22
  KEY_V,                        // -C- --RP  0x23
  KEY_C,                        // -C- -M--  0x24
  KEY_RIGHT_BRACE,               // -C- -M-P  0x25
  KEY_P,                        // -C- -MR-  0x26
  KEY_N,                        // -C- -MRP  0x27

  KEY_L,                        // -C- I---  0x28
  KEY_X,                        // -C- I--P  0x29
  KEY_J,                        // -C- I-R-  0x2A
  KEY_Q,                        // -C- I-RP  0x2B
  KEY_M,                        // -C- IM--  0x2C
  KEY_LEFT_BRACE,                      // -C- IM-P  0x2D
  KEY_A,                        // -C- IMR-  0x2E
  KEY_O,                        // -C- IMRP  0x2F

  NUMSHIFTMODE,               // -CN ----  0x30
  KEY__,                        // -CN ---P  0x31
  KEY__,                        // -CN --R-  0x32
  KEY__,                        // -CN --RP  0x33
  KEY__,                        // -CN -M--  0x34
  KEY__,                        // -CN -M-P  0x35
  KEY__,                        // -CN -MR-  0x36
  KEY__,                        // -CN -MRP  0x37

  KEY_DHT11MODE,                        // -CN I---  0x38
  KEY__,                        // -CN I--P  0x39
  KEY__,                        // -CN I-R-  0x3A
  KEY__,                        // -CN I-RP  0x3B
  KEY__,                        // -CN IM--  0x3C
  KEY__,                        // -CN IM-P  0x3D
  KEY__,                        // -CN IMR-  0x3E
  KEY_NUM_LOCK,                  // -CN IMRP  0x3F

  SHIFTMODE,                   // F-- ----  0x40
  KEY_ENTER,                    // F-- ---P  0x41
  KEY_RIGHT,                     // F-- --R-  0x42
  KEY_DOWN,                     // F-- --RP  0x43
  KEY_BACKSPACE,                   // F-- -M--  0x44
  KEY_PRINTSCREEN,                   // F-- -M-P  0x45
  KEY_DELETE,                      // F-- -MR-  0x46
  KEY_PAGE_DOWN,                     // F-- -MRP  0x47

  KEY_LEFT,                     // F-- I---  0x48
  KEY_END,                      // F-- I--P  0x49
  KEY_TAB,                      // F-- I-R-  0x4A
  KEY_HOME,                     // F-- I-RP  0x4B
  KEY_UP,                     // F-- IM--  0x4C
  KEY_SCROLL_LOCK,                   // F-- IM-P  0x4D
  KEY_PAGE_UP,                     // F-- IMR-  0x4E
  KEY_CAPS_LOCK,                   // F-- IMRP  0x4F

  KEY_PAUSE,                    // F-N ----  0x50
  KEY__,                        // F-N ---P  0x51
  KEY__,                        // F-N --R-  0x52
  KEY__,                        // F-N --RP  0x53
  KEY__,                        // F-N -M--  0x54
  KEY__,                        // F-N -M-P  0x55
  KEY__,                        // F-N -MR-  0x56
  KEY__,                        // F-N -MRP  0x57

  KEY__,                        // F-N I---  0x58
  KEY__,                        // F-N I--P  0x59
  KEY__,                        // F-N I-R-  0x5A
  KEY__,                        // F-N I-RP  0x5B
  KEY__,                        // F-N IM--  0x5C
  KEY__,                        // F-N IM-P  0x5D
  KEY__,                        // F-N IMR-  0x5E
  KEY__,                        // F-N IMRP  0x5F

  KEYPAD_PLUS,                   // FC- ----  0x60
  KEYPAD_ENTER,                  // FC- ---P  0x61
  KEYPAD_6,                      // FC- --R-  0x62
  KEYPAD_2,                      // FC- --RP  0x63
  KEYPAD_5,                      // FC- -M--  0x64
  KEYPAD_ASTERIX,                    // FC- -M-P  0x65
  KEYPAD_PERIOD,                  // FC- -MR-  0x66
  KEYPAD_3,                      // FC- -MRP  0x67

  KEYPAD_4,                      // FC- I---  0x68
  KEYPAD_1,                      // FC- I--P  0x69
  KEYPAD_MINUS,                  // FC- I-R-  0x6A
  KEYPAD_7,                      // FC- I-RP  0x6B
  KEYPAD_8,                      // FC- IM--  0x6C
  KEYPAD_SLASH,                  // FC- IM-P  0x6D
  KEYPAD_9,                      // FC- IMR-  0x6E
  KEYPAD_0,                      // FC- IMRP  0x6F

  MODE_RESET,                   // FCN ----  0x70
  KEY__,                        // FCN ---P  0x71
  KEY__,                        // FCN --R-  0x72
  KEY__,                        // FCN --RP  0x73
  KEY__,                        // FCN -M--  0x74
  KEY__,                        // FCN -M-P  0x75
  KEY__,                        // FCN -MR-  0x76
  KEY__,                        // FCN -MRP  0x77

  KEY__,                        // FCN I---  0x78
  KEY__,                        // FCN I--P  0x79
  KEY__,                        // FCN I-R-  0x7A
  KEY__,                        // FCN I-RP  0x7B
  KEY__,                        // FCN IM--  0x7C
  KEY__,                        // FCN IM-P  0x7D
  KEY__,                        // FCN IMR-  0x7E
  KEY__,                         // FCN IMRP  0x7F
};

/**************************************
 * number/symbols mode                *
 **************************************/
const int keymap_numsym[128] = {
  KEY__,                        // --- ----  0x00
  KEY_5,                        // --- ---P  0x01
  KEY_4,                        // --- --R-  0x02
  MACRO_quotes,                 // --- --RP  0x03   "" and a back arrow
  KEY_3,                        // --- -M--  0x04
  KEY__,                        // --- -M-P  0x05
  MACRO_00,                     // --- -MR-  0x06   00
  KEY_MINUS,                    // --- -MRP  0x07

  KEY_2,                        // --- I---  0x08
  KEY_BACKSLASH,                  // --- I--P  0x09
  ASCII_24,           // --- I-R-  0x0A   $
  KEY_TILDE,                    // --- I-RP  0x0B
  KEY_SLASH,                    // --- IM--  0x0C
  KEY__,                        // --- IM-P  0x0D
  KEY_EQUAL,                    // --- IMR-  0x0E
  MACRO_000,                    // --- IMRP  0x0F   000

  KEY_SPACE,                      // --N ----  0x10
  MODE_FUNC,                    // --N ---P  0x11
  KEY_ESC,                      // --N --R-  0x12
  KEY_SEMICOLON,                    // --N --RP  0x13
  KEY_COMMA,                    // --N -M--  0x14
  KEY__,                        // --N -M-P  0x15
  KEY_PERIOD,                      // --N -MR-  0x16
  ALTSHIFTMODE,                     // --N -MRP  0x17

  KEY__,                        // --N I---  0x18
  KEY_INSERT,                      // --N I--P  0x19
  KEY__,                        // --N I-R-  0x1A
  CTRLSHIFTMODE,                    // --N I-RP  0x1B
  KEY__,                        // --N IM--  0x1C
  KEY__,                        // --N IM-P  0x1D
  KEY_QUOTE,                     // --N IMR-  0x1E
  MODE_RESET,                   // --N IMRP  0x1F

  KEY_1,                        // -C- ----  0x20
  KEY_9,                        // -C- ---P  0x21
  KEY_8,                        // -C- --R-  0x22
  KEY_RIGHT_BRACE,                      // -C- --RP  0x23
  KEY_7,                        // -C- -M--  0x24
  KEY_RIGHT_BRACE,                      // -C- -M-P  0x25
  ASCII_25,           // -C- -MR-  0x26   %
  KEY_LEFT_BRACE,                      // -C- -MRP  0x27

  KEY_6,                        // -C- I---  0x28
  ASCII_26,           // -C- I--P  0x29       &
  MACRO_parens,                 // -C- I-R-  0x2A       () and a back arrow
  ASCII_3F,       // -C- I-RP  0x2B       ?
  ASCII_2A,           // -C- IM--  0x2C
  KEY_LEFT_BRACE,                      // -C- IM-P  0x2D
  ASCII_2B,       // -C- IMR-  0x2E
  KEY_0,                        // -C- IMRP  0x2F

  NUMSHIFTMODE,               // -CN ----  0x30 MULTI_NumShift?
  KEY__,                        // -CN ---P  0x31
  KEY__,                        // -CN --R-  0x32
  KEY__,                        // -CN --RP  0x33
  KEY__,                        // -CN -M--  0x34
  KEY__,                        // -CN -M-P  0x35
  KEY__,                        // -CN -MR-  0x36
  KEY__,                        // -CN -MRP  0x37

  KEY__,                        // -CN I---  0x38
  KEY__,                        // -CN I--P  0x39
  KEY__,                        // -CN I-R-  0x3A
  KEY__,                        // -CN I-RP  0x3B
  KEY__,                        // -CN IM--  0x3C
  KEY__,                        // -CN IM-P  0x3D
  KEY__,                        // -CN IMR-  0x3E
  KEY_NUM_LOCK,                  // -CN IMRP  0x3F

  SHIFTMODE,                   // F-- ----  0x40
  KEY_ENTER,                    // F-- ---P  0x41
  KEY_RIGHT,                     // F-- --R-  0x42
  KEY_DOWN,                     // F-- --RP  0x43
  KEY_BACKSPACE,                   // F-- -M--  0x44
  KEY_PRINTSCREEN,                   // F-- -M-P  0x45
  KEY_DELETE,                      // F-- -MR-  0x46
  KEY_PAGE_DOWN,                     // F-- -MRP  0x47

  KEY_LEFT,                     // F-- I---  0x48
  KEY_END,                      // F-- I--P  0x49
  KEY_TAB,                      // F-- I-R-  0x4A
  KEY_HOME,                     // F-- I-RP  0x4B
  KEY_UP,                     // F-- IM--  0x4C
  KEY_SCROLL_LOCK,                   // F-- IM-P  0x4D
  KEY_PAGE_UP,                     // F-- IMR-  0x4E
  KEY_CAPS_LOCK,                 // F-- IMRP  0x4F

  KEY_PAUSE,                    // F-N ----  0x50
  KEY__,                        // F-N ---P  0x51
  KEY__,                        // F-N --R-  0x52
  KEY__,                        // F-N --RP  0x53
  KEY__,                        // F-N -M--  0x54
  KEY__,                        // F-N -M-P  0x55
  KEY__,                        // F-N -MR-  0x56
  KEY__,                        // F-N -MRP  0x57

  KEY__,                        // F-N I---  0x58
  KEY__,                        // F-N I--P  0x59
  KEY__,                        // F-N I-R-  0x5A
  KEY__,                        // F-N I-RP  0x5B
  KEY__,                        // F-N IM--  0x5C
  KEY__,                        // F-N IM-P  0x5D
  KEY__,                        // F-N IMR-  0x5E
  KEY__,                        // F-N IMRP  0x5F

  KEYPAD_PLUS,                   // FC- ----  0x60
  KEYPAD_ENTER,                  // FC- ---P  0x61
  KEYPAD_6,                      // FC- --R-  0x62
  KEYPAD_2,                      // FC- --RP  0x63
  KEYPAD_5,                      // FC- -M--  0x64
  KEYPAD_ASTERIX,                    // FC- -M-P  0x65
  KEYPAD_PERIOD,                  // FC- -MR-  0x66
  KEYPAD_3,                      // FC- -MRP  0x67

  KEYPAD_4,                      // FC- I---  0x68
  KEYPAD_1,                      // FC- I--P  0x69
  KEYPAD_MINUS,                  // FC- I-R-  0x6A
  KEYPAD_7,                      // FC- I-RP  0x6B
  KEYPAD_8,                      // FC- IM--  0x6C
  KEYPAD_SLASH,                  // FC- IM-P  0x6D
  KEYPAD_9,                      // FC- IMR-  0x6E
  KEYPAD_0,                      // FC- IMRP  0x6F

  MODE_RESET,                   // FCN ----  0x70
  KEY__,                        // FCN ---P  0x71
  KEY__,                        // FCN --R-  0x72
  KEY__,                        // FCN --RP  0x73
  KEY__,                        // FCN -M--  0x74
  KEY__,                        // FCN -M-P  0x75
  KEY__,                        // FCN -MR-  0x76
  KEY__,                        // FCN -MRP  0x77

  KEY__,                        // FCN I---  0x78
  KEY__,                        // FCN I--P  0x79
  KEY__,                        // FCN I-R-  0x7A
  KEY__,                        // FCN I-RP  0x7B
  KEY__,                        // FCN IM--  0x7C
  KEY__,                        // FCN IM-P  0x7D
  KEY__,                        // FCN IMR-  0x7E
  KEY__                         // FCN IMRP  0x7F
};

/**************************************
 * function key mode                  *
 **************************************/
const int keymap_function[128] = {
  KEY__,                        // --- ----  0x00
  KEY_F5,                       // --- ---P  0x01
  KEY_F4,                       // --- --R-  0x02
  KEY__,                        // --- --RP  0x03
  KEY_F3,                       // --- -M--  0x04
  KEY__,                        // --- -M-P  0x05
  KEY__,                        // --- -MR-  0x06
  KEY__,                        // --- -MRP  0x07

  KEY_F2,                       // --- I---  0x08
  KEY_DHT11MODE,                        // --- I--P  0x09
  KEY__,                        // --- I-R-  0x0A
  KEY__,                        // --- I-RP  0x0B
  KEY__,                        // --- IM--  0x0C
  KEY__,                        // --- IM-P  0x0D
  KEY__,                        // --- IMR-  0x0E
  KEY__,                        // --- IMRP  0x0F

  KEY__,                        // --N ----  0x10
  MODE_RESET,                   // --N ---P  0x11
  KEY__,                        // --N --R-  0x12
  KEY__,                        // --N --RP  0x13
  KEY__,                        // --N -M--  0x14
  KEY__,                        // --N -M-P  0x15
  KEY__,                        // --N -MR-  0x16
  ALTSHIFTMODE,                     // --N -MRP  0x17

  KEY__,                        // --N I---  0x18
  KEY__,                        // --N I--P  0x19
  KEY__,                        // --N I-R-  0x1A
  CTRLSHIFTMODE,                  // --N I-RP  0x1B
  KEY__,                        // --N IM--  0x1C
  KEY__,                        // --N IM-P  0x1D
  KEY__,                        // --N IMR-  0x1E
  KEY__,                        // --N IMRP  0x1F

  KEY_F1,                       // -C- ----  0x20
  KEY_F9,                       // -C- ---P  0x21
  KEY_F8,                       // -C- --R-  0x22
  KEY_F12,                      // -C- --RP  0x23
  KEY_F7,                       // -C- -M--  0x24
  KEY__,                        // -C- -M-P  0x25
  KEY_F11,                      // -C- -MR-  0x26
  KEY__,                        // -C- -MRP  0x27

  KEY_F6,                       // -C- I---  0x28
  KEY__,                        // -C- I--P  0x29
  KEY__,                        // -C- I-R-  0x2A
  KEY__,                        // -C- I-RP  0x2B
  KEY_F10,                      // -C- IM--  0x2C
  KEY__,                        // -C- IM-P  0x2D
  KEY__,                        // -C- IMR-  0x2E
  KEY__,                        // -C- IMRP  0x2F

  KEY__,               // -CN ----  0x30 MULTI_NumShift
  KEY__,                        // -CN ---P  0x31
  KEY__,                        // -CN --R-  0x32
  KEY__,                        // -CN --RP  0x33
  KEY__,                        // -CN -M--  0x34
  KEY__,                        // -CN -M-P  0x35
  KEY__,                        // -CN -MR-  0x36
  KEY__,                        // -CN -MRP  0x37

  KEY__,                        // -CN I---  0x38
  KEY__,                        // -CN I--P  0x39
  KEY__,                        // -CN I-R-  0x3A
  KEY__,                        // -CN I-RP  0x3B
  KEY__,                        // -CN IM--  0x3C
  KEY__,                        // -CN IM-P  0x3D
  KEY__,                        // -CN IMR-  0x3E
  KEY__,                        // -CN IMRP  0x3F

  KEY_LEFT_SHIFT,                   // F-- ----  0x40
  KEY__,                        // F-- ---P  0x41
  KEY__,                        // F-- --R-  0x42
  KEY__,                        // F-- --RP  0x43
  KEY__,                        // F-- -M--  0x44
  KEY__,                        // F-- -M-P  0x45
  KEY__,                        // F-- -MR-  0x46
  KEY__,                        // F-- -MRP  0x47

  KEY__,                        // F-- I---  0x48
  KEY__,                        // F-- I--P  0x49
  KEY__,                        // F-- I-R-  0x4A
  KEY__,                        // F-- I-RP  0x4B
  KEY__,                        // F-- IM--  0x4C
  KEY__,                        // F-- IM-P  0x4D
  KEY__,                        // F-- IMR-  0x4E
  KEY__,                        // F-- IMRP  0x4F

  KEY__,                        // F-N ----  0x50
  KEY__,                        // F-N ---P  0x51
  KEY__,                        // F-N --R-  0x52
  KEY__,                        // F-N --RP  0x53
  KEY__,                        // F-N -M--  0x54
  KEY__,                        // F-N -M-P  0x55
  KEY__,                        // F-N -MR-  0x56
  KEY__,                        // F-N -MRP  0x57

  KEY__,                        // F-N I---  0x58
  KEY__,                        // F-N I--P  0x59
  KEY__,                        // F-N I-R-  0x5A
  KEY__,                        // F-N I-RP  0x5B
  KEY__,                        // F-N IM--  0x5C
  KEY__,                        // F-N IM-P  0x5D
  KEY__,                        // F-N IMR-  0x5E
  KEY__,                        // F-N IMRP  0x5F

  KEY__,                        // FC-  ---  0x60
  KEY__,                        // FC- ---P  0x61
  KEY__,                        // FC- --R-  0x62
  KEY__,                        // FC- --RP  0x63
  KEY__,                        // FC- -M--  0x64
  KEY__,                        // FC- -M-P  0x65
  KEY__,                        // FC- -MR-  0x66
  KEY__,                        // FC- -MRP  0x67

  KEY__,                        // FC- I---  0x68
  KEY__,                        // FC- I--P  0x69
  KEY__,                        // FC- I-R-  0x6A
  KEY__,                        // FC- I-RP  0x6B
  KEY__,                        // FC- IM--  0x6C
  KEY__,                        // FC- IM-P  0x6D
  KEY__,                        // FC- IMR-  0x6E
  KEY__,                        // FC- IMRP  0x6F

  MODE_RESET,                   // FCN ----  0x70
  KEY__,                        // FCN ---P  0x71
  KEY__,                        // FCN --R-  0x72
  KEY__,                        // FCN --RP  0x73
  KEY__,                        // FCN -M--  0x74
  KEY__,                        // FCN -M-P  0x75
  KEY__,                        // FCN -MR-  0x76
  KEY__,                        // FCN -MRP  0x77

  KEY__,                        // FCN I---  0x78
  KEY__,                        // FCN I--P  0x79
  KEY__,                        // FCN I-R-  0x7A
  KEY__,                        // FCN I-RP  0x7B
  KEY__,                        // FCN IM--  0x7C
  KEY__,                        // FCN IM-P  0x7D
  KEY__,                        // FCN IMR-  0x7E
  KEY__                         // FCN IMRP  0x7F
};

#endif

