;	map(0x0000, 0xbfff).rom();
;	map(0xc000, 0xc7ff).ram();
;	map(0xc800, 0xcfff).ram().share("share1");
;	map(0xd000, 0xd7ff).ram().w(FUNC(slapfght_state::videoram_w)).share("videoram");
;	map(0xd800, 0xdfff).ram().w(FUNC(slapfght_state::colorram_w)).share("colorram");
;	map(0xe000, 0xe7ff).ram().share("spriteram");
;	map(0xe800, 0xe800).w(FUNC(slapfght_state::scrollx_lo_w));
;	map(0xe801, 0xe801).w(FUNC(slapfght_state::scrollx_hi_w));
;	map(0xe802, 0xe802).w(FUNC(slapfght_state::scrolly_w));
;	map(0xf000, 0xf7ff).ram().w(FUNC(slapfght_state::fixram_w)).share("fixvideoram");
;	map(0xf800, 0xffff).ram().w(FUNC(slapfght_state::fixcol_w)).share("fixcolorram");

;	PORT_START("IN0")
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_JOYSTICK_UP    ) PORT_8WAY
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN  ) PORT_8WAY
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_8WAY
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT  ) PORT_8WAY
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_JOYSTICK_UP    ) PORT_8WAY PORT_COCKTAIL
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_JOYSTICK_DOWN  ) PORT_8WAY PORT_COCKTAIL
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_JOYSTICK_RIGHT ) PORT_8WAY PORT_COCKTAIL
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_JOYSTICK_LEFT  ) PORT_8WAY PORT_COCKTAIL
;
;	PORT_START("IN1")
;	PORT_BIT( 0x01, IP_ACTIVE_LOW, IPT_BUTTON1 )
;	PORT_BIT( 0x02, IP_ACTIVE_LOW, IPT_BUTTON2 )
;	PORT_BIT( 0x04, IP_ACTIVE_LOW, IPT_BUTTON1 ) PORT_COCKTAIL
;	PORT_BIT( 0x08, IP_ACTIVE_LOW, IPT_BUTTON2 ) PORT_COCKTAIL
;	PORT_BIT( 0x10, IP_ACTIVE_LOW, IPT_START1 )
;	PORT_BIT( 0x20, IP_ACTIVE_LOW, IPT_START2 )
;	PORT_BIT( 0x40, IP_ACTIVE_LOW, IPT_COIN1 )
;	PORT_BIT( 0x80, IP_ACTIVE_LOW, IPT_COIN2 )
;

;	PORT_START("DSW1")
;	PORT_DIPNAME( 0x07, 0x07, DEF_STR( Coinage ) )          PORT_DIPLOCATION("SW1:8,7,6")
;//  PORT_DIPSETTING(    0x01, DEF_STR( 3C_1C ) )
;	PORT_DIPSETTING(    0x02, DEF_STR( 3C_1C ) )
;	PORT_DIPSETTING(    0x04, DEF_STR( 2C_1C ) )
;	PORT_DIPSETTING(    0x07, DEF_STR( 1C_1C ) )
;	PORT_DIPSETTING(    0x03, DEF_STR( 2C_3C ) )
;	PORT_DIPSETTING(    0x06, DEF_STR( 1C_2C ) )
;	PORT_DIPSETTING(    0x05, DEF_STR( 1C_3C ) )
;	PORT_DIPSETTING(    0x00, DEF_STR( Free_Play ) )
;	PORT_DIPNAME( 0x08, 0x08, DEF_STR( Demo_Sounds ) )      PORT_DIPLOCATION("SW1:5")
;	PORT_DIPSETTING(    0x00, DEF_STR( Off ) )
;	PORT_DIPSETTING(    0x08, DEF_STR( On ) )
;	PORT_DIPNAME( 0x10, 0x00, DEF_STR( Cabinet ) )          PORT_DIPLOCATION("SW1:4")
;	PORT_DIPSETTING(    0x00, DEF_STR( Upright ) )
;	PORT_DIPSETTING(    0x10, DEF_STR( Cocktail ) )
;	PORT_DIPNAME( 0x20, 0x20, DEF_STR( Flip_Screen ) )      PORT_DIPLOCATION("SW1:3")
;	PORT_DIPSETTING(    0x20, DEF_STR( Off ) )
;	PORT_DIPSETTING(    0x00, DEF_STR( On ) )
;	PORT_SERVICE_DIPLOC(0x40, IP_ACTIVE_LOW, "SW1:2" )
;	PORT_DIPNAME( 0x80, 0x00, "Player Speed" )              PORT_DIPLOCATION("SW1:1")
;	PORT_DIPSETTING(    0x80, DEF_STR( Normal ) )
;	PORT_DIPSETTING(    0x00, "Fast" )

;
;	PORT_START("DSW2")
;	PORT_DIPNAME( 0x03, 0x03, DEF_STR( Lives ) )            PORT_DIPLOCATION("SW2:8,7")
;	PORT_DIPSETTING(    0x01, "1" )
;	PORT_DIPSETTING(    0x00, "2" )
;	PORT_DIPSETTING(    0x03, "3" )
;	PORT_DIPSETTING(    0x02, "5" )
;	PORT_DIPNAME( 0x0c, 0x08, DEF_STR( Difficulty ) )       PORT_DIPLOCATION("SW2:6,5")
;	PORT_DIPSETTING(    0x0c, DEF_STR( Easy ) )
;	PORT_DIPSETTING(    0x08, DEF_STR( Medium ) )
;	PORT_DIPSETTING(    0x04, DEF_STR( Hard ) )
;	PORT_DIPSETTING(    0x00, DEF_STR( Hardest ) )
;	PORT_DIPNAME( 0x10, 0x00, DEF_STR( Bonus_Life ) )       PORT_DIPLOCATION("SW2:4") // see notes for 'tigerhb3'
;	PORT_DIPSETTING(    0x10, "20k and every 80k" )
;	PORT_DIPSETTING(    0x00, "50k and every 120k" )
;	PORT_DIPUNUSED_DIPLOC( 0x20, IP_ACTIVE_LOW, "SW2:3" )
;	PORT_DIPUNUSED_DIPLOC( 0x40, IP_ACTIVE_LOW, "SW2:2" )
;	PORT_DIPUNUSED_DIPLOC( 0x80, IP_ACTIVE_LOW, "SW2:1" )
;
;	PORT_MODIFY("IN1")
;
;	PORT_MODIFY("DSW1")
;
;	PORT_MODIFY("DSW2")


0000: D3 06       out  ($06),a
0002: ED 56       im   1
0004: FB          ei
0005: C3 77 A7    jp   $A777

; rst 8
0008: E5          push hl
0009: 2A F5 C1    ld   hl,($C1F5)
000C: 19          add  hl,de
000D: 29          add  hl,hl
000E: EB          ex   de,hl
000F: 59          ld   e,c
0010: 6F          ld   l,a
0011: 78          ld   a,b
0012: 26 00       ld   h,$00
0014: 8C          adc  a,h
0015: 29          add  hl,hl
0016: 29          add  hl,hl
0017: 01 00 E0    ld   bc,$E000
001A: 09          add  hl,bc
001B: 73          ld   (hl),e
001C: 23          inc  hl
001D: 72          ld   (hl),d
001E: 23          inc  hl
001F: 77          ld   (hl),a
0020: 23          inc  hl
0021: EB          ex   de,hl
0022: C1          pop  bc
0023: 2A FB C1    ld   hl,($C1FB)
0026: 09          add  hl,bc
0027: 29          add  hl,hl
0028: EB          ex   de,hl
0029: 72          ld   (hl),d
002A: C9          ret

002B: F5          push af
002C: DB 00       in   a,($00)
002E: 0F          rrca
002F: 38 FB       jr   c,$002C
0031: DB 00       in   a,($00)
0033: 0F          rrca
0034: 30 FB       jr   nc,$0031
0036: F1          pop  af
0037: C9          ret

0038: D3 06       out  ($06),a
003A: F5          push af
003B: 21 A7 C7    ld   hl,$C7A7
003E: 06 06       ld   b,$06
0040: 7E          ld   a,(hl)
0041: B7          or   a
0042: 28 36       jr   z,$007A
0044: C5          push bc
0045: E5          push hl
0046: 6F          ld   l,a
0047: 26 00       ld   h,$00
0049: 5F          ld   e,a
004A: 54          ld   d,h
004B: 29          add  hl,hl
004C: 29          add  hl,hl
004D: 19          add  hl,de
004E: 11 F0 36    ld   de,$36F0
0051: 19          add  hl,de
0052: 7E          ld   a,(hl)
0053: 23          inc  hl
0054: 4E          ld   c,(hl)
0055: 23          inc  hl
0056: 46          ld   b,(hl)
0057: 23          inc  hl
0058: 5E          ld   e,(hl)
0059: 23          inc  hl
005A: 56          ld   d,(hl)
005B: 2A 05 C2    ld   hl,($C205)
005E: 09          add  hl,bc
005F: 01 40 00    ld   bc,$0040
0062: 08          ex   af,af'
0063: 1A          ld   a,(de)
0064: FE FF       cp   $FF
0066: 28 0C       jr   z,$0074
0068: 77          ld   (hl),a
0069: 08          ex   af,af'
006A: CB DC       set  3,h
006C: 77          ld   (hl),a
006D: CB 9C       res  3,h
006F: 09          add  hl,bc
0070: 13          inc  de
0071: C3 62 00    jp   $0062
0074: E1          pop  hl
0075: 70          ld   (hl),b
0076: 23          inc  hl
0077: C1          pop  bc
0078: 10 C6       djnz $0040
007A: 2A 35 C1    ld   hl,($C135)
007D: 7C          ld   a,h
007E: B7          or   a
007F: 28 12       jr   z,$0093
0081: 11 00 C0    ld   de,$C000
0084: CD 9D 06    call $069D
0087: 2A 35 C1    ld   hl,($C135)
008A: CB DC       set  3,h
008C: CD 9D 06    call $069D
008F: AF          xor  a
0090: 32 36 C1    ld   ($C136),a
0093: 21 39 C1    ld   hl,$C139
0096: 7E          ld   a,(hl)
0097: B7          or   a
0098: 28 27       jr   z,$00C1
009A: 36 00       ld   (hl),$00
009C: 47          ld   b,a
009D: 23          inc  hl
009E: 4E          ld   c,(hl)
009F: 2A 37 C1    ld   hl,($C137)
00A2: ED 5B 3B C1 ld   de,($C13B)
00A6: C5          push bc
00A7: E5          push hl
00A8: 1A          ld   a,(de)
00A9: 77          ld   (hl),a
00AA: 13          inc  de
00AB: CB DC       set  3,h
00AD: 1A          ld   a,(de)
00AE: 77          ld   (hl),a
00AF: CB 9C       res  3,h
00B1: 13          inc  de
00B2: 3E 40       ld   a,$40
00B4: 85          add  a,l
00B5: 6F          ld   l,a
00B6: 30 01       jr   nc,$00B9
00B8: 24          inc  h
00B9: 0D          dec  c
00BA: 20 EC       jr   nz,$00A8
00BC: E1          pop  hl
00BD: 23          inc  hl
00BE: C1          pop  bc
00BF: 10 E5       djnz $00A6
00C1: 2A 32 C1    ld   hl,($C132)
00C4: 22 00 E8    ld   ($E800),hl
00C7: 3A 34 C1    ld   a,($C134)
00CA: 32 02 E8    ld   ($E802),a
00CD: 3A 1B C2    ld   a,($C21B)
00D0: E6 02       and  $02
00D2: C2 46 01    jp   nz,$0146
00D5: 01 40 00    ld   bc,$0040
00D8: 3A 1D C2    ld   a,($C21D)
00DB: E6 40       and  $40
00DD: 20 20       jr   nz,$00FF
00DF: 2A 05 C2    ld   hl,($C205)
00E2: 11 62 F0    ld   de,$F062
00E5: 19          add  hl,de
00E6: 11 54 C1    ld   de,$C154
00E9: 1A          ld   a,(de)
00EA: 77          ld   (hl),a
00EB: 1C          inc  e
00EC: 09          add  hl,bc
00ED: 1A          ld   a,(de)
00EE: 77          ld   (hl),a
00EF: 1C          inc  e
00F0: 09          add  hl,bc
00F1: 1A          ld   a,(de)
00F2: 77          ld   (hl),a
00F3: 1C          inc  e
00F4: 09          add  hl,bc
00F5: 1A          ld   a,(de)
00F6: 77          ld   (hl),a
00F7: 1C          inc  e
00F8: 09          add  hl,bc
00F9: 1A          ld   a,(de)
00FA: 77          ld   (hl),a
00FB: 1C          inc  e
00FC: 09          add  hl,bc
00FD: 1A          ld   a,(de)
00FE: 77          ld   (hl),a
00FF: 2A 05 C2    ld   hl,($C205)
0102: 11 22 F3    ld   de,$F322
0105: 19          add  hl,de
0106: 11 5A C1    ld   de,$C15A
0109: 1A          ld   a,(de)
010A: 77          ld   (hl),a
010B: 1C          inc  e
010C: 09          add  hl,bc
010D: 1A          ld   a,(de)
010E: 77          ld   (hl),a
010F: 1C          inc  e
0110: 09          add  hl,bc
0111: 1A          ld   a,(de)
0112: 77          ld   (hl),a
0113: 1C          inc  e
0114: 09          add  hl,bc
0115: 1A          ld   a,(de)
0116: 77          ld   (hl),a
0117: 1C          inc  e
0118: 09          add  hl,bc
0119: 1A          ld   a,(de)
011A: 77          ld   (hl),a
011B: 1C          inc  e
011C: 09          add  hl,bc
011D: 1A          ld   a,(de)
011E: 77          ld   (hl),a
011F: 3A 1D C2    ld   a,($C21D)
0122: E6 40       and  $40
0124: 28 20       jr   z,$0146
0126: 2A 05 C2    ld   hl,($C205)
0129: 11 A2 F5    ld   de,$F5A2
012C: 19          add  hl,de
012D: 11 60 C1    ld   de,$C160
0130: 1A          ld   a,(de)
0131: 77          ld   (hl),a
0132: 1C          inc  e
0133: 09          add  hl,bc
0134: 1A          ld   a,(de)
0135: 77          ld   (hl),a
0136: 1C          inc  e
0137: 09          add  hl,bc
0138: 1A          ld   a,(de)
0139: 77          ld   (hl),a
013A: 1C          inc  e
013B: 09          add  hl,bc
013C: 1A          ld   a,(de)
013D: 77          ld   (hl),a
013E: 1C          inc  e
013F: 09          add  hl,bc
0140: 1A          ld   a,(de)
0141: 77          ld   (hl),a
0142: 1C          inc  e
0143: 09          add  hl,bc
0144: 1A          ld   a,(de)
0145: 77          ld   (hl),a
0146: 3A 42 C1    ld   a,($C142)
0149: B7          or   a
014A: 28 31       jr   z,$017D
014C: 2A 43 C1    ld   hl,($C143)
014F: 3A 45 C1    ld   a,($C145)
0152: 77          ld   (hl),a
0153: 11 40 00    ld   de,$0040
0156: 19          add  hl,de
0157: 3A 46 C1    ld   a,($C146)
015A: 77          ld   (hl),a
015B: 19          add  hl,de
015C: 3A 47 C1    ld   a,($C147)
015F: 77          ld   (hl),a
0160: 01 45 F4    ld   bc,$F445
0163: 2A 05 C2    ld   hl,($C205)
0166: 09          add  hl,bc
0167: 3A 48 C1    ld   a,($C148)
016A: 77          ld   (hl),a
016B: 2B          dec  hl
016C: 3A 49 C1    ld   a,($C149)
016F: 77          ld   (hl),a
0170: 11 C1 FF    ld   de,$FFC1
0173: 19          add  hl,de
0174: 3A 4A C1    ld   a,($C14A)
0177: 77          ld   (hl),a
0178: 2B          dec  hl
0179: 3A 4B C1    ld   a,($C14B)
017C: 77          ld   (hl),a
017D: 21 24 C1    ld   hl,$C124
0180: 7E          ld   a,(hl)
0181: 23          inc  hl
0182: BE          cp   (hl)
0183: 28 2C       jr   z,$01B1
0185: 34          inc  (hl)
0186: 2A 26 C1    ld   hl,($C126)
0189: 3E 18       ld   a,$18
018B: 36 52       ld   (hl),$52
018D: CB DC       set  3,h
018F: 77          ld   (hl),a
0190: CB 9C       res  3,h
0192: 23          inc  hl
0193: 36 50       ld   (hl),$50
0195: CB DC       set  3,h
0197: 77          ld   (hl),a
0198: CB 9C       res  3,h
019A: 11 3F 00    ld   de,$003F
019D: 19          add  hl,de
019E: 36 53       ld   (hl),$53
01A0: CB DC       set  3,h
01A2: 77          ld   (hl),a
01A3: CB 9C       res  3,h
01A5: 23          inc  hl
01A6: 36 51       ld   (hl),$51
01A8: CB DC       set  3,h
01AA: 77          ld   (hl),a
01AB: CB 9C       res  3,h
01AD: 19          add  hl,de
01AE: 22 26 C1    ld   ($C126),hl
01B1: 21 4A C2    ld   hl,$C24A
01B4: 7E          ld   a,(hl)
01B5: FE 03       cp   $03
01B7: 20 2E       jr   nz,$01E7
01B9: 36 01       ld   (hl),$01
01BB: 2A 05 C2    ld   hl,($C205)
01BE: 11 81 F6    ld   de,$F681
01C1: 19          add  hl,de
01C2: 0E 98       ld   c,$98
01C4: 36 6E       ld   (hl),$6E
01C6: CB DC       set  3,h
01C8: 71          ld   (hl),c
01C9: 23          inc  hl
01CA: 71          ld   (hl),c
01CB: CB 9C       res  3,h
01CD: 36 6C       ld   (hl),$6C
01CF: 11 3F 00    ld   de,$003F
01D2: 19          add  hl,de
01D3: 36 6F       ld   (hl),$6F
01D5: CB DC       set  3,h
01D7: 71          ld   (hl),c
01D8: 23          inc  hl
01D9: 71          ld   (hl),c
01DA: CB 9C       res  3,h
01DC: 36 6D       ld   (hl),$6D
01DE: 19          add  hl,de
01DF: 3A 30 C2    ld   a,($C230)
01E2: 77          ld   (hl),a
01E3: CB DC       set  3,h
01E5: 36 64       ld   (hl),$64
01E7: 3A 4B C2    ld   a,($C24B)
01EA: B7          or   a
01EB: 28 0C       jr   z,$01F9
01ED: 3A 4C C2    ld   a,($C24C)
01F0: 21 0B F1    ld   hl,$F10B
01F3: 01 06 16    ld   bc,$1606
01F6: CD A1 05    call $05A1
01F9: 11 4C C1    ld   de,$C14C
01FC: 1A          ld   a,(de)
01FD: B7          or   a
01FE: 28 1B       jr   z,$021B
0200: 47          ld   b,a
0201: 21 00 C8    ld   hl,$C800
0204: 7E          ld   a,(hl)
0205: 3C          inc  a
0206: 20 13       jr   nz,$021B
0208: 70          ld   (hl),b
0209: 21 4D C1    ld   hl,$C14D
020C: ED A0       ldi
020E: ED A0       ldi
0210: ED A0       ldi
0212: ED A0       ldi
0214: ED A0       ldi
0216: ED A0       ldi
0218: ED A0       ldi
021A: 12          ld   (de),a
021B: 3E 01       ld   a,$01
021D: 32 D5 C0    ld   ($C0D5),a
0220: 2A D6 C0    ld   hl,($C0D6)
0223: 23          inc  hl
0224: 22 D6 C0    ld   ($C0D6),hl
0227: 21 06 C8    ld   hl,$C806
022A: 7E          ld   a,(hl)
022B: 36 FF       ld   (hl),$FF
022D: B7          or   a
022E: CA 38 02    jp   z,$0238
0231: 3A DF C1    ld   a,($C1DF)
0234: B7          or   a
0235: CA 00 00    jp   z,$0000
0238: DB 00       in   a,($00)
023A: 0F          rrca
023B: 38 FB       jr   c,$0238
023D: F1          pop  af
023E: FB          ei
023F: C9          ret
0240: 31 00 C8    ld   sp,$C800
0243: CD CD 07    call $07CD
0246: CD 31 05    call $0531
0249: CD 9D 10    call $109D
024C: CD F3 0D    call $0DF3
024F: CD 01 0E    call $0E01
0252: 3A 3C C0    ld   a,($C03C)
0255: 87          add  a,a
0256: 87          add  a,a
0257: 5F          ld   e,a
0258: 21 41 C0    ld   hl,$C041
025B: 85          add  a,l
025C: 6F          ld   l,a
025D: 7E          ld   a,(hl)
025E: 07          rlca
025F: 30 23       jr   nc,$0284
0261: E5          push hl
0262: 7B          ld   a,e
0263: 11 3D C0    ld   de,$C03D
0266: ED A0       ldi
0268: ED A0       ldi
026A: ED A0       ldi
026C: ED A0       ldi
026E: 21 00 03    ld   hl,$0300
0271: 85          add  a,l
0272: 6F          ld   l,a
0273: 11 78 02    ld   de,$0278
0276: D5          push de
0277: E9          jp   (hl)
0278: D1          pop  de
0279: 21 3D C0    ld   hl,$C03D
027C: ED A0       ldi
027E: ED A0       ldi
0280: ED A0       ldi
0282: ED A0       ldi
0284: 21 3C C0    ld   hl,$C03C
0287: 34          inc  (hl)
0288: 7E          ld   a,(hl)
0289: FE 25       cp   $25
028B: C2 55 02    jp   nz,$0255
028E: CD 2D 0A    call $0A2D
0291: AF          xor  a
0292: 32 3C C0    ld   ($C03C),a
0295: CD E0 17    call $17E0
0298: 3A 1B C2    ld   a,($C21B)
029B: E6 04       and  $04
029D: 28 14       jr   z,$02B3
029F: 3A 2B C2    ld   a,($C22B)
02A2: 4F          ld   c,a
02A3: 3A D6 C0    ld   a,($C0D6)
02A6: E6 3F       and  $3F
02A8: 28 05       jr   z,$02AF
02AA: EE 20       xor  $20
02AC: 20 05       jr   nz,$02B3
02AE: 0C          inc  c
02AF: 79          ld   a,c
02B0: CD 5E 06    call $065E
02B3: 3E 01       ld   a,$01
02B5: CD E4 04    call $04E4
02B8: C3 52 02    jp   $0252

0300: C3 17 11    jp   $1117
0303: 00          nop
0304: C3 C8 15    jp   $15C8
0307: 00          nop
0308: C3 04 1A    jp   $1A04
030B: 00          nop
030C: C3 56 27    jp   $2756
030F: 00          nop
0310: C3 56 27    jp   $2756
0313: 00          nop
0314: C3 4C 29    jp   $294C
0317: 00          nop
0318: C3 4C 29    jp   $294C
031B: 00          nop
031C: C3 4C 29    jp   $294C
031F: 00          nop
0320: C3 4C 29    jp   $294C
0323: 00          nop
0324: C3 4C 29    jp   $294C
0327: 00          nop
0328: C3 4C 29    jp   $294C
032B: 00          nop
032C: C3 4C 29    jp   $294C
032F: 00          nop
0330: C3 4C 29    jp   $294C
0333: 00          nop
0334: C3 DE 2B    jp   $2BDE
0337: 00          nop
0338: C3 DE 2B    jp   $2BDE
033B: 00          nop
033C: C3 DE 2B    jp   $2BDE
033F: 00          nop
0340: C3 DE 2B    jp   $2BDE
0343: 00          nop
0344: C3 91 2D    jp   $2D91
0347: 00          nop
0348: C3 91 2D    jp   $2D91
034B: 00          nop
034C: C3 91 2D    jp   $2D91
034F: 00          nop
0350: C3 91 2D    jp   $2D91
0353: 00          nop
0354: C3 52 2F    jp   $2F52
0357: 00          nop
0358: C3 52 2F    jp   $2F52
035B: 00          nop
035C: C3 40 32    jp   $3240
035F: 00          nop
0360: C3 25 3D    jp   $3D25
0363: 00          nop
0364: C3 25 3D    jp   $3D25
0367: 00          nop
0368: C3 25 3D    jp   $3D25
036B: 00          nop
036C: C3 25 3D    jp   $3D25
036F: 00          nop
0370: C3 1D 3F    jp   $3F1D
0373: 00          nop
0374: C3 1D 3F    jp   $3F1D
0377: 00          nop
0378: C3 1D 3F    jp   $3F1D
037B: 00          nop
037C: C3 1D 3F    jp   $3F1D
037F: 00          nop
0380: C3 1D 3F    jp   $3F1D
0383: 00          nop
0384: C3 1D 3F    jp   $3F1D
0387: 00          nop
0388: C3 1D 3F    jp   $3F1D
038B: 00          nop
038C: C3 1D 3F    jp   $3F1D
038F: 00          nop
0390: C3 52 0C    jp   $0C52
0393: 21 A5 C7    ld   hl,$C7A5
0396: 7B          ld   a,e
0397: 86          add  a,(hl)
0398: 27          daa
0399: 77          ld   (hl),a
039A: 23          inc  hl
039B: 7A          ld   a,d
039C: 8E          adc  a,(hl)
039D: 27          daa
039E: 77          ld   (hl),a
039F: C9          ret
03A0: DD 4E 01    ld   c,(ix+$01)
03A3: DD 46 02    ld   b,(ix+$02)
03A6: 2A F7 C1    ld   hl,($C1F7)
03A9: 09          add  hl,bc
03AA: 29          add  hl,hl
03AB: 5C          ld   e,h
03AC: 16 00       ld   d,$00
03AE: CB 12       rl   d
03B0: DD 4E 04    ld   c,(ix+$04)
03B3: DD 46 05    ld   b,(ix+$05)
03B6: 2A FF C1    ld   hl,($C1FF)
03B9: 09          add  hl,bc
03BA: 29          add  hl,hl
03BB: 7C          ld   a,h
03BC: 01 00 E0    ld   bc,$E000
03BF: 61          ld   h,c
03C0: DD 6E 0F    ld   l,(ix+$0f)
03C3: 29          add  hl,hl
03C4: 29          add  hl,hl
03C5: 09          add  hl,bc
03C6: 47          ld   b,a
03C7: DD 4E 00    ld   c,(ix+$00)
03CA: 71          ld   (hl),c
03CB: 23          inc  hl
03CC: 73          ld   (hl),e
03CD: DD 7E 03    ld   a,(ix+$03)
03D0: B2          or   d
03D1: 23          inc  hl
03D2: 77          ld   (hl),a
03D3: 23          inc  hl
03D4: 70          ld   (hl),b
03D5: 0C          inc  c
03D6: 23          inc  hl
03D7: 71          ld   (hl),c
03D8: 23          inc  hl
03D9: 73          ld   (hl),e
03DA: 23          inc  hl
03DB: 77          ld   (hl),a
03DC: 78          ld   a,b
03DD: C6 10       add  a,$10
03DF: 23          inc  hl
03E0: 77          ld   (hl),a
03E1: 0C          inc  c
03E2: 23          inc  hl
03E3: 71          ld   (hl),c
03E4: 7B          ld   a,e
03E5: D6 10       sub  $10
03E7: 5F          ld   e,a
03E8: 30 01       jr   nc,$03EB
03EA: 15          dec  d
03EB: 23          inc  hl
03EC: 73          ld   (hl),e
03ED: DD 7E 03    ld   a,(ix+$03)
03F0: B2          or   d
03F1: 23          inc  hl
03F2: 77          ld   (hl),a
03F3: 23          inc  hl
03F4: 70          ld   (hl),b
03F5: 0C          inc  c
03F6: 23          inc  hl
03F7: 71          ld   (hl),c
03F8: 23          inc  hl
03F9: 73          ld   (hl),e
03FA: 23          inc  hl
03FB: 77          ld   (hl),a
03FC: 78          ld   a,b
03FD: C6 10       add  a,$10
03FF: 23          inc  hl
0400: 77          ld   (hl),a
0401: C9          ret
0402: 11 00 E0    ld   de,$E000
0405: 63          ld   h,e
0406: DD 6E 0F    ld   l,(ix+$0f)
0409: 29          add  hl,hl
040A: 29          add  hl,hl
040B: 19          add  hl,de
040C: EB          ex   de,hl
040D: DD E5       push ix
040F: E1          pop  hl
0410: ED A0       ldi
0412: 4E          ld   c,(hl)
0413: 23          inc  hl
0414: 46          ld   b,(hl)
0415: E5          push hl
0416: 2A F5 C1    ld   hl,($C1F5)
0419: 09          add  hl,bc
041A: 29          add  hl,hl
041B: 7C          ld   a,h
041C: 12          ld   (de),a
041D: E1          pop  hl
041E: 23          inc  hl
041F: 7E          ld   a,(hl)
0420: CE 00       adc  a,$00
0422: 13          inc  de
0423: 12          ld   (de),a
0424: 23          inc  hl
0425: 4E          ld   c,(hl)
0426: 23          inc  hl
0427: 46          ld   b,(hl)
0428: 2A FB C1    ld   hl,($C1FB)
042B: 09          add  hl,bc
042C: 29          add  hl,hl
042D: 7C          ld   a,h
042E: 13          inc  de
042F: 12          ld   (de),a
0430: C9          ret
0431: 01 00 E0    ld   bc,$E000
0434: 61          ld   h,c
0435: DD 6E 0F    ld   l,(ix+$0f)
0438: 29          add  hl,hl
0439: 29          add  hl,hl
043A: 09          add  hl,bc
043B: ED 4B 01 C2 ld   bc,($C201)
043F: 11 80 01    ld   de,$0180
0442: 70          ld   (hl),b
0443: 23          inc  hl
0444: 73          ld   (hl),e
0445: 23          inc  hl
0446: 72          ld   (hl),d
0447: 23          inc  hl
0448: 71          ld   (hl),c
0449: 23          inc  hl
044A: 70          ld   (hl),b
044B: 23          inc  hl
044C: 73          ld   (hl),e
044D: 23          inc  hl
044E: 72          ld   (hl),d
044F: 23          inc  hl
0450: 71          ld   (hl),c
0451: 23          inc  hl
0452: 70          ld   (hl),b
0453: 23          inc  hl
0454: 73          ld   (hl),e
0455: 23          inc  hl
0456: 72          ld   (hl),d
0457: 23          inc  hl
0458: 71          ld   (hl),c
0459: 23          inc  hl
045A: 70          ld   (hl),b
045B: 23          inc  hl
045C: 73          ld   (hl),e
045D: 23          inc  hl
045E: 72          ld   (hl),d
045F: 23          inc  hl
0460: 71          ld   (hl),c
0461: C9          ret
0462: 11 00 E0    ld   de,$E000
0465: 63          ld   h,e
0466: DD 6E 0F    ld   l,(ix+$0f)
0469: 29          add  hl,hl
046A: 29          add  hl,hl
046B: 19          add  hl,de
046C: ED 5B 01 C2 ld   de,($C201)
0470: 72          ld   (hl),d
0471: 23          inc  hl
0472: 36 80       ld   (hl),$80
0474: 23          inc  hl
0475: 36 01       ld   (hl),$01
0477: 23          inc  hl
0478: 73          ld   (hl),e
0479: C9          ret
047A: 11 00 E0    ld   de,$E000
047D: 63          ld   h,e
047E: 6F          ld   l,a
047F: 29          add  hl,hl
0480: 29          add  hl,hl
0481: 19          add  hl,de
0482: ED 5B 01 C2 ld   de,($C201)
0486: 72          ld   (hl),d
0487: 23          inc  hl
0488: 36 80       ld   (hl),$80
048A: 23          inc  hl
048B: 36 01       ld   (hl),$01
048D: 23          inc  hl
048E: 73          ld   (hl),e
048F: 00          nop
0490: C9          ret
0491: 3E 01       ld   a,$01
0493: CD E4 04    call $04E4
0496: AF          xor  a
0497: CD 7A 04    call $047A
049A: 21 00 E0    ld   hl,$E000
049D: 11 04 E0    ld   de,$E004
04A0: 01 FC 07    ld   bc,$07FC
04A3: ED B0       ldir
04A5: C9          ret
04A6: 01 00 00    ld   bc,$0000
04A9: C5          push bc
04AA: 4F          ld   c,a
04AB: 21 BB 02    ld   hl,$02BB
04AE: 85          add  a,l
04AF: 6F          ld   l,a
04B0: 46          ld   b,(hl)
04B1: 79          ld   a,c
04B2: 87          add  a,a
04B3: 87          add  a,a
04B4: 21 41 C0    ld   hl,$C041
04B7: 85          add  a,l
04B8: 6F          ld   l,a
04B9: 7E          ld   a,(hl)
04BA: 07          rlca
04BB: 30 05       jr   nc,$04C2
04BD: 0C          inc  c
04BE: 10 F1       djnz $04B1
04C0: C1          pop  bc
04C1: C9          ret
04C2: 79          ld   a,c
04C3: F6 80       or   $80
04C5: 77          ld   (hl),a
04C6: 23          inc  hl
04C7: 36 00       ld   (hl),$00
04C9: C1          pop  bc
04CA: 23          inc  hl
04CB: 71          ld   (hl),c
04CC: 23          inc  hl
04CD: 70          ld   (hl),b
04CE: C9          ret
04CF: E6 7F       and  $7F
04D1: 21 3C C0    ld   hl,$C03C
04D4: BE          cp   (hl)
04D5: 23          inc  hl
04D6: 28 09       jr   z,$04E1
04D8: 5F          ld   e,a
04D9: 87          add  a,a
04DA: 87          add  a,a
04DB: 21 41 C0    ld   hl,$C041
04DE: 85          add  a,l
04DF: 6F          ld   l,a
04E0: 7B          ld   a,e
04E1: 36 00       ld   (hl),$00
04E3: C9          ret
04E4: F5          push af
04E5: D3 07       out  ($07),a
04E7: 3A D5 C0    ld   a,($C0D5)
04EA: 3D          dec  a
04EB: 20 FA       jr   nz,$04E7
04ED: 32 D5 C0    ld   ($C0D5),a
04F0: F1          pop  af
04F1: 3D          dec  a
04F2: 20 F0       jr   nz,$04E4
04F4: C9          ret
04F5: 3A 1B C2    ld   a,($C21B)
04F8: 07          rlca
04F9: D8          ret  c
04FA: 3A 2A C2    ld   a,($C22A)
04FD: FE 0D       cp   $0D
04FF: 38 02       jr   c,$0503
0501: 3E 0C       ld   a,$0C
0503: 6F          ld   l,a
0504: 26 00       ld   h,$00
0506: 22 24 C1    ld   ($C124),hl
0509: 11 01 F0    ld   de,$F001
050C: 2A 05 C2    ld   hl,($C205)
050F: 19          add  hl,de
0510: 22 26 C1    ld   ($C126),hl
0513: 3E 03       ld   a,$03
0515: 32 4A C2    ld   ($C24A),a
0518: C9          ret
0519: 06 12       ld   b,$12
051B: 21 1F C2    ld   hl,$C21F
051E: 11 31 C2    ld   de,$C231
0521: 4E          ld   c,(hl)
0522: 1A          ld   a,(de)
0523: 77          ld   (hl),a
0524: 79          ld   a,c
0525: 12          ld   (de),a
0526: 23          inc  hl
0527: 13          inc  de
0528: 10 F7       djnz $0521
052A: C9          ret
052B: CD 2B 00    call $002B
052E: D3 04       out  ($04),a
0530: C9          ret
0531: CD 2B 00    call $002B
0534: D3 05       out  ($05),a
0536: C9          ret
0537: 3A 1B C2    ld   a,($C21B)
053A: 07          rlca
053B: 38 47       jr   c,$0584
053D: CD 54 0E    call $0E54
0540: 3A 09 C8    ld   a,($C809)
0543: E6 10       and  $10
0545: 21 07 C8    ld   hl,$C807
0548: 20 50       jr   nz,$059A
054A: 3A 1D C2    ld   a,($C21D)
054D: E6 40       and  $40
054F: 28 03       jr   z,$0554
0551: 21 08 C8    ld   hl,$C808
0554: 46          ld   b,(hl)
0555: AF          xor  a
0556: CB 40       bit  0,b
0558: CA 5D 05    jp   z,$055D
055B: F6 10       or   $10
055D: CB 48       bit  1,b
055F: CA 64 05    jp   z,$0564
0562: F6 20       or   $20
0564: CB 60       bit  4,b
0566: CA 6B 05    jp   z,$056B
0569: F6 01       or   $01
056B: CB 68       bit  5,b
056D: CA 72 05    jp   z,$0572
0570: F6 04       or   $04
0572: CB 70       bit  6,b
0574: CA 79 05    jp   z,$0579
0577: F6 02       or   $02
0579: CB 78       bit  7,b
057B: CA 80 05    jp   z,$0580
057E: F6 08       or   $08
0580: 32 43 C2    ld   ($C243),a
0583: C9          ret
0584: 2A D8 C0    ld   hl,($C0D8)
0587: 11 DA C0    ld   de,$C0DA
058A: 1A          ld   a,(de)
058B: B7          or   a
058C: 20 06       jr   nz,$0594
058E: 23          inc  hl
058F: 7E          ld   a,(hl)
0590: 23          inc  hl
0591: 22 D8 C0    ld   ($C0D8),hl
0594: 3D          dec  a
0595: 12          ld   (de),a
0596: 7E          ld   a,(hl)
0597: C3 80 05    jp   $0580
059A: 7E          ld   a,(hl)
059B: 23          inc  hl
059C: B6          or   (hl)
059D: 47          ld   b,a
059E: C3 55 05    jp   $0555
05A1: ED 5B 05 C2 ld   de,($C205)
05A5: 19          add  hl,de
05A6: C5          push bc
05A7: E5          push hl
05A8: 77          ld   (hl),a
05A9: 23          inc  hl
05AA: 0D          dec  c
05AB: 20 FB       jr   nz,$05A8
05AD: E1          pop  hl
05AE: 01 40 00    ld   bc,$0040
05B1: 09          add  hl,bc
05B2: C1          pop  bc
05B3: 10 F1       djnz $05A6
05B5: C9          ret
05B6: 21 00 D0    ld   hl,$D000
05B9: 11 C0 D7    ld   de,$D7C0
05BC: 06 10       ld   b,$10
05BE: C5          push bc
05BF: CD 06 06    call $0606
05C2: 01 40 00    ld   bc,$0040
05C5: 09          add  hl,bc
05C6: EB          ex   de,hl
05C7: 01 C0 FF    ld   bc,$FFC0
05CA: 09          add  hl,bc
05CB: EB          ex   de,hl
05CC: C1          pop  bc
05CD: 10 EF       djnz $05BE
05CF: 21 01 F0    ld   hl,$F001
05D2: 06 08       ld   b,$08
05D4: 3E 60       ld   a,$60
05D6: 08          ex   af,af'
05D7: 3E 2D       ld   a,$2D
05D9: C5          push bc
05DA: E5          push hl
05DB: 01 21 04    ld   bc,$0421
05DE: CD 2B 00    call $002B
05E1: CD 14 06    call $0614
05E4: E1          pop  hl
05E5: 01 00 01    ld   bc,$0100
05E8: 09          add  hl,bc
05E9: C1          pop  bc
05EA: 10 ED       djnz $05D9
05EC: 21 00 00    ld   hl,$0000
05EF: 22 32 C1    ld   ($C132),hl
05F2: 3A 04 C2    ld   a,($C204)
05F5: 32 34 C1    ld   ($C134),a
05F8: 21 A7 C7    ld   hl,$C7A7
05FB: 11 A8 C7    ld   de,$C7A8
05FE: 01 05 00    ld   bc,$0005
0601: 36 00       ld   (hl),$00
0603: ED B0       ldir
0605: C9          ret

0606: 3E 08       ld   a,$08
0608: 08          ex   af,af'
0609: 3E 00       ld   a,$00
060B: 01 40 01    ld   bc,$0140
060E: CD 2B 00    call $002B
0611: CD 14 06    call $0614
0614: D5          push de
0615: E5          push hl
0616: C5          push bc
0617: CD A6 05    call $05A6
061A: 08          ex   af,af'
061B: C1          pop  bc
061C: E1          pop  hl
061D: E5          push hl
061E: CB DC       set  3,h
0620: C5          push bc
0621: CD A6 05    call $05A6
0624: 08          ex   af,af'
0625: C1          pop  bc
0626: D1          pop  de
0627: E1          pop  hl
0628: C9          ret
0629: 3E 60       ld   a,$60
062B: 21 15 F0    ld   hl,$F015
062E: 01 0A 10    ld   bc,$100A
0631: CD 2B 00    call $002B
0634: CD A6 05    call $05A6
0637: 21 15 F4    ld   hl,$F415
063A: 01 0A 10    ld   bc,$100A
063D: CD 2B 00    call $002B
0640: C3 A6 05    jp   $05A6
0643: 21 01 F0    ld   hl,$F001
0646: 06 04       ld   b,$04
0648: 3E 60       ld   a,$60
064A: C5          push bc
064B: E5          push hl
064C: 01 23 08    ld   bc,$0823
064F: CD 2B 00    call $002B
0652: CD A6 05    call $05A6
0655: E1          pop  hl
0656: 01 00 02    ld   bc,$0200
0659: 09          add  hl,bc
065A: C1          pop  bc
065B: 10 ED       djnz $064A
065D: C9          ret
065E: 4F          ld   c,a
065F: 21 A7 C7    ld   hl,$C7A7
0662: 06 06       ld   b,$06
0664: 7E          ld   a,(hl)
0665: B7          or   a
0666: 28 04       jr   z,$066C
0668: 23          inc  hl
0669: 10 F9       djnz $0664
066B: C9          ret
066C: 71          ld   (hl),c
066D: C9          ret
066E: 3E 10       ld   a,$10
0670: CD 5E 06    call $065E
0673: CD 2B 00    call $002B
0676: 2A 05 C2    ld   hl,($C205)
0679: 11 42 F4    ld   de,$F442
067C: 19          add  hl,de
067D: 3A 03 C8    ld   a,($C803)
0680: 06 00       ld   b,$00
0682: 04          inc  b
0683: D6 0A       sub  $0A
0685: 30 FB       jr   nc,$0682
0687: 05          dec  b
0688: 20 02       jr   nz,$068C
068A: 06 2D       ld   b,$2D
068C: 70          ld   (hl),b
068D: CB DC       set  3,h
068F: 36 64       ld   (hl),$64
0691: 11 40 00    ld   de,$0040
0694: 19          add  hl,de
0695: 36 64       ld   (hl),$64
0697: CB 9C       res  3,h
0699: C6 0A       add  a,$0A
069B: 77          ld   (hl),a
069C: C9          ret
069D: 01 40 00    ld   bc,$0040
06A0: 1A          ld   a,(de)
06A1: 77          ld   (hl),a
06A2: 1C          inc  e
06A3: 09          add  hl,bc
06A4: 1A          ld   a,(de)
06A5: 77          ld   (hl),a
06A6: 1C          inc  e
06A7: 09          add  hl,bc
06A8: 1A          ld   a,(de)
06A9: 77          ld   (hl),a
06AA: 1C          inc  e
06AB: 09          add  hl,bc
06AC: 1A          ld   a,(de)
06AD: 77          ld   (hl),a
06AE: 1C          inc  e
06AF: 09          add  hl,bc
06B0: 1A          ld   a,(de)
06B1: 77          ld   (hl),a
06B2: 1C          inc  e
06B3: 09          add  hl,bc
06B4: 1A          ld   a,(de)
06B5: 77          ld   (hl),a
06B6: 1C          inc  e
06B7: 09          add  hl,bc
06B8: 1A          ld   a,(de)
06B9: 77          ld   (hl),a
06BA: 1C          inc  e
06BB: 09          add  hl,bc
06BC: 1A          ld   a,(de)
06BD: 77          ld   (hl),a
06BE: 1C          inc  e
06BF: 09          add  hl,bc
06C0: 1A          ld   a,(de)
06C1: 77          ld   (hl),a
06C2: 1C          inc  e
06C3: 09          add  hl,bc
06C4: 1A          ld   a,(de)
06C5: 77          ld   (hl),a
06C6: 1C          inc  e
06C7: 09          add  hl,bc
06C8: 1A          ld   a,(de)
06C9: 77          ld   (hl),a
06CA: 1C          inc  e
06CB: 09          add  hl,bc
06CC: 1A          ld   a,(de)
06CD: 77          ld   (hl),a
06CE: 1C          inc  e
06CF: 09          add  hl,bc
06D0: 1A          ld   a,(de)
06D1: 77          ld   (hl),a
06D2: 1C          inc  e
06D3: 09          add  hl,bc
06D4: 1A          ld   a,(de)
06D5: 77          ld   (hl),a
06D6: 1C          inc  e
06D7: 09          add  hl,bc
06D8: 1A          ld   a,(de)
06D9: 77          ld   (hl),a
06DA: 1C          inc  e
06DB: 09          add  hl,bc
06DC: 1A          ld   a,(de)
06DD: 77          ld   (hl),a
06DE: 1C          inc  e
06DF: 09          add  hl,bc
06E0: 1A          ld   a,(de)
06E1: 77          ld   (hl),a
06E2: 1C          inc  e
06E3: 09          add  hl,bc
06E4: 1A          ld   a,(de)
06E5: 77          ld   (hl),a
06E6: 1C          inc  e
06E7: 09          add  hl,bc
06E8: 1A          ld   a,(de)
06E9: 77          ld   (hl),a
06EA: 1C          inc  e
06EB: 09          add  hl,bc
06EC: 1A          ld   a,(de)
06ED: 77          ld   (hl),a
06EE: 1C          inc  e
06EF: 09          add  hl,bc
06F0: 1A          ld   a,(de)
06F1: 77          ld   (hl),a
06F2: 1C          inc  e
06F3: 09          add  hl,bc
06F4: 1A          ld   a,(de)
06F5: 77          ld   (hl),a
06F6: 1C          inc  e
06F7: 09          add  hl,bc
06F8: 1A          ld   a,(de)
06F9: 77          ld   (hl),a
06FA: 1C          inc  e
06FB: 09          add  hl,bc
06FC: 1A          ld   a,(de)
06FD: 77          ld   (hl),a
06FE: 1C          inc  e
06FF: 09          add  hl,bc
0700: 1A          ld   a,(de)
0701: 77          ld   (hl),a
0702: 1C          inc  e
0703: 09          add  hl,bc
0704: 1A          ld   a,(de)
0705: 77          ld   (hl),a
0706: 1C          inc  e
0707: 09          add  hl,bc
0708: 1A          ld   a,(de)
0709: 77          ld   (hl),a
070A: 1C          inc  e
070B: 09          add  hl,bc
070C: 1A          ld   a,(de)
070D: 77          ld   (hl),a
070E: 1C          inc  e
070F: 09          add  hl,bc
0710: 1A          ld   a,(de)
0711: 77          ld   (hl),a
0712: 1C          inc  e
0713: 09          add  hl,bc
0714: 1A          ld   a,(de)
0715: 77          ld   (hl),a
0716: 1C          inc  e
0717: C9          ret
0718: 3E 01       ld   a,$01
071A: 32 66 C1    ld   ($C166),a
071D: 11 67 C1    ld   de,$C167
0720: ED 4B 05 C2 ld   bc,($C205)
0724: C5          push bc
0725: 21 22 F8    ld   hl,$F822
0728: 09          add  hl,bc
0729: E5          push hl
072A: CD 2B 00    call $002B
072D: CD 45 07    call $0745
0730: E1          pop  hl
0731: CB 9C       res  3,h
0733: CD 45 07    call $0745
0736: C1          pop  bc
0737: 21 23 F8    ld   hl,$F823
073A: 09          add  hl,bc
073B: E5          push hl
073C: CD 2B 00    call $002B
073F: CD 45 07    call $0745
0742: E1          pop  hl
0743: CB 9C       res  3,h
0745: 01 40 00    ld   bc,$0040
0748: 3E 1E       ld   a,$1E
074A: 08          ex   af,af'
074B: 7E          ld   a,(hl)
074C: 12          ld   (de),a
074D: 13          inc  de
074E: 09          add  hl,bc
074F: 08          ex   af,af'
0750: 3D          dec  a
0751: 20 F7       jr   nz,$074A
0753: C9          ret
0754: AF          xor  a
0755: 32 66 C1    ld   ($C166),a
0758: 11 67 C1    ld   de,$C167
075B: ED 4B 05 C2 ld   bc,($C205)
075F: C5          push bc
0760: 21 22 F8    ld   hl,$F822
0763: 09          add  hl,bc
0764: E5          push hl
0765: CD 2B 00    call $002B
0768: CD 80 07    call $0780
076B: E1          pop  hl
076C: CB 9C       res  3,h
076E: CD 80 07    call $0780
0771: C1          pop  bc
0772: 21 23 F8    ld   hl,$F823
0775: 09          add  hl,bc
0776: E5          push hl
0777: CD 2B 00    call $002B
077A: CD 80 07    call $0780
077D: E1          pop  hl
077E: CB 9C       res  3,h
0780: 01 40 00    ld   bc,$0040
0783: 3E 1E       ld   a,$1E
0785: 08          ex   af,af'
0786: 1A          ld   a,(de)
0787: 77          ld   (hl),a
0788: 13          inc  de
0789: 09          add  hl,bc
078A: 08          ex   af,af'
078B: 3D          dec  a
078C: 20 F7       jr   nz,$0785
078E: C9          ret
078F: 3E 60       ld   a,$60
0791: CD 2B 00    call $002B
0794: ED 5B 05 C2 ld   de,($C205)
0798: 19          add  hl,de
0799: 11 40 00    ld   de,$0040
079C: 77          ld   (hl),a
079D: 19          add  hl,de
079E: 10 FC       djnz $079C
07A0: C9          ret
07A1: 2A 05 C2    ld   hl,($C205)
07A4: 11 1D F1    ld   de,$F11D
07A7: 19          add  hl,de
07A8: 11 70 68    ld   de,$6870
07AB: CD AE 07    call $07AE
07AE: 01 16 04    ld   bc,$0416
07B1: CD 2B 00    call $002B
07B4: C5          push bc
07B5: E5          push hl
07B6: 73          ld   (hl),e
07B7: CB DC       set  3,h
07B9: 72          ld   (hl),d
07BA: CB 9C       res  3,h
07BC: 13          inc  de
07BD: 3E 40       ld   a,$40
07BF: 85          add  a,l
07C0: 6F          ld   l,a
07C1: 30 01       jr   nc,$07C4
07C3: 24          inc  h
07C4: 0D          dec  c
07C5: 20 EF       jr   nz,$07B6
07C7: E1          pop  hl
07C8: 2B          dec  hl
07C9: C1          pop  bc
07CA: 10 E8       djnz $07B4
07CC: C9          ret
07CD: 21 00 D0    ld   hl,$D000
07D0: 11 01 D0    ld   de,$D001
07D3: 01 FF 07    ld   bc,$07FF
07D6: 36 00       ld   (hl),$00
07D8: ED B0       ldir
07DA: 21 00 D8    ld   hl,$D800
07DD: 11 01 D8    ld   de,$D801
07E0: 01 FF 07    ld   bc,$07FF
07E3: 36 08       ld   (hl),$08
07E5: ED B0       ldir
07E7: 21 00 F0    ld   hl,$F000
07EA: 11 01 F0    ld   de,$F001
07ED: 01 FF 07    ld   bc,$07FF
07F0: 36 2D       ld   (hl),$2D
07F2: ED B0       ldir
07F4: 21 00 F8    ld   hl,$F800
07F7: 11 01 F8    ld   de,$F801
07FA: 01 FF 07    ld   bc,$07FF
07FD: 36 60       ld   (hl),$60
07FF: ED B0       ldir
0801: 3E 60       ld   a,$60
0803: 21 00 F0    ld   hl,$F000
0806: 01 01 20    ld   bc,$2001
0809: CD A6 05    call $05A6
080C: 01 01 20    ld   bc,$2001
080F: 21 24 F0    ld   hl,$F024
0812: C3 A6 05    jp   $05A6
0815: 4F          ld   c,a
0816: 3A 09 C8    ld   a,($C809)
0819: E6 08       and  $08
081B: 20 07       jr   nz,$0824
081D: 79          ld   a,c
081E: E6 3F       and  $3F
0820: FE 11       cp   $11
0822: 28 05       jr   z,$0829
0824: 3A 1B C2    ld   a,($C21B)
0827: 07          rlca
0828: D8          ret  c
0829: 79          ld   a,c
082A: 21 4C C1    ld   hl,$C14C
082D: FE FE       cp   $FE
082F: 28 2F       jr   z,$0860
0831: 07          rlca
0832: 30 0E       jr   nc,$0842
0834: CB 3F       srl  a
0836: 06 08       ld   b,$08
0838: E5          push hl
0839: BE          cp   (hl)
083A: 20 02       jr   nz,$083E
083C: 36 00       ld   (hl),$00
083E: 23          inc  hl
083F: 10 F8       djnz $0839
0841: E1          pop  hl
0842: 06 06       ld   b,$06
0844: FE 03       cp   $03
0846: 28 0D       jr   z,$0855
0848: FE 04       cp   $04
084A: 28 09       jr   z,$0855
084C: FE 01       cp   $01
084E: 28 04       jr   z,$0854
0850: FE 02       cp   $02
0852: 20 02       jr   nz,$0856
0854: 04          inc  b
0855: 04          inc  b
0856: 7E          ld   a,(hl)
0857: B7          or   a
0858: 20 02       jr   nz,$085C
085A: 71          ld   (hl),c
085B: C9          ret
085C: 23          inc  hl
085D: 10 F7       djnz $0856
085F: C9          ret
0860: 71          ld   (hl),c
0861: 23          inc  hl
0862: 36 00       ld   (hl),$00
0864: 21 00 00    ld   hl,$0000
0867: 22 4E C1    ld   ($C14E),hl
086A: 22 50 C1    ld   ($C150),hl
086D: 22 52 C1    ld   ($C152),hl
0870: C9          ret
0871: DD E5       push ix
0873: 3E 13       ld   a,$13
0875: CD 5E 06    call $065E
0878: 01 14 0A    ld   bc,$0A14
087B: 11 59 F2    ld   de,$F259
087E: 2A 05 C2    ld   hl,($C205)
0881: 19          add  hl,de
0882: EB          ex   de,hl
0883: 21 E0 C0    ld   hl,$C0E0
0886: DD 21 1A C1 ld   ix,$C11A
088A: FD 21 FC C0 ld   iy,$C0FC
088E: C5          push bc
088F: 79          ld   a,c
0890: D9          exx
0891: CD 5E 06    call $065E
0894: D9          exx
0895: 79          ld   a,c
0896: C6 0C       add  a,$0C
0898: D9          exx
0899: CD 5E 06    call $065E
089C: D9          exx
089D: D5          push de
089E: E5          push hl
089F: DD E5       push ix
08A1: FD E5       push iy
08A3: 3E 01       ld   a,$01
08A5: CD E4 04    call $04E4
08A8: FD E1       pop  iy
08AA: DD E1       pop  ix
08AC: E1          pop  hl
08AD: D1          pop  de
08AE: 0E 01       ld   c,$01
08B0: CD 2B 00    call $002B
08B3: CD 7F 11    call $117F
08B6: 01 06 00    ld   bc,$0006
08B9: 09          add  hl,bc
08BA: 01 80 01    ld   bc,$0180
08BD: EB          ex   de,hl
08BE: 09          add  hl,bc
08BF: EB          ex   de,hl
08C0: DD 7E 00    ld   a,(ix+$00)
08C3: 06 03       ld   b,$03
08C5: 0E FF       ld   c,$FF
08C7: D6 0A       sub  $0A
08C9: 0C          inc  c
08CA: 30 FB       jr   nc,$08C7
08CC: C6 0A       add  a,$0A
08CE: 20 06       jr   nz,$08D6
08D0: 0D          dec  c
08D1: 0C          inc  c
08D2: 20 02       jr   nz,$08D6
08D4: 3E 2D       ld   a,$2D
08D6: CD 2B 00    call $002B
08D9: 12          ld   (de),a
08DA: 79          ld   a,c
08DB: E5          push hl
08DC: 21 C0 FF    ld   hl,$FFC0
08DF: 19          add  hl,de
08E0: EB          ex   de,hl
08E1: E1          pop  hl
08E2: 10 E1       djnz $08C5
08E4: 01 C0 01    ld   bc,$01C0
08E7: EB          ex   de,hl
08E8: 09          add  hl,bc
08E9: DD 23       inc  ix
08EB: 06 03       ld   b,$03
08ED: CD 2B 00    call $002B
08F0: FD 7E 00    ld   a,(iy+$00)
08F3: 77          ld   (hl),a
08F4: FD 23       inc  iy
08F6: D5          push de
08F7: 11 40 00    ld   de,$0040
08FA: 19          add  hl,de
08FB: D1          pop  de
08FC: 10 F2       djnz $08F0
08FE: 01 3E FB    ld   bc,$FB3E
0901: 09          add  hl,bc
0902: EB          ex   de,hl
0903: C1          pop  bc
0904: 0C          inc  c
0905: 10 87       djnz $088E
0907: DD E1       pop  ix
0909: C9          ret
090A: 3A 3F C0    ld   a,($C03F)
090D: 07          rlca
090E: 30 09       jr   nc,$0919
0910: 3A 34 C1    ld   a,($C134)
0913: C6 07       add  a,$07
0915: 32 34 C1    ld   ($C134),a
0918: C9          ret
0919: 21 3F C0    ld   hl,$C03F
091C: CB FE       set  7,(hl)
091E: 21 16 D0    ld   hl,$D016
0921: 11 80 09    ld   de,$0980
0924: 06 08       ld   b,$08
0926: C5          push bc
0927: E5          push hl
0928: 1A          ld   a,(de)
0929: 13          inc  de
092A: 01 08 01    ld   bc,$0108
092D: CD 2B 00    call $002B
0930: CD A6 05    call $05A6
0933: E1          pop  hl
0934: CB DC       set  3,h
0936: 1A          ld   a,(de)
0937: 13          inc  de
0938: 01 08 01    ld   bc,$0108
093B: CD A6 05    call $05A6
093E: E5          push hl
093F: CB 9C       res  3,h
0941: 1A          ld   a,(de)
0942: 13          inc  de
0943: 01 08 01    ld   bc,$0108
0946: CD A6 05    call $05A6
0949: E1          pop  hl
094A: 1A          ld   a,(de)
094B: 13          inc  de
094C: 01 08 01    ld   bc,$0108
094F: CD A6 05    call $05A6
0952: E5          push hl
0953: CB 9C       res  3,h
0955: 1A          ld   a,(de)
0956: 13          inc  de
0957: 01 08 01    ld   bc,$0108
095A: CD A6 05    call $05A6
095D: E1          pop  hl
095E: 1A          ld   a,(de)
095F: 13          inc  de
0960: 01 08 01    ld   bc,$0108
0963: CD A6 05    call $05A6
0966: E5          push hl
0967: CB 9C       res  3,h
0969: 1A          ld   a,(de)
096A: 13          inc  de
096B: 01 08 01    ld   bc,$0108
096E: CD A6 05    call $05A6
0971: E1          pop  hl
0972: 1A          ld   a,(de)
0973: 13          inc  de
0974: 01 08 01    ld   bc,$0108
0977: CD A6 05    call $05A6
097A: CB 9C       res  3,h
097C: C1          pop  bc
097D: 10 A7       djnz $0926
097F: C9          ret
0980: 00          nop
0981: 08          ex   af,af'
0982: 08          ex   af,af'
0983: 18 05       jr   $098A
0985: 88          adc  a,b
0986: 07          rlca
0987: 18 05       jr   $098E
0989: F8          ret  m
098A: 06 18       ld   b,$18
098C: 04          inc  b
098D: F8          ret  m
098E: 05          dec  b
098F: 18 03       jr   $0994
0991: F8          ret  m
0992: 04          inc  b
0993: 78          ld   a,b
0994: 0D          dec  c
0995: 68          ld   l,b
0996: 03          inc  bc
0997: 18 02       jr   $099B
0999: 78          ld   a,b
099A: 02          ld   (bc),a
099B: 18 05       jr   $09A2
099D: 68          ld   l,b
099E: 01 18 01    ld   bc,$0118
09A1: 18 05       jr   $09A8
09A3: 68          ld   l,b
09A4: 02          ld   (bc),a
09A5: 18 02       jr   $09A9
09A7: 78          ld   a,b
09A8: 03          inc  bc
09A9: 18 0D       jr   $09B8
09AB: 68          ld   l,b
09AC: 04          inc  b
09AD: 78          ld   a,b
09AE: 03          inc  bc
09AF: F8          ret  m
09B0: 05          dec  b
09B1: 18 04       jr   $09B7
09B3: F8          ret  m
09B4: 06 18       ld   b,$18
09B6: 05          dec  b
09B7: F8          ret  m
09B8: 07          rlca
09B9: 18 05       jr   $09C0
09BB: 88          adc  a,b
09BC: 08          ex   af,af'
09BD: 18 00       jr   $09BF
09BF: 08          ex   af,af'
09C0: 21 28 C1    ld   hl,$C128
09C3: 34          inc  (hl)
09C4: 21 09 0C    ld   hl,$0C09
09C7: 11 DB C0    ld   de,$C0DB
09CA: 01 49 00    ld   bc,$0049
09CD: ED B0       ldir
09CF: CD 26 0B    call $0B26
09D2: CD 18 07    call $0718
09D5: CD 56 0B    call $0B56
09D8: CD 91 04    call $0491
09DB: CD B6 05    call $05B6
09DE: 3E 00       ld   a,$00
09E0: CD A6 04    call $04A6
09E3: 3A 03 C2    ld   a,($C203)
09E6: 4F          ld   c,a
09E7: ED 79       out  (c),a
09E9: CD 54 07    call $0754
09EC: 21 80 00    ld   hl,$0080
09EF: 22 1B C2    ld   ($C21B),hl
09F2: 3E 24       ld   a,$24
09F4: C3 A6 04    jp   $04A6
09F7: CB 5F       bit  3,a
09F9: 28 13       jr   z,$0A0E
09FB: 0E 0E       ld   c,$0E
09FD: 3A D6 C0    ld   a,($C0D6)
0A00: E6 3F       and  $3F
0A02: 28 06       jr   z,$0A0A
0A04: EE 20       xor  $20
0A06: 20 06       jr   nz,$0A0E
0A08: 0E 54       ld   c,$54
0A0A: 79          ld   a,c
0A0B: CD 5E 06    call $065E
0A0E: 3A 09 C8    ld   a,($C809)
0A11: E6 40       and  $40
0A13: C2 87 3A    jp   nz,$3A87
0A16: 3A 03 C8    ld   a,($C803)
0A19: B7          or   a
0A1A: 3A 1B C2    ld   a,($C21B)
0A1D: CA 3A 0A    jp   z,$0A3A
0A20: 3E 91       ld   a,$91
0A22: CD 15 08    call $0815
0A25: CD 0C 0B    call $0B0C
0A28: 21 00 03    ld   hl,$0300
0A2B: 18 C2       jr   $09EF
0A2D: 3A 28 C1    ld   a,($C128)
0A30: 0F          rrca
0A31: 30 8D       jr   nc,$09C0
0A33: 3A 1B C2    ld   a,($C21B)
0A36: CB 7F       bit  7,a
0A38: 20 BD       jr   nz,$09F7
0A3A: E6 61       and  $61
0A3C: C8          ret  z
0A3D: 0F          rrca
0A3E: 38 47       jr   c,$0A87
0A40: 3A 2B C2    ld   a,($C22B)
0A43: CD 5E 06    call $065E
0A46: 3E 01       ld   a,$01
0A48: CD E4 04    call $04E4
0A4B: 21 1B C2    ld   hl,$C21B
0A4E: CB 7E       bit  7,(hl)
0A50: F5          push af
0A51: C4 0C 0B    call nz,$0B0C
0A54: F1          pop  af
0A55: C2 EC 09    jp   nz,$09EC
0A58: CB 96       res  2,(hl)
0A5A: CB B6       res  6,(hl)
0A5C: ED 4B 2D C2 ld   bc,($C22D)
0A60: 21 29 C1    ld   hl,$C129
0A63: 71          ld   (hl),c
0A64: 3A 2A C2    ld   a,($C22A)
0A67: B7          or   a
0A68: F5          push af
0A69: C4 0C 0B    call nz,$0B0C
0A6C: F1          pop  af
0A6D: 20 31       jr   nz,$0AA0
0A6F: 21 1E C2    ld   hl,$C21E
0A72: CB C6       set  0,(hl)
0A74: 2B          dec  hl
0A75: 7E          ld   a,(hl)
0A76: B0          or   b
0A77: 77          ld   (hl),a
0A78: 3E 0E       ld   a,$0E
0A7A: CD 5E 06    call $065E
0A7D: 3E 14       ld   a,$14
0A7F: CD 15 08    call $0815
0A82: 3E 80       ld   a,$80
0A84: C3 E4 04    jp   $04E4
0A87: 21 1B C2    ld   hl,$C21B
0A8A: CB 86       res  0,(hl)
0A8C: 23          inc  hl
0A8D: 23          inc  hl
0A8E: 7E          ld   a,(hl)
0A8F: 23          inc  hl
0A90: CB 86       res  0,(hl)
0A92: E6 30       and  $30
0A94: FE 30       cp   $30
0A96: 20 08       jr   nz,$0AA0
0A98: 3E 00       ld   a,$00
0A9A: CD CF 04    call $04CF
0A9D: C3 D2 09    jp   $09D2
0AA0: CD B6 05    call $05B6
0AA3: 3A 29 C1    ld   a,($C129)
0AA6: 21 1D C2    ld   hl,$C21D
0AA9: A6          and  (hl)
0AAA: 20 31       jr   nz,$0ADD
0AAC: 3A 09 C8    ld   a,($C809)
0AAF: E6 10       and  $10
0AB1: 20 20       jr   nz,$0AD3
0AB3: CD 18 07    call $0718
0AB6: 06 13       ld   b,$13
0AB8: 21 F5 C1    ld   hl,$C1F5
0ABB: 11 08 C2    ld   de,$C208
0ABE: CD 21 05    call $0521
0AC1: 3A 04 C2    ld   a,($C204)
0AC4: 32 34 C1    ld   ($C134),a
0AC7: 3A 03 C2    ld   a,($C203)
0ACA: 4F          ld   c,a
0ACB: ED 79       out  (c),a
0ACD: CD 54 07    call $0754
0AD0: CD 91 04    call $0491
0AD3: 21 1D C2    ld   hl,$C21D
0AD6: 7E          ld   a,(hl)
0AD7: EE 40       xor  $40
0AD9: 77          ld   (hl),a
0ADA: CD 19 05    call $0519
0ADD: 3A D6 C0    ld   a,($C0D6)
0AE0: 6F          ld   l,a
0AE1: 26 00       ld   h,$00
0AE3: 11 9C 0F    ld   de,$0F9C
0AE6: 19          add  hl,de
0AE7: 7E          ld   a,(hl)
0AE8: 23          inc  hl
0AE9: E5          push hl
0AEA: 06 30       ld   b,$30
0AEC: CD B7 10    call $10B7
0AEF: 3E 01       ld   a,$01
0AF1: CD E4 04    call $04E4
0AF4: 3E 01       ld   a,$01
0AF6: CD CC 10    call $10CC
0AF9: E1          pop  hl
0AFA: BE          cp   (hl)
0AFB: 20 09       jr   nz,$0B06
0AFD: 1E 47       ld   e,$47
0AFF: 16 00       ld   d,$00
0B01: 21 98 C1    ld   hl,$C198
0B04: 19          add  hl,de
0B05: 73          ld   (hl),e
0B06: 21 00 05    ld   hl,$0500
0B09: C3 EF 09    jp   $09EF
0B0C: 06 24       ld   b,$24
0B0E: 3E 01       ld   a,$01
0B10: CD CF 04    call $04CF
0B13: 3C          inc  a
0B14: 10 FA       djnz $0B10
0B16: 21 43 C2    ld   hl,$C243
0B19: 11 44 C2    ld   de,$C244
0B1C: 36 00       ld   (hl),$00
0B1E: 01 69 05    ld   bc,$0569
0B21: ED B0       ldir
0B23: C3 91 04    jp   $0491
0B26: CD 56 0B    call $0B56
0B29: 0E 00       ld   c,$00
0B2B: 21 E3 C0    ld   hl,$C0E3
0B2E: 11 54 C1    ld   de,$C154
0B31: CD 7F 11    call $117F
0B34: 21 DD C0    ld   hl,$C0DD
0B37: 11 5A C1    ld   de,$C15A
0B3A: CD 7F 11    call $117F
0B3D: 3E 01       ld   a,$01
0B3F: CD 5E 06    call $065E
0B42: 3E 03       ld   a,$03
0B44: CD 5E 06    call $065E
0B47: 3E 07       ld   a,$07
0B49: CD 5E 06    call $065E
0B4C: 3E 08       ld   a,$08
0B4E: CD 5E 06    call $065E
0B51: 3E 01       ld   a,$01
0B53: C3 E4 04    jp   $04E4
0B56: 3A 09 C8    ld   a,($C809)
0B59: E6 20       and  $20
0B5B: 21 80 06    ld   hl,$0680
0B5E: 11 80 08    ld   de,$0880
0B61: 28 01       jr   z,$0B64
0B63: EB          ex   de,hl
0B64: 22 F5 C1    ld   ($C1F5),hl
0B67: ED 53 08 C2 ld   ($C208),de
0B6B: 21 80 0A    ld   hl,$0A80
0B6E: 11 80 0C    ld   de,$0C80
0B71: 28 01       jr   z,$0B74
0B73: EB          ex   de,hl
0B74: 22 F7 C1    ld   ($C1F7),hl
0B77: ED 53 0A C2 ld   ($C20A),de
0B7B: 21 80 02    ld   hl,$0280
0B7E: 11 80 04    ld   de,$0480
0B81: 28 01       jr   z,$0B84
0B83: EB          ex   de,hl
0B84: 22 F9 C1    ld   ($C1F9),hl
0B87: ED 53 0C C2 ld   ($C20C),de
0B8B: 21 00 04    ld   hl,$0400
0B8E: 11 00 FC    ld   de,$FC00
0B91: 28 01       jr   z,$0B94
0B93: EB          ex   de,hl
0B94: 22 FB C1    ld   ($C1FB),hl
0B97: ED 53 0E C2 ld   ($C20E),de
0B9B: 21 00 08    ld   hl,$0800
0B9E: 11 00 00    ld   de,$0000
0BA1: 28 01       jr   z,$0BA4
0BA3: EB          ex   de,hl
0BA4: 22 FD C1    ld   ($C1FD),hl
0BA7: ED 53 10 C2 ld   ($C210),de
0BAB: 21 00 00    ld   hl,$0000
0BAE: 11 00 F8    ld   de,$F800
0BB1: 28 01       jr   z,$0BB4
0BB3: EB          ex   de,hl
0BB4: 22 FF C1    ld   ($C1FF),hl
0BB7: ED 53 12 C2 ld   ($C212),de
0BBB: 21 01 3F    ld   hl,$3F01
0BBE: 11 EF 3F    ld   de,$3FEF
0BC1: 28 01       jr   z,$0BC4
0BC3: EB          ex   de,hl
0BC4: 22 01 C2    ld   ($C201),hl
0BC7: ED 53 14 C2 ld   ($C214),de
0BCB: 3E 03       ld   a,$03
0BCD: 06 02       ld   b,$02
0BCF: 11 03 C2    ld   de,$C203
0BD2: 21 16 C2    ld   hl,$C216
0BD5: 28 01       jr   z,$0BD8
0BD7: EB          ex   de,hl
0BD8: 12          ld   (de),a
0BD9: 70          ld   (hl),b
0BDA: 3E F1       ld   a,$F1
0BDC: 06 FF       ld   b,$FF
0BDE: 11 04 C2    ld   de,$C204
0BE1: 21 17 C2    ld   hl,$C217
0BE4: 28 01       jr   z,$0BE7
0BE6: EB          ex   de,hl
0BE7: 12          ld   (de),a
0BE8: 70          ld   (hl),b
0BE9: 21 80 00    ld   hl,$0080
0BEC: 11 00 00    ld   de,$0000
0BEF: 28 01       jr   z,$0BF2
0BF1: EB          ex   de,hl
0BF2: 22 05 C2    ld   ($C205),hl
0BF5: ED 53 18 C2 ld   ($C218),de
0BF9: 3E CE       ld   a,$CE
0BFB: 06 CC       ld   b,$CC
0BFD: 11 07 C2    ld   de,$C207
0C00: 21 1A C2    ld   hl,$C21A
0C03: 28 01       jr   z,$0C06
0C05: EB          ex   de,hl
0C06: 12          ld   (de),a
0C07: 70          ld   (hl),b
0C08: C9          ret
0C09: 00          nop
0C0A: 20 00       jr   nz,$0C0C
0C0C: 00          nop
0C0D: 20 00       jr   nz,$0C0F
0C0F: 00          nop
0C10: 18 00       jr   $0C12
0C12: 00          nop
0C13: 16 00       ld   d,$00
0C15: 00          nop
0C16: 14          inc  d
0C17: 00          nop
0C18: 00          nop
0C19: 12          ld   (de),a
0C1A: 00          nop
0C1B: 00          nop
0C1C: 10 00       djnz $0C1E
0C1E: 00          nop
0C1F: 08          ex   af,af'
0C20: 00          nop
0C21: 00          nop
0C22: 06 00       ld   b,$00
0C24: 00          nop
0C25: 04          inc  b
0C26: 00          nop
0C27: 00          nop
0C28: 02          ld   (bc),a
0C29: 00          nop
0C2A: 1C          inc  e
0C2B: 11 12 17    ld   de,$1712
0C2E: 13          inc  de
0C2F: 1E 14       ld   e,$14
0C31: 1E 14       ld   e,$14
0C33: 1E 1C       ld   e,$1C
0C35: 11 12 17    ld   de,$1712
0C38: 13          inc  de
0C39: 1E 14       ld   e,$14
0C3B: 1E 1C       ld   e,$1C
0C3D: 0A          ld   a,(bc)
0C3E: 17          rla
0C3F: 0C          inc  c
0C40: 11 18 1E    ld   de,$1E18
0C43: 16 0E       ld   d,$0E
0C45: 1D          dec  e
0C46: 18 0A       jr   $0C52
0C48: 05          dec  b
0C49: 05          dec  b
0C4A: 05          dec  b
0C4B: 04          inc  b
0C4C: 04          inc  b
0C4D: 04          inc  b
0C4E: 03          inc  bc
0C4F: 03          inc  bc
0C50: 02          ld   (bc),a
0C51: 02          ld   (bc),a
0C52: 21 40 C0    ld   hl,$C040
0C55: 7E          ld   a,(hl)
0C56: B7          or   a
0C57: 28 02       jr   z,$0C5B
0C59: 35          dec  (hl)
0C5A: C9          ret
0C5B: 21 1C C2    ld   hl,$C21C
0C5E: 7E          ld   a,(hl)
0C5F: B7          or   a
0C60: 20 2E       jr   nz,$0C90
0C62: 34          inc  (hl)
0C63: 21 1D C2    ld   hl,$C21D
0C66: 11 1E C2    ld   de,$C21E
0C69: 01 25 00    ld   bc,$0025
0C6C: 36 00       ld   (hl),$00
0C6E: ED B0       ldir
0C70: CD B0 0D    call $0DB0
0C73: 32 2A C2    ld   ($C22A),a
0C76: 32 3C C2    ld   ($C23C),a
0C79: 3E 01       ld   a,$01
0C7B: 32 2B C2    ld   ($C22B),a
0C7E: 3E 04       ld   a,$04
0C80: 32 3D C2    ld   ($C23D),a
0C83: 21 10 20    ld   hl,$2010
0C86: 22 2D C2    ld   ($C22D),hl
0C89: 21 20 10    ld   hl,$1020
0C8C: 22 3F C2    ld   ($C23F),hl
0C8F: C9          ret
0C90: FE 01       cp   $01
0C92: 21 3F C0    ld   hl,$C03F
0C95: C2 18 0D    jp   nz,$0D18
0C98: CB 46       bit  0,(hl)
0C9A: 20 21       jr   nz,$0CBD
0C9C: 34          inc  (hl)
0C9D: CD B6 05    call $05B6
0CA0: CD 29 06    call $0629
0CA3: CD A1 07    call $07A1
0CA6: 3E 01       ld   a,$01
0CA8: 32 4B C2    ld   ($C24B),a
0CAB: 3E 60       ld   a,$60
0CAD: 32 4C C2    ld   ($C24C),a
0CB0: 3E 0F       ld   a,$0F
0CB2: CD 5E 06    call $065E
0CB5: 3E 01       ld   a,$01
0CB7: CD E4 04    call $04E4
0CBA: C3 12 0E    jp   $0E12
0CBD: CD 0A 09    call $090A
0CC0: 21 3F C0    ld   hl,$C03F
0CC3: CB 4E       bit  1,(hl)
0CC5: 20 07       jr   nz,$0CCE
0CC7: 2B          dec  hl
0CC8: 34          inc  (hl)
0CC9: C0          ret  nz
0CCA: 23          inc  hl
0CCB: CB CE       set  1,(hl)
0CCD: C9          ret
0CCE: CD FB 1E    call $1EFB
0CD1: 21 3E C0    ld   hl,$C03E
0CD4: 5E          ld   e,(hl)
0CD5: 34          inc  (hl)
0CD6: 23          inc  hl
0CD7: 20 1F       jr   nz,$0CF8
0CD9: CB 5E       bit  3,(hl)
0CDB: 20 03       jr   nz,$0CE0
0CDD: CB DE       set  3,(hl)
0CDF: C9          ret
0CE0: 36 00       ld   (hl),$00
0CE2: 23          inc  hl
0CE3: 36 C8       ld   (hl),$C8
0CE5: CD 89 1F    call $1F89
0CE8: 21 1C C2    ld   hl,$C21C
0CEB: 36 02       ld   (hl),$02
0CED: CD B6 05    call $05B6
0CF0: 3E 55       ld   a,$55
0CF2: CD 5E 06    call $065E
0CF5: C3 71 08    jp   $0871
0CF8: CB 56       bit  2,(hl)
0CFA: C0          ret  nz
0CFB: CB 3B       srl  e
0CFD: CB 3B       srl  e
0CFF: 16 00       ld   d,$00
0D01: 21 C2 0D    ld   hl,$0DC2
0D04: 19          add  hl,de
0D05: 7E          ld   a,(hl)
0D06: FE FF       cp   $FF
0D08: 20 0A       jr   nz,$0D14
0D0A: AF          xor  a
0D0B: 32 4B C2    ld   ($C24B),a
0D0E: 21 3F C0    ld   hl,$C03F
0D11: CB D6       set  2,(hl)
0D13: C9          ret
0D14: 32 4C C2    ld   ($C24C),a
0D17: C9          ret
0D18: FE 02       cp   $02
0D1A: 20 08       jr   nz,$0D24
0D1C: 21 1C C2    ld   hl,$C21C
0D1F: 36 05       ld   (hl),$05
0D21: C3 B6 05    jp   $05B6
0D24: FE 03       cp   $03
0D26: 20 74       jr   nz,$0D9C
0D28: CB 46       bit  0,(hl)
0D2A: 20 1B       jr   nz,$0D47
0D2C: 34          inc  (hl)
0D2D: CD 63 0C    call $0C63
0D30: CD B6 05    call $05B6
0D33: 3A 66 C1    ld   a,($C166)
0D36: B7          or   a
0D37: C4 54 07    call nz,$0754
0D3A: 3E 0A       ld   a,$0A
0D3C: CD 5E 06    call $065E
0D3F: 3E 0B       ld   a,$0B
0D41: CD 5E 06    call $065E
0D44: C3 38 0E    jp   $0E38
0D47: CD 6E 06    call $066E
0D4A: 3A 03 C8    ld   a,($C803)
0D4D: FE 02       cp   $02
0D4F: 30 10       jr   nc,$0D61
0D51: 3E 0C       ld   a,$0C
0D53: CD 5E 06    call $065E
0D56: 3A 0B C8    ld   a,($C80B)
0D59: E6 10       and  $10
0D5B: C8          ret  z
0D5C: 01 10 01    ld   bc,$0110
0D5F: 18 12       jr   $0D73
0D61: 3E 0D       ld   a,$0D
0D63: CD 5E 06    call $065E
0D66: 3A 0B C8    ld   a,($C80B)
0D69: CB 67       bit  4,a
0D6B: 20 EF       jr   nz,$0D5C
0D6D: E6 20       and  $20
0D6F: C8          ret  z
0D70: 01 80 02    ld   bc,$0280
0D73: 21 02 C8    ld   hl,$C802
0D76: CB 46       bit  0,(hl)
0D78: 20 F9       jr   nz,$0D73
0D7A: 21 03 C8    ld   hl,$C803
0D7D: 7E          ld   a,(hl)
0D7E: 90          sub  b
0D7F: 77          ld   (hl),a
0D80: 21 1C C2    ld   hl,$C21C
0D83: 36 05       ld   (hl),$05
0D85: 23          inc  hl
0D86: 71          ld   (hl),c
0D87: CD F3 10    call $10F3
0D8A: CD 24 0F    call $0F24
0D8D: CD 6C 0F    call $0F6C
0D90: CD 82 0F    call $0F82
0D93: CD 88 0F    call $0F88
0D96: CD 00 11    call $1100
0D99: C3 B6 05    jp   $05B6
0D9C: 21 CA 0D    ld   hl,$0DCA
0D9F: 22 D8 C0    ld   ($C0D8),hl
0DA2: AF          xor  a
0DA3: 32 DA C0    ld   ($C0DA),a
0DA6: 3E 24       ld   a,$24
0DA8: CD CF 04    call $04CF
0DAB: 3E 01       ld   a,$01
0DAD: C3 A6 04    jp   $04A6
0DB0: 3A 0A C8    ld   a,($C80A)
0DB3: E6 03       and  $03
0DB5: 5F          ld   e,a
0DB6: 16 00       ld   d,$00
0DB8: 21 BE 0D    ld   hl,$0DBE
0DBB: 19          add  hl,de
0DBC: 7E          ld   a,(hl)
0DBD: C9          ret

0DCC: 13          inc  de
0DCD: 80          add  a,b
0DCE: 18 80       jr   $0D50
0DD0: 12          ld   (de),a
0DD1: 60          ld   h,b
0DD2: 18 20       jr   $0DF4
0DD4: 11 40 1C    ld   de,$1C40
0DD7: 20 18       jr   nz,$0DF1
0DD9: 40          ld   b,b
0DDA: 12          ld   (de),a
0DDB: 60          ld   h,b
0DDC: 18 20       jr   $0DFE

0DF3: AF          xor  a
0DF4: 32 DF C1    ld   ($C1DF),a
0DF7: 32 E7 C1    ld   ($C1E7),a
0DFA: 21 00 00    ld   hl,$0000
0DFD: 22 E5 C1    ld   ($C1E5),hl
0E00: C9          ret
0E01: 21 0D 0E    ld   hl,$0E0D
0E04: 11 E0 C1    ld   de,$C1E0
0E07: 01 05 00    ld   bc,$0005
0E0A: ED B0       ldir
0E0C: C9          ret
0E0D: 34          inc  (hl)
0E0E: 21 29 34    ld   hl,$3429
0E11: 2F          cpl
0E12: ED 5B 05 C2 ld   de,($C205)
0E16: DD 21 5B F2 ld   ix,$F25B
0E1A: DD 19       add  ix,de
0E1C: FD 21 C9 C1 ld   iy,$C1C9
0E20: 06 05       ld   b,$05
0E22: 0E 17       ld   c,$17
0E24: 11 40 00    ld   de,$0040
0E27: CD 2B 00    call $002B
0E2A: DD 7E E9    ld   a,(ix-$17)
0E2D: 81          add  a,c
0E2E: FD 77 17    ld   (iy+$17),a
0E31: DD 19       add  ix,de
0E33: FD 23       inc  iy
0E35: 10 F3       djnz $0E2A
0E37: C9          ret
0E38: 11 FF C0    ld   de,$C0FF
0E3B: 2E E5       ld   l,$E5
0E3D: 26 00       ld   h,$00
0E3F: 19          add  hl,de
0E40: 06 05       ld   b,$05
0E42: AF          xor  a
0E43: 86          add  a,(hl)
0E44: 2B          dec  hl
0E45: 10 FC       djnz $0E43
0E47: FE E1       cp   $E1
0E49: C8          ret  z
0E4A: 1E 27       ld   e,$27
0E4C: 16 00       ld   d,$00
0E4E: 21 B8 C1    ld   hl,$C1B8
0E51: 19          add  hl,de
0E52: 73          ld   (hl),e
0E53: C9          ret
0E54: 3A E7 C1    ld   a,($C1E7)
0E57: 2A E5 C1    ld   hl,($C1E5)
0E5A: 95          sub  l
0E5B: 86          add  a,(hl)
0E5C: 32 E7 C1    ld   ($C1E7),a
0E5F: 23          inc  hl
0E60: 22 E5 C1    ld   ($C1E5),hl
0E63: 01 01 40    ld   bc,$4001
0E66: 09          add  hl,bc
0E67: D0          ret  nc
0E68: 22 E5 C1    ld   ($C1E5),hl
0E6B: 7D          ld   a,l
0E6C: 21 E7 C1    ld   hl,$C1E7
0E6F: AE          xor  (hl)
0E70: 77          ld   (hl),a
0E71: C8          ret  z
0E72: 21 A8 C1    ld   hl,$C1A8
0E75: 06 00       ld   b,$00
0E77: 0E 37       ld   c,$37
0E79: 09          add  hl,bc
0E7A: 71          ld   (hl),c
0E7B: C9          ret
0E7C: 1F          rra
0E7D: C5          push bc
0E7E: 7B          ld   a,e
0E7F: 48          ld   c,b
0E80: EC 78 03    call pe,$0378
0E83: 01 DD 2D    ld   bc,$2DDD
0E86: FF          rst  $38
0E87: DD          db   $dd
0E88: D7          rst  $10
0E89: 08          ex   af,af'
0E8A: E6 00       and  $00
0E8C: 85          add  a,l
0E8D: A5          and  l
0E8E: 53          ld   d,e
0E8F: 79          ld   a,c
0E90: AB          xor  e
0E91: C6 1C       add  a,$1C
0E93: 01 27 0C    ld   bc,$0C27
0E96: 51          ld   d,c
0E97: 91          sub  c
0E98: 5B          ld   e,e
0E99: 18 28       jr   $0EC3
0E9B: 00          nop
0E9C: D1          pop  de
0E9D: 60          ld   h,b
0E9E: 1C          inc  e
0E9F: EF          rst  $28
0EA0: 85          add  a,l
0EA1: F2 28 01    jp   p,$0128
0EA4: 9F          sbc  a,a
0EA5: F1          pop  af
0EA6: E0          ret  po
0EA7: 30 88       jr   nc,$0E31
0EA9: D0          ret  nc
0EAA: 73          ld   (hl),e
0EAB: 01 99 81    ld   bc,$8199
0EAE: 17          rla
0EAF: 32 47 4F    ld   ($4F47),a
0EB2: 4C          ld   c,h
0EB3: 00          nop
0EB4: 6F          ld   l,a
0EB5: 2D          dec  l
0EB6: E8          ret  pe
0EB7: 66          ld   h,(hl)
0EB8: D1          pop  de
0EB9: 9B          sbc  a,e
0EBA: D8          ret  c
0EBB: 00          nop
0EBC: B9          cp   c
0EBD: 2B          dec  hl
0EBE: 1B          dec  de
0EBF: 7D          ld   a,l
0EC0: A9          xor  c
0EC1: 1D          dec  e
0EC2: B9          cp   c
0EC3: 00          nop
0EC4: D7          rst  $10
0EC5: 26 C0       ld   h,$C0
0EC7: 9F          sbc  a,a
0EC8: B1          or   c
0EC9: A4          and  h
0ECA: 57          ld   d,a
0ECB: 01 DB F2    ld   bc,$F2DB
0ECE: 10 1C       djnz $0EEC
0ED0: 35          dec  (hl)
0ED1: 82          add  a,d
0ED2: 9F          sbc  a,a
0ED3: 00          nop
0ED4: CD CE 1F    call $1FCE
0ED7: 68          ld   l,b
0ED8: E1          pop  hl
0ED9: D4 50 00    call nc,$0050
0EDC: D7          rst  $10
0EDD: 7D          ld   a,l
0EDE: CE 16       adc  a,$16
0EE0: AE          xor  (hl)
0EE1: C8          ret  z
0EE2: 42          ld   b,d
0EE3: 01 65 B4    ld   bc,$B465
0EE6: C6 FA       add  a,$FA
0EE8: 87          add  a,a
0EE9: 85          add  a,l
0EEA: 58          ld   e,b
0EEB: 01 31 AD    ld   bc,$AD31
0EEE: 48          ld   c,b
0EEF: 17          rla
0EF0: DB B4       in   a,($B4)
0EF2: 01 00 4F    ld   bc,$4F00
0EF5: F5          push af
0EF6: 02          ld   (bc),a
0EF7: DA 55 53    jp   c,$5355
0EFA: 66          ld   h,(hl)
0EFB: 00          nop
0EFC: D1          pop  de
0EFD: A7          and  a
0EFE: B6          or   (hl)
0EFF: 5A          ld   e,d
0F00: 23          inc  hl
0F01: 25          dec  h
0F02: 32 01 EB    ld   ($EB01),a
0F05: 4D          ld   c,l
0F06: 59          ld   e,c
0F07: 0A          ld   a,(bc)
0F08: A3          and  e
0F09: B7          or   a
0F0A: D5          push de
0F0B: 00          nop
0F0C: 49          ld   c,c
0F0D: F3          di
0F0E: C4 30 50    call nz,$5030
0F11: 29          add  hl,hl
0F12: D6 00       sub  $00
0F14: 91          sub  c
0F15: FF          rst  $38
0F16: 54          ld   d,h
0F17: 45          ld   b,l
0F18: CE A6       adc  a,$A6
0F1A: 79          ld   a,c
0F1B: 01 01 02    ld   bc,$0201
0F1E: 04          inc  b
0F1F: 08          ex   af,af'
0F20: 10 20       djnz $0F42
0F22: 40          ld   b,b
0F23: 80          add  a,b
0F24: 21 E8 C1    ld   hl,$C1E8
0F27: 22 EB C1    ld   ($C1EB),hl
0F2A: 06 08       ld   b,$08
0F2C: 21 ED C1    ld   hl,$C1ED
0F2F: 36 00       ld   (hl),$00
0F31: 23          inc  hl
0F32: 10 FB       djnz $0F2F
0F34: 06 14       ld   b,$14
0F36: 78          ld   a,b
0F37: 3D          dec  a
0F38: 4F          ld   c,a
0F39: E6 07       and  $07
0F3B: 21 1C 0F    ld   hl,$0F1C
0F3E: 16 00       ld   d,$00
0F40: 5F          ld   e,a
0F41: 19          add  hl,de
0F42: 7E          ld   a,(hl)
0F43: 59          ld   e,c
0F44: CB 3B       srl  e
0F46: CB 3B       srl  e
0F48: CB 3B       srl  e
0F4A: 2A EB C1    ld   hl,($C1EB)
0F4D: 19          add  hl,de
0F4E: A6          and  (hl)
0F4F: 28 18       jr   z,$0F69
0F51: 59          ld   e,c
0F52: CB 23       sla  e
0F54: CB 23       sla  e
0F56: CB 23       sla  e
0F58: 21 7C 0E    ld   hl,$0E7C
0F5B: 19          add  hl,de
0F5C: 0E 08       ld   c,$08
0F5E: 11 ED C1    ld   de,$C1ED
0F61: 1A          ld   a,(de)
0F62: 8E          adc  a,(hl)
0F63: 12          ld   (de),a
0F64: 23          inc  hl
0F65: 13          inc  de
0F66: 0D          dec  c
0F67: 20 F8       jr   nz,$0F61
0F69: 10 CB       djnz $0F36
0F6B: C9          ret
0F6C: 11 ED C1    ld   de,$C1ED
0F6F: 21 40 00    ld   hl,$0040
0F72: 06 08       ld   b,$08
0F74: E5          push hl
0F75: C5          push bc
0F76: 45          ld   b,l
0F77: 1A          ld   a,(de)
0F78: CD B7 10    call $10B7
0F7B: C1          pop  bc
0F7C: E1          pop  hl
0F7D: 23          inc  hl
0F7E: 13          inc  de
0F7F: 10 F3       djnz $0F74
0F81: C9          ret
0F82: 3E 0E       ld   a,$0E
0F84: CD CC 10    call $10CC
0F87: C9          ret
0F88: 21 E8 C1    ld   hl,$C1E8
0F8B: 36 F1       ld   (hl),$F1
0F8D: 23          inc  hl
0F8E: 36 01       ld   (hl),$01
0F90: 23          inc  hl
0F91: 36 00       ld   (hl),$00
0F93: C9          ret
0F94: 10 E1       djnz $0F77
0F96: 12          ld   (de),a
0F97: 23          inc  hl
0F98: 13          inc  de
0F99: 10 F5       djnz $0F90
0F9B: C9          ret
0F9C: 00          nop
0F9D: 11 32 63    ld   de,$6332
0FA0: A4          and  h
0FA1: F5          push af
0FA2: 56          ld   d,(hl)
0FA3: C7          rst  $00
0FA4: 48          ld   c,b
0FA5: D9          exx
0FA6: 7A          ld   a,d
0FA7: 2B          dec  hl
0FA8: EC BD 9E    call pe,$9EBD
0FAB: 8F          adc  a,a
0FAC: 90          sub  b
0FAD: A1          and  c
0FAE: C2 F3 34    jp   nz,$34F3
0FB1: 85          add  a,l
0FB2: E6 57       and  $57
0FB4: D8          ret  c
0FB5: 69          ld   l,c
0FB6: 0A          ld   a,(bc)
0FB7: BB          cp   e
0FB8: 7C          ld   a,h
0FB9: 4D          ld   c,l
0FBA: 2E 1F       ld   l,$1F
0FBC: 20 31       jr   nz,$0FEF
0FBE: 52          ld   d,d
0FBF: 83          add  a,e
0FC0: C4 15 76    call nz,$7615
0FC3: E7          rst  $20
0FC4: 68          ld   l,b
0FC5: F9          ld   sp,hl
0FC6: 9A          sbc  a,d
0FC7: 4B          ld   c,e
0FC8: 0C          inc  c
0FC9: DD BE AF    cp   (ix-$51)
0FCC: B0          or   b
0FCD: C1          pop  bc
0FCE: E2 13 54    jp   po,$5413
0FD1: A5          and  l
0FD2: 06 77       ld   b,$77
0FD4: F8          ret  m
0FD5: 89          adc  a,c
0FD6: 2A DB 9C    ld   hl,($9CDB)
0FD9: 6D          ld   l,l
0FDA: 4E          ld   c,(hl)
0FDB: 3F          ccf
0FDC: 40          ld   b,b
0FDD: 51          ld   d,c
0FDE: 72          ld   (hl),d
0FDF: A3          and  e
0FE0: E4 35 96    call po,$9635
0FE3: 07          rlca
0FE4: 88          adc  a,b
0FE5: 19          add  hl,de
0FE6: BA          cp   d
0FE7: 6B          ld   l,e
0FE8: 2C          inc  l
0FE9: FD          db   $fd
0FEA: DE CF       sbc  a,$CF
0FEC: D0          ret  nc
0FED: E1          pop  hl
0FEE: 02          ld   (bc),a
0FEF: 33          inc  sp
0FF0: 74          ld   (hl),h
0FF1: C5          push bc
0FF2: 26 97       ld   h,$97
0FF4: 18 A9       jr   $0F9F
0FF6: 4A          ld   c,d
0FF7: FB          ei
0FF8: BC          cp   h
0FF9: 8D          adc  a,l
0FFA: 6E          ld   l,(hl)
0FFB: 5F          ld   e,a
0FFC: 60          ld   h,b
0FFD: 71          ld   (hl),c
0FFE: 92          sub  d
0FFF: C3 04 55    jp   $5504
1002: B6          or   (hl)
1003: 27          daa
1004: A8          xor  b
1005: 39          add  hl,sp
1006: DA 8B 4C    jp   c,$4C8B
1009: 1D          dec  e
100A: FE EF       cp   $EF
100C: F0          ret  p
100D: 01 22 53    ld   bc,$5322
1010: 94          sub  h
1011: E5          push hl
1012: 46          ld   b,(hl)
1013: B7          or   a
1014: 38 C9       jr   c,$0FDF
1016: 6A          ld   l,d
1017: 1B          dec  de
1018: DC AD 8E    call c,$8EAD
101B: 7F          ld   a,a
101C: 80          add  a,b
101D: 91          sub  c
101E: B2          or   d
101F: E3          ex   (sp),hl
1020: 24          inc  h
1021: 75          ld   (hl),l
1022: D6 47       sub  $47
1024: C8          ret  z
1025: 59          ld   e,c
1026: FA AB 6C    jp   m,$6CAB
1029: 3D          dec  a
102A: 1E 0F       ld   e,$0F
102C: 10 21       djnz $104F
102E: 42          ld   b,d
102F: 73          ld   (hl),e
1030: B4          or   h
1031: 05          dec  b
1032: 66          ld   h,(hl)
1033: D7          rst  $10
1034: 58          ld   e,b
1035: E9          jp   (hl)
1036: 8A          adc  a,d
1037: 3B          dec  sp
1038: FC CD AE    call m,$AECD
103B: 9F          sbc  a,a
103C: A0          and  b
103D: B1          or   c
103E: D2 03 44    jp   nc,$4403
1041: 95          sub  l
1042: F6 67       or   $67
1044: E8          ret  pe
1045: 79          ld   a,c
1046: 1A          ld   a,(de)
1047: CB 8C       res  1,h
1049: 5D          ld   e,l
104A: 3E 2F       ld   a,$2F
104C: 30 41       jr   nc,$108F
104E: 62          ld   h,d
104F: 93          sub  e
1050: D4 25 86    call nc,$8625
1053: F7          rst  $30
1054: 78          ld   a,b
1055: 09          add  hl,bc
1056: AA          xor  d
1057: 5B          ld   e,e
1058: 1C          inc  e
1059: ED          db   $ed
105A: CE BF       adc  a,$BF
105C: C0          ret  nz
105D: D1          pop  de
105E: F2 23 64    jp   p,$6423
1061: B5          or   l
1062: 16 87       ld   d,$87
1064: 08          ex   af,af'
1065: 99          sbc  a,c
1066: 3A EB AC    ld   a,($ACEB)
1069: 7D          ld   a,l
106A: 5E          ld   e,(hl)
106B: 4F          ld   c,a
106C: 50          ld   d,b
106D: 61          ld   h,c
106E: 82          add  a,d
106F: B3          or   e
1070: F4 45 A6    call p,$A645
1073: 17          rla
1074: 98          sbc  a,b
1075: 29          add  hl,hl
1076: CA 7B 3C    jp   z,$3C7B
1079: 0D          dec  c
107A: EE DF       xor  $DF
107C: E0          ret  po
107D: F1          pop  af
107E: 12          ld   (de),a
107F: 43          ld   b,e
1080: 84          add  a,h
1081: D5          push de
1082: 36 A7       ld   (hl),$A7
1084: 28 B9       jr   z,$103F
1086: 5A          ld   e,d
1087: 0B          dec  bc
1088: CC 9D 7E    call z,$7E9D
108B: 6F          ld   l,a
108C: 70          ld   (hl),b
108D: 81          add  a,c
108E: A2          and  d
108F: D3 14       out  ($14),a
1091: 65          ld   h,l
1092: C6 37       add  a,$37
1094: B8          cp   b
1095: 49          ld   c,c
1096: EA 9B 5C    jp   pe,$5C9B
1099: 2D          dec  l
109A: 0E FF       ld   c,$FF
109C: 00          nop
109D: C9          ret
109E: 03          inc  bc
109F: E8          ret  pe
10A0: F6 73       or   $73
10A2: CD D5 10    call $10D5
10A5: CD E1 10    call $10E1
10A8: FE 83       cp   $83
10AA: C8          ret  z
10AB: 3E 11       ld   a,$11
10AD: CD 5E 06    call $065E
10B0: 3E 01       ld   a,$01
10B2: CD E4 04    call $04E4
10B5: 18 FE       jr   $10B5
10B7: C9          ret
10B8: 78          ld   a,b
10B9: F6 80       or   $80
10BB: CD D5 10    call $10D5
10BE: F1          pop  af
10BF: CD D5 10    call $10D5
10C2: C9          ret
10C3: C9          ret
10C4: 7F          ld   a,a
10C5: CD D5 10    call $10D5
10C8: CD E1 10    call $10E1
10CB: C9          ret
10CC: C9          ret
10CD: 0F          rrca
10CE: CD D5 10    call $10D5
10D1: CD E1 10    call $10E1
10D4: C9          ret
10D5: C9          ret
10D6: C9          ret
10D7: 00          nop
10D8: CB 4F       bit  1,a
10DA: 28 FA       jr   z,$10D6
10DC: F1          pop  af
10DD: 32 03 E8    ld   ($E803),a
10E0: C9          ret
10E1: C9          ret
10E2: 00          nop
10E3: CB 57       bit  2,a
10E5: 20 FA       jr   nz,$10E1
10E7: 00          nop
10E8: 00          nop
10E9: 00          nop
10EA: 00          nop
10EB: 00          nop
10EC: 00          nop
10ED: 00          nop
10EE: 00          nop
10EF: 3A 03 E8    ld   a,($E803)
10F2: C9          ret
10F3: 3A 04 C2    ld   a,($C204)
10F6: 32 E8 C1    ld   ($C1E8),a
10F9: 3A 2B C2    ld   a,($C22B)
10FC: 32 E9 C1    ld   ($C1E9),a
10FF: C9          ret
1100: 3A E8 C1    ld   a,($C1E8)
1103: 32 04 C2    ld   ($C204),a
1106: 3A E9 C1    ld   a,($C1E9)
1109: 32 2B C2    ld   ($C22B),a
110C: C9          ret
110D: 3A 1C C2    ld   a,($C21C)
1110: FE 05       cp   $05
1112: C0          ret  nz
1113: 34          inc  (hl)
1114: C3 60 14    jp   $1460
1117: 3A 1B C2    ld   a,($C21B)
111A: 07          rlca
111B: D8          ret  c
111C: 21 3E C0    ld   hl,$C03E
111F: CB 46       bit  0,(hl)
1121: 28 EA       jr   z,$110D
1123: 3A 1E C2    ld   a,($C21E)
1126: 0F          rrca
1127: DA F8 11    jp   c,$11F8
112A: 2A A5 C7    ld   hl,($C7A5)
112D: 7C          ld   a,h
112E: B5          or   l
112F: C8          ret  z
1130: 11 25 C2    ld   de,$C225
1133: 1A          ld   a,(de)
1134: 85          add  a,l
1135: 27          daa
1136: 12          ld   (de),a
1137: 13          inc  de
1138: 1A          ld   a,(de)
1139: 8C          adc  a,h
113A: 27          daa
113B: 12          ld   (de),a
113C: 13          inc  de
113D: 1A          ld   a,(de)
113E: CE 00       adc  a,$00
1140: 27          daa
1141: 12          ld   (de),a
1142: 21 00 00    ld   hl,$0000
1145: 22 A5 C7    ld   ($C7A5),hl
1148: DC D2 14    call c,$14D2
114B: CD B0 11    call $11B0
114E: 3A 1D C2    ld   a,($C21D)
1151: E6 40       and  $40
1153: 11 54 C1    ld   de,$C154
1156: 28 03       jr   z,$115B
1158: 11 60 C1    ld   de,$C160
115B: 21 27 C2    ld   hl,$C227
115E: 0E 00       ld   c,$00
1160: CD 7F 11    call $117F
1163: 21 27 C2    ld   hl,$C227
1166: 11 DD C0    ld   de,$C0DD
1169: CD E3 14    call $14E3
116C: D0          ret  nc
116D: 21 25 C2    ld   hl,$C225
1170: 11 DB C0    ld   de,$C0DB
1173: ED A0       ldi
1175: ED A0       ldi
1177: ED A0       ldi
1179: 2B          dec  hl
117A: 11 5A C1    ld   de,$C15A
117D: 0E 00       ld   c,$00
117F: AF          xor  a
1180: CD 86 11    call $1186
1183: CD 86 11    call $1186
1186: 06 02       ld   b,$02
1188: ED 6F       rld  (hl)
118A: 38 0D       jr   c,$1199
118C: 28 04       jr   z,$1192
118E: 37          scf
118F: C3 99 11    jp   $1199
1192: EB          ex   de,hl
1193: 36 2D       ld   (hl),$2D
1195: EB          ex   de,hl
1196: C3 9A 11    jp   $119A
1199: 12          ld   (de),a
119A: 08          ex   af,af'
119B: 79          ld   a,c
119C: B7          or   a
119D: 13          inc  de
119E: 20 07       jr   nz,$11A7
11A0: 08          ex   af,af'
11A1: 10 E5       djnz $1188
11A3: ED 6F       rld  (hl)
11A5: 2B          dec  hl
11A6: C9          ret
11A7: 3E 3F       ld   a,$3F
11A9: 83          add  a,e
11AA: 5F          ld   e,a
11AB: 30 F3       jr   nc,$11A0
11AD: 14          inc  d
11AE: 18 F0       jr   $11A0
11B0: 21 29 C2    ld   hl,$C229
11B3: 11 27 C2    ld   de,$C227
11B6: 06 02       ld   b,$02
11B8: CD E5 14    call $14E5
11BB: D8          ret  c
11BC: CD CB 11    call $11CB
11BF: 21 2A C2    ld   hl,$C22A
11C2: 34          inc  (hl)
11C3: CD F5 04    call $04F5
11C6: 3E 05       ld   a,$05
11C8: C3 15 08    jp   $0815
11CB: 3A 29 C2    ld   a,($C229)
11CE: 3C          inc  a
11CF: C8          ret  z
11D0: ED 5B 23 C2 ld   de,($C223)
11D4: 21 28 C2    ld   hl,$C228
11D7: 1A          ld   a,(de)
11D8: 86          add  a,(hl)
11D9: 27          daa
11DA: 77          ld   (hl),a
11DB: 13          inc  de
11DC: 23          inc  hl
11DD: 1A          ld   a,(de)
11DE: 4F          ld   c,a
11DF: CB BF       res  7,a
11E1: 8E          adc  a,(hl)
11E2: 27          daa
11E3: 30 01       jr   nc,$11E6
11E5: 9F          sbc  a,a
11E6: 77          ld   (hl),a
11E7: CB 79       bit  7,c
11E9: C0          ret  nz
11EA: 13          inc  de
11EB: ED 53 23 C2 ld   ($C223),de
11EF: C9          ret
11F0: 20 00       jr   nz,$11F2
11F2: 80          add  a,b
11F3: 80          add  a,b
11F4: 50          ld   d,b
11F5: 00          nop
11F6: 20 81       jr   nz,$1179
11F8: DD 21 4D C2 ld   ix,$C24D
11FC: CB 7E       bit  7,(hl)
11FE: 20 7E       jr   nz,$127E
1200: CB FE       set  7,(hl)
1202: CD F4 13    call $13F4
1205: D2 C2 13    jp   nc,$13C2
1208: F5          push af
1209: 3E 54       ld   a,$54
120B: CD 5E 06    call $065E
120E: 3E 12       ld   a,$12
1210: CD 5E 06    call $065E
1213: 3E 01       ld   a,$01
1215: CD E4 04    call $04E4
1218: CD 71 08    call $0871
121B: CD F4 14    call $14F4
121E: 3E 64       ld   a,$64
1220: 06 1A       ld   b,$1A
1222: CD 91 07    call $0791
1225: 21 5C 0D    ld   hl,$0D5C
1228: 22 2F C1    ld   ($C12F),hl
122B: 3E 1E       ld   a,$1E
122D: CD 5E 06    call $065E
1230: 3E 1F       ld   a,$1F
1232: CD 5E 06    call $065E
1235: 3E 0A       ld   a,$0A
1237: 32 2B C1    ld   ($C12B),a
123A: 21 4F 15    ld   hl,$154F
123D: 11 45 C1    ld   de,$C145
1240: 01 07 00    ld   bc,$0007
1243: ED B0       ldir
1245: 21 59 F6    ld   hl,$F659
1248: CD F7 14    call $14F7
124B: ED 5B 05 C2 ld   de,($C205)
124F: 19          add  hl,de
1250: 22 43 C1    ld   ($C143),hl
1253: 21 42 C1    ld   hl,$C142
1256: 34          inc  (hl)
1257: 3A 03 C8    ld   a,($C803)
125A: 32 3F C0    ld   ($C03F),a
125D: 3E FE       ld   a,$FE
125F: CD 15 08    call $0815
1262: 06 16       ld   b,$16
1264: 3A 2A C1    ld   a,($C12A)
1267: FE 03       cp   $03
1269: 30 02       jr   nc,$126D
126B: 06 15       ld   b,$15
126D: 78          ld   a,b
126E: CD 15 08    call $0815
1271: AF          xor  a
1272: 32 2F C2    ld   ($C22F),a
1275: 3E 01       ld   a,$01
1277: CD E4 04    call $04E4
127A: F1          pop  af
127B: C3 D2 13    jp   $13D2
127E: CB 76       bit  6,(hl)
1280: C2 94 13    jp   nz,$1394
1283: 23          inc  hl
1284: 3A 03 C8    ld   a,($C803)
1287: B7          or   a
1288: 28 0C       jr   z,$1296
128A: BE          cp   (hl)
128B: C2 51 13    jp   nz,$1351
128E: 3A 0B C8    ld   a,($C80B)
1291: E6 30       and  $30
1293: C2 51 13    jp   nz,$1351
1296: 2B          dec  hl
1297: CB 6E       bit  5,(hl)
1299: C2 51 13    jp   nz,$1351
129C: 3E 80       ld   a,$80
129E: 32 1F C2    ld   ($C21F),a
12A1: 3A D6 C0    ld   a,($C0D6)
12A4: F5          push af
12A5: 4F          ld   c,a
12A6: E6 03       and  $03
12A8: 20 0D       jr   nz,$12B7
12AA: 79          ld   a,c
12AB: E6 04       and  $04
12AD: 0F          rrca
12AE: 0F          rrca
12AF: C6 3D       add  a,$3D
12B1: DD 77 00    ld   (ix+$00),a
12B4: CD 02 04    call $0402
12B7: CD 14 15    call $1514
12BA: F1          pop  af
12BB: 4F          ld   c,a
12BC: E6 07       and  $07
12BE: 20 13       jr   nz,$12D3
12C0: 3A 2A C1    ld   a,($C12A)
12C3: CB 59       bit  3,c
12C5: 20 07       jr   nz,$12CE
12C7: C6 4A       add  a,$4A
12C9: CD 5E 06    call $065E
12CC: 18 05       jr   $12D3
12CE: C6 2A       add  a,$2A
12D0: CD 5E 06    call $065E
12D3: CD 37 05    call $0537
12D6: 21 2D C1    ld   hl,$C12D
12D9: 4E          ld   c,(hl)
12DA: 77          ld   (hl),a
12DB: 47          ld   b,a
12DC: 23          inc  hl
12DD: E6 0A       and  $0A
12DF: 28 2C       jr   z,$130D
12E1: 3E 0C       ld   a,$0C
12E3: 96          sub  (hl)
12E4: 28 03       jr   z,$12E9
12E6: 34          inc  (hl)
12E7: 18 29       jr   $1312
12E9: 77          ld   (hl),a
12EA: 21 2B C1    ld   hl,$C12B
12ED: CB 58       bit  3,b
12EF: 20 0B       jr   nz,$12FC
12F1: 34          inc  (hl)
12F2: 7E          ld   a,(hl)
12F3: FE 2E       cp   $2E
12F5: 20 0E       jr   nz,$1305
12F7: 3E 0A       ld   a,$0A
12F9: 77          ld   (hl),a
12FA: 18 09       jr   $1305
12FC: 35          dec  (hl)
12FD: 7E          ld   a,(hl)
12FE: FE 09       cp   $09
1300: 20 03       jr   nz,$1305
1302: 3E 2D       ld   a,$2D
1304: 77          ld   (hl),a
1305: 08          ex   af,af'
1306: CD 01 15    call $1501
1309: 08          ex   af,af'
130A: 77          ld   (hl),a
130B: 18 05       jr   $1312
130D: 3E 0C       ld   a,$0C
130F: 32 2E C1    ld   ($C12E),a
1312: 78          ld   a,b
1313: E6 30       and  $30
1315: C8          ret  z
1316: 79          ld   a,c
1317: E6 30       and  $30
1319: C0          ret  nz
131A: 21 2B C1    ld   hl,$C12B
131D: 7E          ld   a,(hl)
131E: 23          inc  hl
131F: FE 2C       cp   $2C
1321: 28 2E       jr   z,$1351
1323: FE 2B       cp   $2B
1325: 7E          ld   a,(hl)
1326: 20 0F       jr   nz,$1337
1328: B7          or   a
1329: C8          ret  z
132A: CD 0C 15    call $150C
132D: 35          dec  (hl)
132E: 3A 31 C1    ld   a,($C131)
1331: 2B          dec  hl
1332: 77          ld   (hl),a
1333: 06 FC       ld   b,$FC
1335: 18 12       jr   $1349
1337: FE 02       cp   $02
1339: 28 16       jr   z,$1351
133B: 34          inc  (hl)
133C: 2B          dec  hl
133D: 7E          ld   a,(hl)
133E: 32 31 C1    ld   ($C131),a
1341: 08          ex   af,af'
1342: CD 01 15    call $1501
1345: 08          ex   af,af'
1346: 77          ld   (hl),a
1347: 06 04       ld   b,$04
1349: DD 7E 05    ld   a,(ix+$05)
134C: 80          add  a,b
134D: DD 77 05    ld   (ix+$05),a
1350: C9          ret
1351: AF          xor  a
1352: 32 42 C1    ld   ($C142),a
1355: 32 30 C1    ld   ($C130),a
1358: 3A 2A C1    ld   a,($C12A)
135B: F5          push af
135C: C6 4A       add  a,$4A
135E: CD 5E 06    call $065E
1361: 3E 01       ld   a,$01
1363: CD E4 04    call $04E4
1366: F1          pop  af
1367: 4F          ld   c,a
1368: 87          add  a,a
1369: 81          add  a,c
136A: 4F          ld   c,a
136B: 06 00       ld   b,$00
136D: 21 FC C0    ld   hl,$C0FC
1370: 09          add  hl,bc
1371: 11 45 C1    ld   de,$C145
1374: 06 03       ld   b,$03
1376: 1A          ld   a,(de)
1377: FE 2B       cp   $2B
1379: 38 02       jr   c,$137D
137B: 3E 2D       ld   a,$2D
137D: 77          ld   (hl),a
137E: 13          inc  de
137F: 23          inc  hl
1380: 10 F4       djnz $1376
1382: CD 0C 0B    call $0B0C
1385: 21 3E C0    ld   hl,$C03E
1388: CB F6       set  6,(hl)
138A: 3E FE       ld   a,$FE
138C: CD 15 08    call $0815
138F: 3E 17       ld   a,$17
1391: C3 15 08    jp   $0815
1394: 21 30 C1    ld   hl,$C130
1397: 7E          ld   a,(hl)
1398: 34          inc  (hl)
1399: FE 30       cp   $30
139B: 30 16       jr   nc,$13B3
139D: 4F          ld   c,a
139E: E6 03       and  $03
13A0: C0          ret  nz
13A1: CB 51       bit  2,c
13A3: 3E B4       ld   a,$B4
13A5: 28 02       jr   z,$13A9
13A7: 3E 64       ld   a,$64
13A9: F5          push af
13AA: CD F4 14    call $14F4
13AD: F1          pop  af
13AE: 06 1A       ld   b,$1A
13B0: C3 91 07    jp   $0791
13B3: 3E 60       ld   a,$60
13B5: CD E4 04    call $04E4
13B8: 21 2A C1    ld   hl,$C12A
13BB: AF          xor  a
13BC: 06 08       ld   b,$08
13BE: 77          ld   (hl),a
13BF: 23          inc  hl
13C0: 10 FC       djnz $13BE
13C2: CD 0C 0B    call $0B0C
13C5: 21 3E C0    ld   hl,$C03E
13C8: 36 01       ld   (hl),$01
13CA: 23          inc  hl
13CB: 36 00       ld   (hl),$00
13CD: 21 1B C2    ld   hl,$C21B
13D0: 34          inc  (hl)
13D1: C9          ret
13D2: 07          rlca
13D3: 07          rlca
13D4: 07          rlca
13D5: C6 1A       add  a,$1A
13D7: DD 77 02    ld   (ix+$02),a
13DA: DD 36 01 00 ld   (ix+$01),$00
13DE: 3A 07 C2    ld   a,($C207)
13E1: 1F          rra
13E2: DD 77 05    ld   (ix+$05),a
13E5: DD CB 04 1E rr   (ix+$04)
13E9: DD 36 00 3D ld   (ix+$00),$3D
13ED: DD 36 03 0E ld   (ix+$03),$0E
13F1: C3 02 04    jp   $0402
13F4: 21 27 C2    ld   hl,$C227
13F7: 11 FB C0    ld   de,$C0FB
13FA: 0E 0A       ld   c,$0A
13FC: E5          push hl
13FD: D5          push de
13FE: CD E3 14    call $14E3
1401: D1          pop  de
1402: E1          pop  hl
1403: 30 06       jr   nc,$140B
1405: 1B          dec  de
1406: 1B          dec  de
1407: 1B          dec  de
1408: 0D          dec  c
1409: 20 F1       jr   nz,$13FC
140B: 79          ld   a,c
140C: 32 2A C1    ld   ($C12A),a
140F: 3E 0A       ld   a,$0A
1411: 91          sub  c
1412: C8          ret  z
1413: 3D          dec  a
1414: 4F          ld   c,a
1415: 87          add  a,a
1416: 06 00       ld   b,$00
1418: 11 FB C0    ld   de,$C0FB
141B: F5          push af
141C: 28 07       jr   z,$1425
141E: 81          add  a,c
141F: 4F          ld   c,a
1420: 21 F8 C0    ld   hl,$C0F8
1423: ED B8       lddr
1425: 0E 03       ld   c,$03
1427: 21 27 C2    ld   hl,$C227
142A: ED B8       lddr
142C: 11 19 C1    ld   de,$C119
142F: F1          pop  af
1430: F5          push af
1431: 28 09       jr   z,$143C
1433: 4F          ld   c,a
1434: 0F          rrca
1435: 81          add  a,c
1436: 4F          ld   c,a
1437: 21 16 C1    ld   hl,$C116
143A: ED B8       lddr
143C: 3E 2D       ld   a,$2D
143E: 12          ld   (de),a
143F: 1B          dec  de
1440: 12          ld   (de),a
1441: 1B          dec  de
1442: EB          ex   de,hl
1443: 36 0A       ld   (hl),$0A
1445: 11 23 C1    ld   de,$C123
1448: F1          pop  af
1449: 0F          rrca
144A: 28 06       jr   z,$1452
144C: 4F          ld   c,a
144D: 21 22 C1    ld   hl,$C122
1450: ED B8       lddr
1452: F5          push af
1453: 3A 2C C2    ld   a,($C22C)
1456: FE 20       cp   $20
1458: 38 02       jr   c,$145C
145A: D6 08       sub  $08
145C: 12          ld   (de),a
145D: F1          pop  af
145E: 37          scf
145F: C9          ret
1460: 3A 0A C8    ld   a,($C80A)
1463: 21 F0 11    ld   hl,$11F0
1466: E6 10       and  $10
1468: 28 03       jr   z,$146D
146A: 21 F4 11    ld   hl,$11F4
146D: 22 23 C2    ld   ($C223),hl
1470: 22 35 C2    ld   ($C235),hl
1473: CD DE 14    call $14DE
1476: 21 27 C2    ld   hl,$C227
1479: 11 54 C1    ld   de,$C154
147C: 0E 00       ld   c,$00
147E: CD 7F 11    call $117F
1481: CD CB 11    call $11CB
1484: CD 19 05    call $0519
1487: CD DE 14    call $14DE
148A: 21 27 C2    ld   hl,$C227
148D: 11 60 C1    ld   de,$C160
1490: 0E 00       ld   c,$00
1492: CD 7F 11    call $117F
1495: CD CB 11    call $11CB
1498: CD 19 05    call $0519
149B: 21 2A C1    ld   hl,$C12A
149E: 06 08       ld   b,$08
14A0: CD EE 14    call $14EE
14A3: 21 00 00    ld   hl,$0000
14A6: 22 A5 C7    ld   ($C7A5),hl
14A9: 3E 01       ld   a,$01
14AB: CD 5E 06    call $065E
14AE: 3E 03       ld   a,$03
14B0: CD 5E 06    call $065E
14B3: 3E 05       ld   a,$05
14B5: CD 5E 06    call $065E
14B8: 3E 09       ld   a,$09
14BA: CD 5E 06    call $065E
14BD: 3A 1D C2    ld   a,($C21D)
14C0: 07          rlca
14C1: 30 0A       jr   nc,$14CD
14C3: 3E 04       ld   a,$04
14C5: CD 5E 06    call $065E
14C8: 3E 06       ld   a,$06
14CA: CD 5E 06    call $065E
14CD: 3E 01       ld   a,$01
14CF: C3 E4 04    jp   $04E4
14D2: 06 03       ld   b,$03
14D4: 3E 99       ld   a,$99
14D6: 21 25 C2    ld   hl,$C225
14D9: 77          ld   (hl),a
14DA: 23          inc  hl
14DB: 10 FC       djnz $14D9
14DD: C9          ret
14DE: 06 05       ld   b,$05
14E0: AF          xor  a
14E1: 18 F3       jr   $14D6
14E3: 06 03       ld   b,$03
14E5: B7          or   a
14E6: 1A          ld   a,(de)
14E7: BE          cp   (hl)
14E8: C0          ret  nz
14E9: 1B          dec  de
14EA: 2B          dec  hl
14EB: 10 F9       djnz $14E6
14ED: C9          ret
14EE: 36 00       ld   (hl),$00
14F0: 23          inc  hl
14F1: 10 FB       djnz $14EE
14F3: C9          ret
14F4: 21 99 F8    ld   hl,$F899
14F7: 3A 2A C1    ld   a,($C12A)
14FA: 87          add  a,a
14FB: 5F          ld   e,a
14FC: 16 00       ld   d,$00
14FE: ED 52       sbc  hl,de
1500: C9          ret
1501: 3A 2C C1    ld   a,($C12C)
1504: 5F          ld   e,a
1505: 16 00       ld   d,$00
1507: 21 45 C1    ld   hl,$C145
150A: 19          add  hl,de
150B: C9          ret
150C: E5          push hl
150D: CD 01 15    call $1501
1510: 36 2D       ld   (hl),$2D
1512: E1          pop  hl
1513: C9          ret
1514: 2A 2F C1    ld   hl,($C12F)
1517: 2B          dec  hl
1518: 22 2F C1    ld   ($C12F),hl
151B: E5          push hl
151C: AF          xor  a
151D: 4F          ld   c,a
151E: 11 39 00    ld   de,$0039
1521: 3C          inc  a
1522: ED 52       sbc  hl,de
1524: 30 FB       jr   nc,$1521
1526: 3F          ccf
1527: ED 5A       adc  hl,de
1529: E1          pop  hl
152A: C0          ret  nz
152B: 3D          dec  a
152C: 20 07       jr   nz,$1535
152E: EB          ex   de,hl
152F: 21 3E C0    ld   hl,$C03E
1532: CB EE       set  5,(hl)
1534: EB          ex   de,hl
1535: D6 0A       sub  $0A
1537: 0C          inc  c
1538: 30 FB       jr   nc,$1535
153A: C6 22       add  a,$22
153C: 0D          dec  c
153D: 87          add  a,a
153E: 21 48 C1    ld   hl,$C148
1541: 77          ld   (hl),a
1542: 23          inc  hl
1543: 3C          inc  a
1544: 77          ld   (hl),a
1545: 23          inc  hl
1546: 79          ld   a,c
1547: 87          add  a,a
1548: C6 30       add  a,$30
154A: 77          ld   (hl),a
154B: 23          inc  hl
154C: 3C          inc  a
154D: 77          ld   (hl),a
154E: C9          ret
154F: 0A          ld   a,(bc)
1550: 2D          dec  l
1551: 2D          dec  l
1552: 30 31       jr   nc,$1585
1554: 3C          inc  a
1555: 3D          dec  a
1556: B7          or   a
1557: 20 48       jr   nz,$15A1
1559: 34          inc  (hl)
155A: 21 1F C2    ld   hl,$C21F
155D: CB 8E       res  1,(hl)
155F: 21 41 C1    ld   hl,$C141
1562: 34          inc  (hl)
1563: 3A 1B C2    ld   a,($C21B)
1566: 07          rlca
1567: 30 16       jr   nc,$157F
1569: 7E          ld   a,(hl)
156A: E6 03       and  $03
156C: 5F          ld   e,a
156D: 21 1F C2    ld   hl,$C21F
1570: CB C6       set  0,(hl)
1572: 23          inc  hl
1573: 36 FF       ld   (hl),$FF
1575: 16 00       ld   d,$00
1577: 21 DC 17    ld   hl,$17DC
157A: 19          add  hl,de
157B: 7E          ld   a,(hl)
157C: 32 2C C2    ld   ($C22C),a
157F: CD 0B 16    call $160B
1582: 3E 08       ld   a,$08
1584: 32 44 C2    ld   ($C244),a
1587: 21 D7 17    ld   hl,$17D7
158A: 22 3D C1    ld   ($C13D),hl
158D: 22 3F C1    ld   ($C13F),hl
1590: 21 1B C2    ld   hl,$C21B
1593: CB CE       set  1,(hl)
1595: CD 18 07    call $0718
1598: CD 43 06    call $0643
159B: CD A6 1D    call $1DA6
159E: C3 B2 15    jp   $15B2
15A1: FE 01       cp   $01
15A3: C2 4E 17    jp   nz,$174E
15A6: 2A 3F C0    ld   hl,($C03F)
15A9: CD 1B 16    call $161B
15AC: CD A1 16    call $16A1
15AF: CD 10 17    call $1710
15B2: 2A 32 C1    ld   hl,($C132)
15B5: 11 08 00    ld   de,$0008
15B8: 19          add  hl,de
15B9: 22 32 C1    ld   ($C132),hl
15BC: CB 0C       rrc  h
15BE: D8          ret  c
15BF: 7D          ld   a,l
15C0: B7          or   a
15C1: C0          ret  nz
15C2: 3E 02       ld   a,$02
15C4: 32 3E C0    ld   ($C03E),a
15C7: C9          ret
15C8: 21 3E C0    ld   hl,$C03E
15CB: 7E          ld   a,(hl)
15CC: FE 03       cp   $03
15CE: DA 56 15    jp   c,$1556
15D1: 3A 1F C2    ld   a,($C21F)
15D4: E6 02       and  $02
15D6: C0          ret  nz
15D7: 7E          ld   a,(hl)
15D8: FE 03       cp   $03
15DA: C2 96 16    jp   nz,$1696
15DD: 34          inc  (hl)
15DE: AF          xor  a
15DF: 32 44 C2    ld   ($C244),a
15E2: 3A 33 C1    ld   a,($C133)
15E5: 0F          rrca
15E6: 3A 32 C1    ld   a,($C132)
15E9: 38 03       jr   c,$15EE
15EB: B7          or   a
15EC: 28 09       jr   z,$15F7
15EE: E6 07       and  $07
15F0: C0          ret  nz
15F1: 2A 3F C0    ld   hl,($C03F)
15F4: C3 1B 16    jp   $161B
15F7: 21 2C C2    ld   hl,$C22C
15FA: 34          inc  (hl)
15FB: 28 0C       jr   z,$1609
15FD: 7E          ld   a,(hl)
15FE: E6 1F       and  $1F
1600: 20 09       jr   nz,$160B
1602: 7E          ld   a,(hl)
1603: C6 08       add  a,$08
1605: 77          ld   (hl),a
1606: C3 0B 16    jp   $160B
1609: 36 E8       ld   (hl),$E8
160B: 3A 2C C2    ld   a,($C22C)
160E: E6 1F       and  $1F
1610: 67          ld   h,a
1611: 2E 00       ld   l,$00
1613: CB 3C       srl  h
1615: CB 1D       rr   l
1617: 11 5C 4D    ld   de,$4D5C
161A: 19          add  hl,de
161B: 46          ld   b,(hl)
161C: 23          inc  hl
161D: 4E          ld   c,(hl)
161E: 23          inc  hl
161F: 22 3F C0    ld   ($C03F),hl
1622: 3A 33 C1    ld   a,($C133)
1625: 0F          rrca
1626: 3A 32 C1    ld   a,($C132)
1629: 1F          rra
162A: 0F          rrca
162B: 0F          rrca
162C: E6 3F       and  $3F
162E: 5F          ld   e,a
162F: 16 00       ld   d,$00
1631: 21 00 D0    ld   hl,$D000
1634: 19          add  hl,de
1635: 22 35 C1    ld   ($C135),hl
1638: 68          ld   l,b
1639: 58          ld   e,b
163A: 62          ld   h,d
163B: 29          add  hl,hl
163C: 29          add  hl,hl
163D: 29          add  hl,hl
163E: 29          add  hl,hl
163F: 29          add  hl,hl
1640: ED 52       sbc  hl,de
1642: 11 3E 68    ld   de,$683E
1645: 19          add  hl,de
1646: 11 1E C0    ld   de,$C01E
1649: 7E          ld   a,(hl)
164A: 23          inc  hl
164B: 06 1E       ld   b,$1E
164D: 12          ld   (de),a
164E: 13          inc  de
164F: 10 FC       djnz $164D
1651: E5          push hl
1652: FD E1       pop  iy
1654: 06 00       ld   b,$00
1656: 09          add  hl,bc
1657: 06 1E       ld   b,$1E
1659: 11 00 C0    ld   de,$C000
165C: 7E          ld   a,(hl)
165D: 12          ld   (de),a
165E: 23          inc  hl
165F: 13          inc  de
1660: 0C          inc  c
1661: 79          ld   a,c
1662: FE 1E       cp   $1E
1664: 20 03       jr   nz,$1669
1666: FD E5       push iy
1668: E1          pop  hl
1669: 10 F1       djnz $165C
166B: 3A 33 C1    ld   a,($C133)
166E: 0F          rrca
166F: D8          ret  c
1670: 3A 32 C1    ld   a,($C132)
1673: FE D8       cp   $D8
1675: C0          ret  nz
1676: 3A 2C C2    ld   a,($C22C)
1679: E6 1F       and  $1F
167B: 07          rlca
167C: 4F          ld   c,a
167D: 06 00       ld   b,$00
167F: 21 5C 5D    ld   hl,$5D5C
1682: 09          add  hl,bc
1683: 5E          ld   e,(hl)
1684: 23          inc  hl
1685: 56          ld   d,(hl)
1686: ED 53 3D C1 ld   ($C13D),de
168A: 21 3E 87    ld   hl,$873E
168D: 09          add  hl,bc
168E: 5E          ld   e,(hl)
168F: 23          inc  hl
1690: 56          ld   d,(hl)
1691: ED 53 3F C1 ld   ($C13F),de
1695: C9          ret
1696: FE 04       cp   $04
1698: 20 5D       jr   nz,$16F7
169A: 34          inc  (hl)
169B: 3A 32 C1    ld   a,($C132)
169E: E6 07       and  $07
16A0: C0          ret  nz
16A1: 3A 33 C1    ld   a,($C133)
16A4: 0F          rrca
16A5: 3A 32 C1    ld   a,($C132)
16A8: 1F          rra
16A9: 0F          rrca
16AA: 0F          rrca
16AB: C6 25       add  a,$25
16AD: E6 3F       and  $3F
16AF: 2A 3D C1    ld   hl,($C13D)
16B2: BE          cp   (hl)
16B3: C0          ret  nz
16B4: F5          push af
16B5: 23          inc  hl
16B6: 46          ld   b,(hl)
16B7: 23          inc  hl
16B8: 78          ld   a,b
16B9: 3C          inc  a
16BA: 28 29       jr   z,$16E5
16BC: 7E          ld   a,(hl)
16BD: 23          inc  hl
16BE: 4E          ld   c,(hl)
16BF: 23          inc  hl
16C0: 22 3D C1    ld   ($C13D),hl
16C3: 21 44 C2    ld   hl,$C244
16C6: CB 5E       bit  3,(hl)
16C8: 20 07       jr   nz,$16D1
16CA: CD A9 04    call $04A9
16CD: F1          pop  af
16CE: C3 AF 16    jp   $16AF
16D1: FE 1C       cp   $1C
16D3: 20 07       jr   nz,$16DC
16D5: CD A9 04    call $04A9
16D8: F1          pop  af
16D9: C3 AF 16    jp   $16AF
16DC: FE 18       cp   $18
16DE: CC A9 04    call z,$04A9
16E1: F1          pop  af
16E2: C3 AF 16    jp   $16AF
16E5: F1          pop  af
16E6: 22 3D C1    ld   ($C13D),hl
16E9: 3A 44 C2    ld   a,($C244)
16EC: E6 08       and  $08
16EE: C0          ret  nz
16EF: 21 1F C2    ld   hl,$C21F
16F2: CB 86       res  0,(hl)
16F4: CB CE       set  1,(hl)
16F6: C9          ret
16F7: 36 03       ld   (hl),$03
16F9: 3E 01       ld   a,$01
16FB: 32 44 C2    ld   ($C244),a
16FE: 3A 32 C1    ld   a,($C132)
1701: E6 07       and  $07
1703: CC 10 17    call z,$1710
1706: 2A 32 C1    ld   hl,($C132)
1709: 23          inc  hl
170A: 22 32 C1    ld   ($C132),hl
170D: C3 B8 32    jp   $32B8
1710: 3A 33 C1    ld   a,($C133)
1713: 0F          rrca
1714: 3A 32 C1    ld   a,($C132)
1717: 1F          rra
1718: 0F          rrca
1719: 0F          rrca
171A: C6 25       add  a,$25
171C: E6 3F       and  $3F
171E: 2A 3F C1    ld   hl,($C13F)
1721: BE          cp   (hl)
1722: C0          ret  nz
1723: 23          inc  hl
1724: 5E          ld   e,(hl)
1725: 16 00       ld   d,$00
1727: 23          inc  hl
1728: EB          ex   de,hl
1729: 29          add  hl,hl
172A: 29          add  hl,hl
172B: 29          add  hl,hl
172C: 29          add  hl,hl
172D: 29          add  hl,hl
172E: 29          add  hl,hl
172F: 4F          ld   c,a
1730: 06 00       ld   b,$00
1732: 09          add  hl,bc
1733: 01 00 D0    ld   bc,$D000
1736: 09          add  hl,bc
1737: 22 37 C1    ld   ($C137),hl
173A: EB          ex   de,hl
173B: 5E          ld   e,(hl)
173C: 23          inc  hl
173D: 56          ld   d,(hl)
173E: 23          inc  hl
173F: 22 3F C1    ld   ($C13F),hl
1742: EB          ex   de,hl
1743: 11 39 C1    ld   de,$C139
1746: ED A0       ldi
1748: ED A0       ldi
174A: 22 3B C1    ld   ($C13B),hl
174D: C9          ret
174E: CD 2B 00    call $002B
1751: 3A 48 C2    ld   a,($C248)
1754: B7          or   a
1755: 20 16       jr   nz,$176D
1757: 32 44 C2    ld   ($C244),a
175A: 3C          inc  a
175B: 32 48 C2    ld   ($C248),a
175E: 21 D2 F3    ld   hl,$F3D2
1761: 22 46 C2    ld   ($C246),hl
1764: AF          xor  a
1765: 32 49 C2    ld   ($C249),a
1768: 3E 01       ld   a,$01
176A: C3 E4 04    jp   $04E4
176D: 21 48 C2    ld   hl,$C248
1770: 7E          ld   a,(hl)
1771: 3D          dec  a
1772: FE 46       cp   $46
1774: 28 3B       jr   z,$17B1
1776: 34          inc  (hl)
1777: E6 03       and  $03
1779: 21 49 C2    ld   hl,$C249
177C: CB 47       bit  0,a
177E: 20 01       jr   nz,$1781
1780: 34          inc  (hl)
1781: 5F          ld   e,a
1782: 16 00       ld   d,$00
1784: 7E          ld   a,(hl)
1785: 47          ld   b,a
1786: 21 D8 17    ld   hl,$17D8
1789: 19          add  hl,de
178A: 5E          ld   e,(hl)
178B: CB 7B       bit  7,e
178D: 28 01       jr   z,$1790
178F: 15          dec  d
1790: 2A 46 C2    ld   hl,($C246)
1793: 0E 2D       ld   c,$2D
1795: 7C          ld   a,h
1796: FE F0       cp   $F0
1798: 38 0B       jr   c,$17A5
179A: FE F8       cp   $F8
179C: 30 07       jr   nc,$17A5
179E: 71          ld   (hl),c
179F: CB DC       set  3,h
17A1: 36 60       ld   (hl),$60
17A3: CB 9C       res  3,h
17A5: 05          dec  b
17A6: 19          add  hl,de
17A7: 28 02       jr   z,$17AB
17A9: 18 EA       jr   $1795
17AB: 22 46 C2    ld   ($C246),hl
17AE: C3 4E 17    jp   $174E
17B1: 3E 03       ld   a,$03
17B3: 32 3E C0    ld   ($C03E),a
17B6: 21 1F C2    ld   hl,$C21F
17B9: CB 46       bit  0,(hl)
17BB: 20 02       jr   nz,$17BF
17BD: CB CE       set  1,(hl)
17BF: 3E 02       ld   a,$02
17C1: CD A6 04    call $04A6
17C4: CD 54 07    call $0754
17C7: 3E 01       ld   a,$01
17C9: CD E4 04    call $04E4
17CC: 21 1B C2    ld   hl,$C21B
17CF: CB DE       set  3,(hl)
17D1: CB 7E       bit  7,(hl)
17D3: C0          ret  nz
17D4: 36 04       ld   (hl),$04
17D6: C9          ret
17D7: FF          rst  $38
17D8: C0          ret  nz
17D9: FF          rst  $38
17DA: 40          ld   b,b
17DB: 01 02 05    ld   bc,$0502
17DE: 09          add  hl,bc
17DF: 0C          inc  c
17E0: 3A D6 C0    ld   a,($C0D6)
17E3: 0F          rrca
17E4: 38 23       jr   c,$1809
17E6: DD 21 AD C2 ld   ix,$C2AD
17EA: 0E 09       ld   c,$09
17EC: FD 21 6D C4 ld   iy,$C46D
17F0: 06 0E       ld   b,$0E
17F2: 11 20 00    ld   de,$0020
17F5: DD 7E 06    ld   a,(ix+$06)
17F8: E6 C0       and  $C0
17FA: FE 80       cp   $80
17FC: CC 1D 19    call z,$191D
17FF: 0D          dec  c
1800: C8          ret  z
1801: 11 10 00    ld   de,$0010
1804: DD 19       add  ix,de
1806: C3 EC 17    jp   $17EC
1809: 3A 43 C3    ld   a,($C343)
180C: E6 C0       and  $C0
180E: FE 80       cp   $80
1810: 20 3D       jr   nz,$184F
1812: DD 21 3D C3 ld   ix,$C33D
1816: CD 1D 18    call $181D
1819: DD 21 4D C3 ld   ix,$C34D
181D: FD 21 6D C4 ld   iy,$C46D
1821: 06 0E       ld   b,$0E
1823: 11 20 00    ld   de,$0020
1826: CD 1D 19    call $191D
1829: DD CB 06 B6 res  6,(ix+$06)
182D: 78          ld   a,b
182E: B7          or   a
182F: 28 06       jr   z,$1837
1831: CD 45 19    call $1945
1834: C3 29 18    jp   $1829
1837: 06 10       ld   b,$10
1839: 11 10 00    ld   de,$0010
183C: 78          ld   a,b
183D: B7          or   a
183E: 28 0A       jr   z,$184A
1840: CD 45 19    call $1945
1843: DD CB 06 B6 res  6,(ix+$06)
1847: C3 3C 18    jp   $183C
184A: DD CB 06 F6 set  6,(ix+$06)
184E: C9          ret
184F: 3A 53 C2    ld   a,($C253)
1852: 4F          ld   c,a
1853: E6 C0       and  $C0
1855: FE 80       cp   $80
1857: C0          ret  nz
1858: DD 21 4D C2 ld   ix,$C24D
185C: 3A 4F C2    ld   a,($C24F)
185F: C6 05       add  a,$05
1861: 5F          ld   e,a
1862: D6 03       sub  $03
1864: 57          ld   d,a
1865: 79          ld   a,c
1866: CB 6F       bit  5,a
1868: 20 26       jr   nz,$1890
186A: 3A 52 C2    ld   a,($C252)
186D: D6 05       sub  $05
186F: 47          ld   b,a
1870: C6 02       add  a,$02
1872: 4F          ld   c,a
1873: D9          exx
1874: FD 21 2D C6 ld   iy,$C62D
1878: 06 10       ld   b,$10
187A: 11 10 00    ld   de,$0010
187D: CD 45 19    call $1945
1880: D9          exx
1881: 3A 53 C2    ld   a,($C253)
1884: 4F          ld   c,a
1885: E6 9F       and  $9F
1887: 47          ld   b,a
1888: 79          ld   a,c
1889: E6 40       and  $40
188B: 0F          rrca
188C: B0          or   b
188D: 32 53 C2    ld   ($C253),a
1890: E6 10       and  $10
1892: 20 24       jr   nz,$18B8
1894: 3A 52 C2    ld   a,($C252)
1897: C6 03       add  a,$03
1899: 47          ld   b,a
189A: C6 02       add  a,$02
189C: 4F          ld   c,a
189D: D9          exx
189E: FD 21 2D C6 ld   iy,$C62D
18A2: 06 10       ld   b,$10
18A4: 11 10 00    ld   de,$0010
18A7: CD 45 19    call $1945
18AA: 3A 53 C2    ld   a,($C253)
18AD: CB 77       bit  6,a
18AF: 28 07       jr   z,$18B8
18B1: CB B7       res  6,a
18B3: CB E7       set  4,a
18B5: 32 53 C2    ld   ($C253),a
18B8: FD 21 6D C2 ld   iy,$C26D
18BC: 11 10 00    ld   de,$0010
18BF: 06 01       ld   b,$01
18C1: CD 1D 19    call $191D
18C4: 3A 83 C2    ld   a,($C283)
18C7: E6 E0       and  $E0
18C9: FE 80       cp   $80
18CB: 20 09       jr   nz,$18D6
18CD: FD 21 7D C2 ld   iy,$C27D
18D1: 06 01       ld   b,$01
18D3: CD 45 19    call $1945
18D6: 3A 93 C2    ld   a,($C293)
18D9: E6 E0       and  $E0
18DB: FE 80       cp   $80
18DD: 20 09       jr   nz,$18E8
18DF: FD 21 8D C2 ld   iy,$C28D
18E3: 06 01       ld   b,$01
18E5: CD 45 19    call $1945
18E8: FD 21 2D C6 ld   iy,$C62D
18EC: DD CB 06 B6 res  6,(ix+$06)
18F0: 06 10       ld   b,$10
18F2: CD 45 19    call $1945
18F5: 3A 83 C2    ld   a,($C283)
18F8: E6 E0       and  $E0
18FA: FE A0       cp   $A0
18FC: 20 0D       jr   nz,$190B
18FE: DD 21 7D C2 ld   ix,$C27D
1902: FD 21 2D C6 ld   iy,$C62D
1906: 06 10       ld   b,$10
1908: CD 1D 19    call $191D
190B: 3A 93 C2    ld   a,($C293)
190E: E6 E0       and  $E0
1910: FE A0       cp   $A0
1912: C0          ret  nz
1913: DD 21 8D C2 ld   ix,$C28D
1917: FD 21 2D C6 ld   iy,$C62D
191B: 06 10       ld   b,$10
191D: D9          exx
191E: DD 7E 02    ld   a,(ix+$02)
1921: 4F          ld   c,a
1922: DD 86 0B    add  a,(ix+$0b)
1925: 30 01       jr   nc,$1928
1927: 9F          sbc  a,a
1928: 5F          ld   e,a
1929: 79          ld   a,c
192A: DD 96 0C    sub  (ix+$0c)
192D: 30 01       jr   nc,$1930
192F: AF          xor  a
1930: 57          ld   d,a
1931: DD 7E 05    ld   a,(ix+$05)
1934: 47          ld   b,a
1935: DD 86 0D    add  a,(ix+$0d)
1938: 30 01       jr   nc,$193B
193A: 9F          sbc  a,a
193B: 4F          ld   c,a
193C: 78          ld   a,b
193D: DD 96 0E    sub  (ix+$0e)
1940: 30 01       jr   nc,$1943
1942: AF          xor  a
1943: 47          ld   b,a
1944: D9          exx
1945: D9          exx
1946: FD 7E 06    ld   a,(iy+$06)
1949: E6 C0       and  $C0
194B: FE 80       cp   $80
194D: 20 38       jr   nz,$1987
194F: FD 7E 02    ld   a,(iy+$02)
1952: 6F          ld   l,a
1953: FD 86 0B    add  a,(iy+$0b)
1956: 30 01       jr   nc,$1959
1958: 9F          sbc  a,a
1959: BA          cp   d
195A: 38 2B       jr   c,$1987
195C: 7D          ld   a,l
195D: FD 96 0C    sub  (iy+$0c)
1960: 30 01       jr   nc,$1963
1962: AF          xor  a
1963: BB          cp   e
1964: 30 21       jr   nc,$1987
1966: FD 7E 05    ld   a,(iy+$05)
1969: 6F          ld   l,a
196A: FD 86 0D    add  a,(iy+$0d)
196D: 30 01       jr   nc,$1970
196F: 9F          sbc  a,a
1970: B8          cp   b
1971: 38 14       jr   c,$1987
1973: 7D          ld   a,l
1974: FD 96 0E    sub  (iy+$0e)
1977: 30 01       jr   nc,$197A
1979: AF          xor  a
197A: B9          cp   c
197B: 30 0A       jr   nc,$1987
197D: DD CB 06 F6 set  6,(ix+$06)
1981: FD CB 06 F6 set  6,(iy+$06)
1985: D9          exx
1986: C9          ret
1987: D9          exx
1988: FD 19       add  iy,de
198A: 10 B9       djnz $1945
198C: C9          ret
198D: 34          inc  (hl)
198E: 21 2A C2    ld   hl,$C22A
1991: 35          dec  (hl)
1992: CD F5 04    call $04F5
1995: 11 4D C2    ld   de,$C24D
1998: 21 6F 1E    ld   hl,$1E6F
199B: 01 20 00    ld   bc,$0020
199E: ED B0       ldir
19A0: 3A 09 C8    ld   a,($C809)
19A3: 07          rlca
19A4: 30 06       jr   nc,$19AC
19A6: 21 55 35    ld   hl,$3555
19A9: 22 55 C2    ld   ($C255),hl
19AC: DD 21 AD C2 ld   ix,$C2AD
19B0: 11 10 00    ld   de,$0010
19B3: 21 B5 36    ld   hl,$36B5
19B6: 06 09       ld   b,$09
19B8: DD 36 03 00 ld   (ix+$03),$00
19BC: DD 75 08    ld   (ix+$08),l
19BF: DD 74 09    ld   (ix+$09),h
19C2: DD 36 0B 03 ld   (ix+$0b),$03
19C6: DD 36 0C 06 ld   (ix+$0c),$06
19CA: DD 36 0D 04 ld   (ix+$0d),$04
19CE: DD 36 0E 05 ld   (ix+$0e),$05
19D2: DD 19       add  ix,de
19D4: 10 E2       djnz $19B8
19D6: 06 0F       ld   b,$0F
19D8: 3A 1F C2    ld   a,($C21F)
19DB: 0F          rrca
19DC: 38 17       jr   c,$19F5
19DE: 21 40 C0    ld   hl,$C040
19E1: CB D6       set  2,(hl)
19E3: 21 D7 1E    ld   hl,$1ED7
19E6: 22 5D C2    ld   ($C25D),hl
19E9: 3E 40       ld   a,$40
19EB: 32 62 C2    ld   ($C262),a
19EE: DD 21 4D C2 ld   ix,$C24D
19F2: C3 06 1C    jp   $1C06
19F5: 3E 02       ld   a,$02
19F7: 32 21 C2    ld   ($C221),a
19FA: 3E 01       ld   a,$01
19FC: CD 15 08    call $0815
19FF: 3E 17       ld   a,$17
1A01: C3 A6 04    jp   $04A6
1A04: 3A 20 C2    ld   a,($C220)
1A07: 3C          inc  a
1A08: 28 14       jr   z,$1A1E
1A0A: FE 04       cp   $04
1A0C: 38 04       jr   c,$1A12
1A0E: 01 1E 1A    ld   bc,$1A1E
1A11: C5          push bc
1A12: 3D          dec  a
1A13: 4F          ld   c,a
1A14: 07          rlca
1A15: 81          add  a,c
1A16: 4F          ld   c,a
1A17: 06 00       ld   b,$00
1A19: 21 63 1E    ld   hl,$1E63
1A1C: 09          add  hl,bc
1A1D: E9          jp   (hl)
1A1E: 21 40 C0    ld   hl,$C040
1A21: CB 46       bit  0,(hl)
1A23: CA 8D 19    jp   z,$198D
1A26: CD 1A 25    call $251A
1A29: CD 8F 21    call $218F
1A2C: CD 54 24    call $2454
1A2F: DD 21 4D C2 ld   ix,$C24D
1A33: DD CB 06 5E bit  3,(ix+$06)
1A37: C0          ret  nz
1A38: 3A 1F C2    ld   a,($C21F)
1A3B: 0F          rrca
1A3C: 38 0E       jr   c,$1A4C
1A3E: DD CB 06 BE res  7,(ix+$06)
1A42: 21 62 C2    ld   hl,$C262
1A45: 7E          ld   a,(hl)
1A46: FE 40       cp   $40
1A48: D2 06 1C    jp   nc,$1C06
1A4B: 34          inc  (hl)
1A4C: 21 53 C2    ld   hl,$C253
1A4F: 7E          ld   a,(hl)
1A50: CB 77       bit  6,a
1A52: 28 54       jr   z,$1AA8
1A54: 36 08       ld   (hl),$08
1A56: AF          xor  a
1A57: 32 6A C2    ld   ($C26A),a
1A5A: 3E 0E       ld   a,$0E
1A5C: 32 50 C2    ld   ($C250),a
1A5F: 3E F3       ld   a,$F3
1A61: CD 7A 04    call $047A
1A64: 11 08 0E    ld   de,$0E08
1A67: DD 21 7D C2 ld   ix,$C27D
1A6B: DD CB 06 6E bit  5,(ix+$06)
1A6F: 20 06       jr   nz,$1A77
1A71: DD CB 06 76 bit  6,(ix+$06)
1A75: 28 0D       jr   z,$1A84
1A77: DD 72 03    ld   (ix+$03),d
1A7A: DD 73 06    ld   (ix+$06),e
1A7D: D5          push de
1A7E: 3E 03       ld   a,$03
1A80: CD CF 04    call $04CF
1A83: D1          pop  de
1A84: DD CB 16 6E bit  5,(ix+$16)
1A88: 20 06       jr   nz,$1A90
1A8A: DD CB 06 76 bit  6,(ix+$06)
1A8E: 28 0B       jr   z,$1A9B
1A90: DD 72 13    ld   (ix+$13),d
1A93: DD 73 16    ld   (ix+$16),e
1A96: 3E 04       ld   a,$04
1A98: CD CF 04    call $04CF
1A9B: 3E FE       ld   a,$FE
1A9D: CD 15 08    call $0815
1AA0: 3E 11       ld   a,$11
1AA2: CD 15 08    call $0815
1AA5: C3 36 23    jp   $2336
1AA8: 3A 6A C2    ld   a,($C26A)
1AAB: 0F          rrca
1AAC: 4F          ld   c,a
1AAD: 0F          rrca
1AAE: 81          add  a,c
1AAF: 16 00       ld   d,$00
1AB1: 5F          ld   e,a
1AB2: 21 8F 1E    ld   hl,$1E8F
1AB5: 19          add  hl,de
1AB6: 22 5D C2    ld   ($C25D),hl
1AB9: CD 37 05    call $0537
1ABC: E6 3F       and  $3F
1ABE: 4F          ld   c,a
1ABF: 3E 18       ld   a,$18
1AC1: 21 63 C2    ld   hl,$C263
1AC4: CB 61       bit  4,c
1AC6: 28 09       jr   z,$1AD1
1AC8: 34          inc  (hl)
1AC9: BE          cp   (hl)
1ACA: 30 06       jr   nc,$1AD2
1ACC: DD CB 1F C6 set  0,(ix+$1f)
1AD0: AF          xor  a
1AD1: 77          ld   (hl),a
1AD2: CB 69       bit  5,c
1AD4: 28 13       jr   z,$1AE9
1AD6: 21 6C C2    ld   hl,$C26C
1AD9: CB 4E       bit  1,(hl)
1ADB: 20 0C       jr   nz,$1AE9
1ADD: 3A 21 C2    ld   a,($C221)
1AE0: B7          or   a
1AE1: 28 06       jr   z,$1AE9
1AE3: CB CE       set  1,(hl)
1AE5: AF          xor  a
1AE6: 32 47 C3    ld   ($C347),a
1AE9: 21 4E C2    ld   hl,$C24E
1AEC: 7E          ld   a,(hl)
1AED: 17          rla
1AEE: 23          inc  hl
1AEF: 7E          ld   a,(hl)
1AF0: 17          rla
1AF1: 23          inc  hl
1AF2: 23          inc  hl
1AF3: FE F8       cp   $F8
1AF5: 38 04       jr   c,$1AFB
1AF7: CB 81       res  0,c
1AF9: 18 06       jr   $1B01
1AFB: FE 11       cp   $11
1AFD: 30 02       jr   nc,$1B01
1AFF: CB 91       res  2,c
1B01: 7E          ld   a,(hl)
1B02: 17          rla
1B03: 23          inc  hl
1B04: 7E          ld   a,(hl)
1B05: 17          rla
1B06: 06 E0       ld   b,$E0
1B08: 21 93 C2    ld   hl,$C293
1B0B: CB 6E       bit  5,(hl)
1B0D: 28 02       jr   z,$1B11
1B0F: 06 D0       ld   b,$D0
1B11: B8          cp   b
1B12: 38 04       jr   c,$1B18
1B14: CB 89       res  1,c
1B16: 18 10       jr   $1B28
1B18: 06 11       ld   b,$11
1B1A: 21 83 C2    ld   hl,$C283
1B1D: CB 6E       bit  5,(hl)
1B1F: 28 02       jr   z,$1B23
1B21: 06 21       ld   b,$21
1B23: B8          cp   b
1B24: 30 02       jr   nc,$1B28
1B26: CB 99       res  3,c
1B28: 79          ld   a,c
1B29: E6 0F       and  $0F
1B2B: 28 0E       jr   z,$1B3B
1B2D: 21 EB 1E    ld   hl,$1EEB
1B30: 5F          ld   e,a
1B31: 16 00       ld   d,$00
1B33: 19          add  hl,de
1B34: 7E          ld   a,(hl)
1B35: 32 54 C2    ld   ($C254),a
1B38: CD B6 33    call $33B6
1B3B: DD E5       push ix
1B3D: CD 19 23    call $2319
1B40: DD E1       pop  ix
1B42: 06 03       ld   b,$03
1B44: 3A 40 C0    ld   a,($C040)
1B47: E6 0C       and  $0C
1B49: 28 0E       jr   z,$1B59
1B4B: 3A 60 C2    ld   a,($C260)
1B4E: 04          inc  b
1B4F: FE 90       cp   $90
1B51: 30 06       jr   nc,$1B59
1B53: 05          dec  b
1B54: FE 60       cp   $60
1B56: 30 01       jr   nc,$1B59
1B58: 05          dec  b
1B59: 21 5F C2    ld   hl,$C25F
1B5C: 7E          ld   a,(hl)
1B5D: 34          inc  (hl)
1B5E: B8          cp   b
1B5F: 38 02       jr   c,$1B63
1B61: AF          xor  a
1B62: 77          ld   (hl),a
1B63: 87          add  a,a
1B64: 87          add  a,a
1B65: 5F          ld   e,a
1B66: 16 00       ld   d,$00
1B68: FD 2A 5D C2 ld   iy,($C25D)
1B6C: FD 19       add  iy,de
1B6E: DD 7E 05    ld   a,(ix+$05)
1B71: FE 74       cp   $74
1B73: 30 29       jr   nc,$1B9E
1B75: 3A D6 C0    ld   a,($C0D6)
1B78: 0F          rrca
1B79: 30 07       jr   nc,$1B82
1B7B: 3E F3       ld   a,$F3
1B7D: CD 7A 04    call $047A
1B80: 18 1C       jr   $1B9E
1B82: 01 00 08    ld   bc,$0800
1B85: 3A 40 C0    ld   a,($C040)
1B88: E6 02       and  $02
1B8A: C4 0C 1E    call nz,$1E0C
1B8D: 2A 4E C2    ld   hl,($C24E)
1B90: ED 42       sbc  hl,bc
1B92: EB          ex   de,hl
1B93: 2A 51 C2    ld   hl,($C251)
1B96: 09          add  hl,bc
1B97: 06 00       ld   b,$00
1B99: 0E 3C       ld   c,$3C
1B9B: 3E F3       ld   a,$F3
1B9D: CF          rst  $08
1B9E: DD 4E 01    ld   c,(ix+$01)
1BA1: DD 46 02    ld   b,(ix+$02)
1BA4: 2A F7 C1    ld   hl,($C1F7)
1BA7: 09          add  hl,bc
1BA8: 29          add  hl,hl
1BA9: 5C          ld   e,h
1BAA: 16 00       ld   d,$00
1BAC: CB 12       rl   d
1BAE: DD 4E 04    ld   c,(ix+$04)
1BB1: DD 46 05    ld   b,(ix+$05)
1BB4: 2A FF C1    ld   hl,($C1FF)
1BB7: 09          add  hl,bc
1BB8: 29          add  hl,hl
1BB9: 7C          ld   a,h
1BBA: 01 00 E0    ld   bc,$E000
1BBD: 61          ld   h,c
1BBE: DD 6E 0F    ld   l,(ix+$0f)
1BC1: 29          add  hl,hl
1BC2: 29          add  hl,hl
1BC3: 09          add  hl,bc
1BC4: 47          ld   b,a
1BC5: FD 4E 00    ld   c,(iy+$00)
1BC8: 71          ld   (hl),c
1BC9: 23          inc  hl
1BCA: 73          ld   (hl),e
1BCB: 23          inc  hl
1BCC: DD 7E 03    ld   a,(ix+$03)
1BCF: B2          or   d
1BD0: 77          ld   (hl),a
1BD1: 23          inc  hl
1BD2: 70          ld   (hl),b
1BD3: 23          inc  hl
1BD4: FD 4E 01    ld   c,(iy+$01)
1BD7: 71          ld   (hl),c
1BD8: 23          inc  hl
1BD9: 73          ld   (hl),e
1BDA: 23          inc  hl
1BDB: 77          ld   (hl),a
1BDC: 23          inc  hl
1BDD: 78          ld   a,b
1BDE: C6 10       add  a,$10
1BE0: 77          ld   (hl),a
1BE1: 23          inc  hl
1BE2: FD 4E 02    ld   c,(iy+$02)
1BE5: 71          ld   (hl),c
1BE6: 23          inc  hl
1BE7: 7B          ld   a,e
1BE8: D6 10       sub  $10
1BEA: 5F          ld   e,a
1BEB: 30 01       jr   nc,$1BEE
1BED: 15          dec  d
1BEE: 73          ld   (hl),e
1BEF: 23          inc  hl
1BF0: DD 7E 03    ld   a,(ix+$03)
1BF3: B2          or   d
1BF4: 77          ld   (hl),a
1BF5: 23          inc  hl
1BF6: 70          ld   (hl),b
1BF7: 23          inc  hl
1BF8: FD 4E 03    ld   c,(iy+$03)
1BFB: 71          ld   (hl),c
1BFC: 23          inc  hl
1BFD: 73          ld   (hl),e
1BFE: 23          inc  hl
1BFF: 77          ld   (hl),a
1C00: 23          inc  hl
1C01: 78          ld   a,b
1C02: C6 10       add  a,$10
1C04: 77          ld   (hl),a
1C05: C9          ret
1C06: 21 40 C0    ld   hl,$C040
1C09: CB 4E       bit  1,(hl)
1C0B: 20 22       jr   nz,$1C2F
1C0D: CB CE       set  1,(hl)
1C0F: DD CB 06 BE res  7,(ix+$06)
1C13: DD 36 13 C0 ld   (ix+$13),$C0
1C17: CB 56       bit  2,(hl)
1C19: 21 95 34    ld   hl,$3495
1C1C: 22 55 C2    ld   ($C255),hl
1C1F: C0          ret  nz
1C20: 21 BF 1E    ld   hl,$1EBF
1C23: 22 5D C2    ld   ($C25D),hl
1C26: 21 00 00    ld   hl,$0000
1C29: 22 60 C2    ld   ($C260),hl
1C2C: C3 36 23    jp   $2336
1C2F: CB 56       bit  2,(hl)
1C31: C2 44 1D    jp   nz,$1D44
1C34: 11 50 3B    ld   de,$3B50
1C37: CB 5E       bit  3,(hl)
1C39: 20 2A       jr   nz,$1C65
1C3B: 3A 4F C2    ld   a,($C24F)
1C3E: E6 7F       and  $7F
1C40: 93          sub  e
1C41: 30 02       jr   nc,$1C45
1C43: ED 44       neg
1C45: FE 24       cp   $24
1C47: 30 35       jr   nc,$1C7E
1C49: 3A 52 C2    ld   a,($C252)
1C4C: E6 7F       and  $7F
1C4E: 92          sub  d
1C4F: 30 02       jr   nc,$1C53
1C51: ED 44       neg
1C53: FE 24       cp   $24
1C55: 30 27       jr   nc,$1C7E
1C57: CB DE       set  3,(hl)
1C59: D9          exx
1C5A: 3E FE       ld   a,$FE
1C5C: CD 15 08    call $0815
1C5F: 3E 0F       ld   a,$0F
1C61: CD 15 08    call $0815
1C64: D9          exx
1C65: CB 66       bit  4,(hl)
1C67: 20 21       jr   nz,$1C8A
1C69: E5          push hl
1C6A: DD 6E 02    ld   l,(ix+$02)
1C6D: DD 66 05    ld   h,(ix+$05)
1C70: B7          or   a
1C71: ED 52       sbc  hl,de
1C73: E1          pop  hl
1C74: 20 08       jr   nz,$1C7E
1C76: CB E6       set  4,(hl)
1C78: DD 36 04 80 ld   (ix+$04),$80
1C7C: 18 0C       jr   $1C8A
1C7E: E5          push hl
1C7F: EB          ex   de,hl
1C80: CD 06 33    call $3306
1C83: 32 54 C2    ld   ($C254),a
1C86: CD B6 33    call $33B6
1C89: E1          pop  hl
1C8A: CB 7E       bit  7,(hl)
1C8C: C2 19 1D    jp   nz,$1D19
1C8F: CB 76       bit  6,(hl)
1C91: 20 4F       jr   nz,$1CE2
1C93: CB 6E       bit  5,(hl)
1C95: 20 35       jr   nz,$1CCC
1C97: CB 5E       bit  3,(hl)
1C99: CA 42 1B    jp   z,$1B42
1C9C: DD 34 13    inc  (ix+$13)
1C9F: 3A 60 C2    ld   a,($C260)
1CA2: FE C0       cp   $C0
1CA4: C2 88 1D    jp   nz,$1D88
1CA7: CB EE       set  5,(hl)
1CA9: FD 21 E7 1E ld   iy,$1EE7
1CAD: CD 9E 1B    call $1B9E
1CB0: 3E F3       ld   a,$F3
1CB2: CD 7A 04    call $047A
1CB5: 3E FE       ld   a,$FE
1CB7: CD 15 08    call $0815
1CBA: 3E 12       ld   a,$12
1CBC: CD 15 08    call $0815
1CBF: 3E 17       ld   a,$17
1CC1: CD CF 04    call $04CF
1CC4: 3E 17       ld   a,$17
1CC6: CD A6 04    call $04A6
1CC9: CD 1B 1E    call $1E1B
1CCC: DD 34 14    inc  (ix+$14)
1CCF: 3A 61 C2    ld   a,($C261)
1CD2: D6 FF       sub  $FF
1CD4: C0          ret  nz
1CD5: 32 65 C2    ld   ($C265),a
1CD8: 3E FE       ld   a,$FE
1CDA: CD 15 08    call $0815
1CDD: 21 40 C0    ld   hl,$C040
1CE0: CB F6       set  6,(hl)
1CE2: 21 22 C2    ld   hl,$C222
1CE5: 7E          ld   a,(hl)
1CE6: B7          or   a
1CE7: 28 22       jr   z,$1D0B
1CE9: 11 07 00    ld   de,$0007
1CEC: DD 34 18    inc  (ix+$18)
1CEF: 3A 65 C2    ld   a,($C265)
1CF2: E6 01       and  $01
1CF4: C2 93 03    jp   nz,$0393
1CF7: 32 65 C2    ld   ($C265),a
1CFA: 35          dec  (hl)
1CFB: 1E 18       ld   e,$18
1CFD: CD 93 03    call $0393
1D00: 3A D6 C0    ld   a,($C0D6)
1D03: E6 02       and  $02
1D05: C0          ret  nz
1D06: 3E 10       ld   a,$10
1D08: C3 15 08    jp   $0815
1D0B: DD 34 18    inc  (ix+$18)
1D0E: 3A 65 C2    ld   a,($C265)
1D11: FE 60       cp   $60
1D13: D8          ret  c
1D14: 21 40 C0    ld   hl,$C040
1D17: CB FE       set  7,(hl)
1D19: AF          xor  a
1D1A: 32 53 C2    ld   ($C253),a
1D1D: 32 6A C2    ld   ($C26A),a
1D20: CB D6       set  2,(hl)
1D22: 3E FE       ld   a,$FE
1D24: CD 15 08    call $0815
1D27: 3E 0E       ld   a,$0E
1D29: CD 15 08    call $0815
1D2C: 21 1F C2    ld   hl,$C21F
1D2F: CB 8E       res  1,(hl)
1D31: 3E 41       ld   a,$41
1D33: CD 5E 06    call $065E
1D36: 3E 42       ld   a,$42
1D38: CD 5E 06    call $065E
1D3B: 3E 43       ld   a,$43
1D3D: CD 5E 06    call $065E
1D40: AF          xor  a
1D41: 32 2F C2    ld   ($C22F),a
1D44: 21 B3 1E    ld   hl,$1EB3
1D47: DD 35 13    dec  (ix+$13)
1D4A: 20 3F       jr   nz,$1D8B
1D4C: DD CB 06 FE set  7,(ix+$06)
1D50: 06 01       ld   b,$01
1D52: 3A 6C C2    ld   a,($C26C)
1D55: E6 C0       and  $C0
1D57: 28 02       jr   z,$1D5B
1D59: 06 02       ld   b,$02
1D5B: 78          ld   a,b
1D5C: CD 15 08    call $0815
1D5F: 21 1F C2    ld   hl,$C21F
1D62: CB 8E       res  1,(hl)
1D64: 34          inc  (hl)
1D65: 23          inc  hl
1D66: 23          inc  hl
1D67: 36 02       ld   (hl),$02
1D69: 21 40 C0    ld   hl,$C040
1D6C: 36 01       ld   (hl),$01
1D6E: 21 8F 1E    ld   hl,$1E8F
1D71: 22 5D C2    ld   ($C25D),hl
1D74: 21 15 35    ld   hl,$3515
1D77: 3A 09 C8    ld   a,($C809)
1D7A: 07          rlca
1D7B: 30 03       jr   nc,$1D80
1D7D: 21 55 35    ld   hl,$3555
1D80: 22 55 C2    ld   ($C255),hl
1D83: DD 36 15 00 ld   (ix+$15),$00
1D87: C9          ret
1D88: 21 BF 1E    ld   hl,$1EBF
1D8B: DD 7E 13    ld   a,(ix+$13)
1D8E: 4F          ld   c,a
1D8F: E6 3F       and  $3F
1D91: C2 42 1B    jp   nz,$1B42
1D94: 57          ld   d,a
1D95: 79          ld   a,c
1D96: E6 C0       and  $C0
1D98: 0F          rrca
1D99: 0F          rrca
1D9A: 0F          rrca
1D9B: 5F          ld   e,a
1D9C: 0F          rrca
1D9D: 83          add  a,e
1D9E: 5F          ld   e,a
1D9F: 19          add  hl,de
1DA0: 22 5D C2    ld   ($C25D),hl
1DA3: C3 42 1B    jp   $1B42
1DA6: 3E FF       ld   a,$FF
1DA8: 06 08       ld   b,$08
1DAA: 11 F0 FF    ld   de,$FFF0
1DAD: 21 AC C6    ld   hl,$C6AC
1DB0: CD 06 1E    call $1E06
1DB3: 3E F4       ld   a,$F4
1DB5: 32 5C C2    ld   ($C25C),a
1DB8: 3E F2       ld   a,$F2
1DBA: 06 08       ld   b,$08
1DBC: 21 2C C7    ld   hl,$C72C
1DBF: CD 06 1E    call $1E06
1DC2: 06 03       ld   b,$03
1DC4: 21 9C C2    ld   hl,$C29C
1DC7: CD 06 1E    call $1E06
1DCA: 06 0A       ld   b,$0A
1DCC: 21 3C C3    ld   hl,$C33C
1DCF: CD 06 1E    call $1E06
1DD2: D6 03       sub  $03
1DD4: 32 4C C3    ld   ($C34C),a
1DD7: D6 08       sub  $08
1DD9: 01 05 0E    ld   bc,$0E05
1DDC: 1E E0       ld   e,$E0
1DDE: 21 1C C6    ld   hl,$C61C
1DE1: CD 00 1E    call $1E00
1DE4: D6 20       sub  $20
1DE6: 01 04 12    ld   bc,$1204
1DE9: 1E F0       ld   e,$F0
1DEB: 21 6C C4    ld   hl,$C46C
1DEE: CD 00 1E    call $1E00
1DF1: 3E 46       ld   a,$46
1DF3: 21 30 C7    ld   hl,$C730
1DF6: 11 06 00    ld   de,$0006
1DF9: 06 14       ld   b,$14
1DFB: 77          ld   (hl),a
1DFC: 19          add  hl,de
1DFD: 10 FC       djnz $1DFB
1DFF: C9          ret
1E00: 91          sub  c
1E01: 77          ld   (hl),a
1E02: 19          add  hl,de
1E03: 10 FB       djnz $1E00
1E05: C9          ret
1E06: 77          ld   (hl),a
1E07: 3D          dec  a
1E08: 19          add  hl,de
1E09: 10 FB       djnz $1E06
1E0B: C9          ret
1E0C: 3A 60 C2    ld   a,($C260)
1E0F: 2F          cpl
1E10: E6 F0       and  $F0
1E12: 0F          rrca
1E13: 0F          rrca
1E14: 0F          rrca
1E15: 0F          rrca
1E16: 1F          rra
1E17: CB 19       rr   c
1E19: 47          ld   b,a
1E1A: C9          ret
1E1B: 3E 34       ld   a,$34
1E1D: CD 5E 06    call $065E
1E20: 21 21 C2    ld   hl,$C221
1E23: 7E          ld   a,(hl)
1E24: E5          push hl
1E25: C6 36       add  a,$36
1E27: CD 5E 06    call $065E
1E2A: 0E 00       ld   c,$00
1E2C: 3E 39       ld   a,$39
1E2E: DD 46 1F    ld   b,(ix+$1f)
1E31: CB 78       bit  7,b
1E33: 28 02       jr   z,$1E37
1E35: 3C          inc  a
1E36: 0C          inc  c
1E37: CB 70       bit  6,b
1E39: 28 02       jr   z,$1E3D
1E3B: 3C          inc  a
1E3C: 0C          inc  c
1E3D: C5          push bc
1E3E: CD 5E 06    call $065E
1E41: C1          pop  bc
1E42: E1          pop  hl
1E43: 7E          ld   a,(hl)
1E44: 81          add  a,c
1E45: F5          push af
1E46: 07          rlca
1E47: 07          rlca
1E48: 4F          ld   c,a
1E49: 07          rlca
1E4A: 07          rlca
1E4B: 81          add  a,c
1E4C: 23          inc  hl
1E4D: 77          ld   (hl),a
1E4E: F1          pop  af
1E4F: B7          or   a
1E50: 28 0C       jr   z,$1E5E
1E52: C6 3B       add  a,$3B
1E54: F5          push af
1E55: 3E 35       ld   a,$35
1E57: CD 5E 06    call $065E
1E5A: F1          pop  af
1E5B: C3 5E 06    jp   $065E
1E5E: 3E 40       ld   a,$40
1E60: C3 5E 06    jp   $065E
1E63: C3 AA 1F    jp   $1FAA
1E66: C3 14 20    jp   $2014
1E69: C3 5B 20    jp   $205B
1E6C: C3 98 20    jp   $2098
1E6F: 00          nop
1E70: 00          nop
1E71: 21 00 00    ld   hl,$0000
1E74: 3C          inc  a
1E75: 80          add  a,b
1E76: 00          nop
1E77: 15          dec  d
1E78: 35          dec  (hl)
1E79: 00          nop
1E7A: 06 05       ld   b,$05
1E7C: 03          inc  bc
1E7D: 03          inc  bc
1E7E: F4 8F 1E    call p,$1E8F
1E81: 00          nop
1E82: 00          nop
1E83: 00          nop
1E84: 00          nop
1E85: 20 00       jr   nz,$1E87
1E87: 00          nop
1E88: 00          nop
1E89: 00          nop
1E8A: 00          nop
1E8B: 00          nop
1E8C: 00          nop
1E8D: 00          nop
1E8E: 00          nop
1E8F: 00          nop
1E90: 01 02 03    ld   bc,$0302
1E93: 04          inc  b
1E94: 05          dec  b
1E95: 06 07       ld   b,$07
1E97: 08          ex   af,af'
1E98: 09          add  hl,bc
1E99: 0A          ld   a,(bc)
1E9A: 0B          dec  bc
1E9B: 00          nop
1E9C: 2B          dec  hl
1E9D: 02          ld   (bc),a
1E9E: 03          inc  bc
1E9F: 04          inc  b
1EA0: 2C          inc  l
1EA1: 06 07       ld   b,$07
1EA3: 08          ex   af,af'
1EA4: 2D          dec  l
1EA5: 0A          ld   a,(bc)
1EA6: 0B          dec  bc
1EA7: 28 01       jr   z,$1EAA
1EA9: 02          ld   (bc),a
1EAA: 03          inc  bc
1EAB: 29          add  hl,hl
1EAC: 05          dec  b
1EAD: 06 07       ld   b,$07
1EAF: 2A 09 0A    ld   hl,($0A09)
1EB2: 0B          dec  bc
1EB3: 28 2B       jr   z,$1EE0
1EB5: 02          ld   (bc),a
1EB6: 03          inc  bc
1EB7: 29          add  hl,hl
1EB8: 2C          inc  l
1EB9: 06 07       ld   b,$07
1EBB: 2A 2D 0A    ld   hl,($0A2D)
1EBE: 0B          dec  bc
1EBF: 0C          inc  c
1EC0: 0D          dec  c
1EC1: 0E 0F       ld   c,$0F
1EC3: 10 11       djnz $1ED6
1EC5: 12          ld   (de),a
1EC6: 13          inc  de
1EC7: 10 11       djnz $1EDA
1EC9: 12          ld   (de),a
1ECA: 13          inc  de
1ECB: 14          inc  d
1ECC: 15          dec  d
1ECD: 16 17       ld   d,$17
1ECF: 18 19       jr   $1EEA
1ED1: 1A          ld   a,(de)
1ED2: 1B          dec  de
1ED3: 18 19       jr   $1EEE
1ED5: 1A          ld   a,(de)
1ED6: 1B          dec  de
1ED7: 1C          inc  e
1ED8: 1D          dec  e
1ED9: 1E 1F       ld   e,$1F
1EDB: 20 21       jr   nz,$1EFE
1EDD: 22 23 20    ld   ($2023),hl
1EE0: 21 22 23    ld   hl,$2322
1EE3: 1C          inc  e
1EE4: 1D          dec  e
1EE5: 1E 1F       ld   e,$1F
1EE7: 24          inc  h
1EE8: 25          dec  h
1EE9: 26 27       ld   h,$27
1EEB: 00          nop
1EEC: 00          nop
1EED: 08          ex   af,af'
1EEE: 04          inc  b
1EEF: 10 00       djnz $1EF1
1EF1: 0C          inc  c
1EF2: 04          inc  b
1EF3: 18 1C       jr   $1F11
1EF5: 08          ex   af,af'
1EF6: 04          inc  b
1EF7: 14          inc  d
1EF8: 1C          inc  e
1EF9: 0C          inc  c
1EFA: 04          inc  b
1EFB: 11 00 3C    ld   de,$3C00
1EFE: 21 4D C2    ld   hl,$C24D
1F01: CB 46       bit  0,(hl)
1F03: 20 30       jr   nz,$1F35
1F05: 34          inc  (hl)
1F06: 21 00 1C    ld   hl,$1C00
1F09: 01 D5 03    ld   bc,$03D5
1F0C: 3E 01       ld   a,$01
1F0E: C5          push bc
1F0F: E5          push hl
1F10: 06 0A       ld   b,$0A
1F12: F5          push af
1F13: C5          push bc
1F14: D5          push de
1F15: E5          push hl
1F16: 06 44       ld   b,$44
1F18: CF          rst  $08
1F19: E1          pop  hl
1F1A: 11 00 08    ld   de,$0800
1F1D: 19          add  hl,de
1F1E: D1          pop  de
1F1F: C1          pop  bc
1F20: 0C          inc  c
1F21: F1          pop  af
1F22: 3C          inc  a
1F23: 10 ED       djnz $1F12
1F25: 21 00 F8    ld   hl,$F800
1F28: 19          add  hl,de
1F29: EB          ex   de,hl
1F2A: E1          pop  hl
1F2B: C1          pop  bc
1F2C: 08          ex   af,af'
1F2D: 3E 0A       ld   a,$0A
1F2F: 81          add  a,c
1F30: 4F          ld   c,a
1F31: 08          ex   af,af'
1F32: 10 DA       djnz $1F0E
1F34: C9          ret
1F35: DD 21 90 1F ld   ix,$1F90
1F39: 3A D6 C0    ld   a,($C0D6)
1F3C: 0F          rrca
1F3D: 30 04       jr   nc,$1F43
1F3F: DD 21 9D 1F ld   ix,$1F9D
1F43: 21 00 14    ld   hl,$1400
1F46: AF          xor  a
1F47: 06 0B       ld   b,$0B
1F49: CD 71 1F    call $1F71
1F4C: 11 00 34    ld   de,$3400
1F4F: 21 00 5C    ld   hl,$5C00
1F52: 3E 13       ld   a,$13
1F54: 06 02       ld   b,$02
1F56: CD 71 1F    call $1F71
1F59: 3A D6 C0    ld   a,($C0D6)
1F5C: 0F          rrca
1F5D: D0          ret  nc
1F5E: AF          xor  a
1F5F: CD 7A 04    call $047A
1F62: 3E 01       ld   a,$01
1F64: CD 7A 04    call $047A
1F67: 3E 07       ld   a,$07
1F69: CD 7A 04    call $047A
1F6C: 3E 08       ld   a,$08
1F6E: C3 7A 04    jp   $047A
1F71: F5          push af
1F72: C5          push bc
1F73: D5          push de
1F74: E5          push hl
1F75: 06 44       ld   b,$44
1F77: DD 4E 00    ld   c,(ix+$00)
1F7A: CF          rst  $08
1F7B: E1          pop  hl
1F7C: 11 00 08    ld   de,$0800
1F7F: 19          add  hl,de
1F80: D1          pop  de
1F81: C1          pop  bc
1F82: F1          pop  af
1F83: 3C          inc  a
1F84: DD 23       inc  ix
1F86: 10 E9       djnz $1F71
1F88: C9          ret
1F89: AF          xor  a
1F8A: 32 4D C2    ld   ($C24D),a
1F8D: C3 91 04    jp   $0491

1FAA: 3A F3 C5    ld   a,($C5F3)
1FAD: 0F          rrca
1FAE: 38 37       jr   c,$1FE7
1FB0: 3E 13       ld   a,$13
1FB2: CD 15 08    call $0815
1FB5: 21 4B 21    ld   hl,$214B
1FB8: 11 ED C5    ld   de,$C5ED
1FBB: 01 0A 00    ld   bc,$000A
1FBE: ED B0       ldir
1FC0: 11 0D C6    ld   de,$C60D
1FC3: 0E 0A       ld   c,$0A
1FC5: ED B0       ldir
1FC7: 11 2D C6    ld   de,$C62D
1FCA: 06 04       ld   b,$04
1FCC: C5          push bc
1FCD: 01 0A 00    ld   bc,$000A
1FD0: ED B0       ldir
1FD2: 3E 06       ld   a,$06
1FD4: 83          add  a,e
1FD5: 5F          ld   e,a
1FD6: 7A          ld   a,d
1FD7: CE 00       adc  a,$00
1FD9: 57          ld   d,a
1FDA: C1          pop  bc
1FDB: 10 EF       djnz $1FCC
1FDD: 11 4D C2    ld   de,$C24D
1FE0: 21 6F 1E    ld   hl,$1E6F
1FE3: 0E 08       ld   c,$08
1FE5: ED B0       ldir
1FE7: DD 21 ED C5 ld   ix,$C5ED
1FEB: 3A EF C5    ld   a,($C5EF)
1FEE: 07          rlca
1FEF: 38 10       jr   c,$2001
1FF1: FE 50       cp   $50
1FF3: 38 0C       jr   c,$2001
1FF5: DD 34 0B    inc  (ix+$0b)
1FF8: DD 7E 0B    ld   a,(ix+$0b)
1FFB: FE 20       cp   $20
1FFD: D2 2F 21    jp   nc,$212F
2000: C9          ret
2001: CD B6 33    call $33B6
2004: DD 21 0D C6 ld   ix,$C60D
2008: CD B6 33    call $33B6
200B: CD F3 20    call $20F3
200E: CD 19 21    call $2119
2011: C3 06 21    jp   $2106
2014: DD 21 2D C6 ld   ix,$C62D
2018: 21 F3 C5    ld   hl,$C5F3
201B: CB 4E       bit  1,(hl)
201D: 20 2C       jr   nz,$204B
201F: CB CE       set  1,(hl)
2021: 3E 18       ld   a,$18
2023: 32 34 C6    ld   ($C634),a
2026: 32 44 C6    ld   ($C644),a
2029: 3E 08       ld   a,$08
202B: 32 54 C6    ld   ($C654),a
202E: 32 64 C6    ld   ($C664),a
2031: 21 55 34    ld   hl,$3455
2034: 22 35 C6    ld   ($C635),hl
2037: 22 45 C6    ld   ($C645),hl
203A: 22 55 C6    ld   ($C655),hl
203D: 22 65 C6    ld   ($C665),hl
2040: FD 21 E7 1E ld   iy,$1EE7
2044: DD 21 4D C2 ld   ix,$C24D
2048: CD 9E 1B    call $1B9E
204B: 21 F9 C5    ld   hl,$C5F9
204E: 7E          ld   a,(hl)
204F: FE 28       cp   $28
2051: D2 2F 21    jp   nc,$212F
2054: 34          inc  (hl)
2055: CD F3 20    call $20F3
2058: C3 06 21    jp   $2106
205B: 21 F7 C5    ld   hl,$C5F7
205E: 34          inc  (hl)
205F: 7E          ld   a,(hl)
2060: FE 60       cp   $60
2062: 38 20       jr   c,$2084
2064: CD 2F 21    call $212F
2067: 21 2D C6    ld   hl,$C62D
206A: 11 AD C6    ld   de,$C6AD
206D: 06 04       ld   b,$04
206F: C5          push bc
2070: 01 0F 00    ld   bc,$000F
2073: ED B0       ldir
2075: 23          inc  hl
2076: 13          inc  de
2077: C1          pop  bc
2078: 10 F5       djnz $206F
207A: CD 34 21    call $2134
207D: DD 21 AD C6 ld   ix,$C6AD
2081: C3 0A 21    jp   $210A
2084: E6 1F       and  $1F
2086: C0          ret  nz
2087: 21 2D C6    ld   hl,$C62D
208A: 11 10 00    ld   de,$0010
208D: 06 04       ld   b,$04
208F: 3E 04       ld   a,$04
2091: 86          add  a,(hl)
2092: 77          ld   (hl),a
2093: 19          add  hl,de
2094: 10 F9       djnz $208F
2096: 18 6E       jr   $2106
2098: DD 21 ED C5 ld   ix,$C5ED
209C: CD 9B 33    call $339B
209F: DD 21 0D C6 ld   ix,$C60D
20A3: CD 9B 33    call $339B
20A6: DD 21 AD C6 ld   ix,$C6AD
20AA: 06 04       ld   b,$04
20AC: 11 10 00    ld   de,$0010
20AF: D9          exx
20B0: CD 9B 33    call $339B
20B3: D9          exx
20B4: DD 19       add  ix,de
20B6: 10 F7       djnz $20AF
20B8: 3A EF C5    ld   a,($C5EF)
20BB: 07          rlca
20BC: 30 2C       jr   nc,$20EA
20BE: FE F0       cp   $F0
20C0: 30 28       jr   nc,$20EA
20C2: DD 21 ED C5 ld   ix,$C5ED
20C6: DD 36 06 00 ld   (ix+$06),$00
20CA: CD 31 04    call $0431
20CD: DD 21 0D C6 ld   ix,$C60D
20D1: DD 36 06 00 ld   (ix+$06),$00
20D5: CD 31 04    call $0431
20D8: DD 21 AD C6 ld   ix,$C6AD
20DC: CD 38 21    call $2138
20DF: 3E FF       ld   a,$FF
20E1: 32 20 C2    ld   ($C220),a
20E4: 3E 17       ld   a,$17
20E6: CD A6 04    call $04A6
20E9: C9          ret
20EA: CD 19 21    call $2119
20ED: DD 21 AD C6 ld   ix,$C6AD
20F1: 18 17       jr   $210A
20F3: DD 21 2D C6 ld   ix,$C62D
20F7: 06 04       ld   b,$04
20F9: 11 10 00    ld   de,$0010
20FC: D9          exx
20FD: CD B6 33    call $33B6
2100: D9          exx
2101: DD 19       add  ix,de
2103: 10 F7       djnz $20FC
2105: C9          ret
2106: DD 21 2D C6 ld   ix,$C62D
210A: 06 04       ld   b,$04
210C: 11 10 00    ld   de,$0010
210F: D9          exx
2110: CD 02 04    call $0402
2113: D9          exx
2114: DD 19       add  ix,de
2116: 10 F7       djnz $210F
2118: C9          ret
2119: DD 21 ED C5 ld   ix,$C5ED
211D: FD 21 87 21 ld   iy,$2187
2121: CD 9E 1B    call $1B9E
2124: DD 21 0D C6 ld   ix,$C60D
2128: FD 21 8B 21 ld   iy,$218B
212C: C3 9E 1B    jp   $1B9E
212F: 21 20 C2    ld   hl,$C220
2132: 34          inc  (hl)
2133: C9          ret
2134: DD 21 2D C6 ld   ix,$C62D
2138: 11 10 00    ld   de,$0010
213B: 01 00 04    ld   bc,$0400
213E: D9          exx
213F: CD 62 04    call $0462
2142: D9          exx
2143: DD 71 06    ld   (ix+$06),c
2146: DD 19       add  ix,de
2148: 10 F4       djnz $213E
214A: C9          ret
214B: 00          nop
214C: 00          nop
214D: F8          ret  m
214E: 44          ld   b,h
214F: 00          nop
2150: 40          ld   b,b
2151: 01 00 B5    ld   bc,$B500
2154: 34          inc  (hl)
2155: 00          nop
2156: 00          nop
2157: F0          ret  p
2158: 44          ld   b,h
2159: 00          nop
215A: 40          ld   b,b
215B: 01 00 B5    ld   bc,$B500
215E: 34          inc  (hl)
215F: 46          ld   b,(hl)
2160: 00          nop
2161: F4 42 80    call p,$8042
2164: 38 01       jr   c,$2167
2166: 00          nop
2167: B5          or   l
2168: 34          inc  (hl)
2169: 47          ld   b,a
216A: 00          nop
216B: EC 42 80    call pe,$8042
216E: 38 01       jr   c,$2171
2170: 00          nop
2171: B5          or   l
2172: 34          inc  (hl)
2173: 48          ld   c,b
2174: 00          nop
2175: F4 42 80    call p,$8042
2178: 40          ld   b,b
2179: 01 00 B5    ld   bc,$B500
217C: 34          inc  (hl)
217D: 49          ld   c,c
217E: 00          nop
217F: EC 42 80    call pe,$8042
2182: 40          ld   b,b
2183: 01 00 B5    ld   bc,$B500
2186: 34          inc  (hl)
2187: 40          ld   b,b
2188: 43          ld   b,e
2189: 41          ld   b,c
218A: 44          ld   b,h
218B: 41          ld   b,c
218C: 44          ld   b,h
218D: 42          ld   b,d
218E: 45          ld   b,l
218F: 3A 6C C2    ld   a,($C26C)
2192: 0F          rrca
2193: D2 2F 22    jp   nc,$222F
2196: 21 B3 C2    ld   hl,$C2B3
2199: 06 03       ld   b,$03
219B: 11 10 00    ld   de,$0010
219E: CB 46       bit  0,(hl)
21A0: 20 06       jr   nz,$21A8
21A2: 19          add  hl,de
21A3: 10 F9       djnz $219E
21A5: C3 2A 22    jp   $222A
21A8: 34          inc  (hl)
21A9: E5          push hl
21AA: DD E1       pop  ix
21AC: 21 69 C2    ld   hl,$C269
21AF: 3A 6C C2    ld   a,($C26C)
21B2: 07          rlca
21B3: 30 16       jr   nc,$21CB
21B5: DD 34 30    inc  (ix+$30)
21B8: DD 72 34    ld   (ix+$34),d
21BB: 01 30 00    ld   bc,$0030
21BE: CB 7E       bit  7,(hl)
21C0: 28 03       jr   z,$21C5
21C2: 01 32 18    ld   bc,$1832
21C5: DD 71 2A    ld   (ix+$2a),c
21C8: DD 70 31    ld   (ix+$31),b
21CB: 07          rlca
21CC: 30 16       jr   nc,$21E4
21CE: DD 34 60    inc  (ix+$60)
21D1: DD 72 64    ld   (ix+$64),d
21D4: 01 30 00    ld   bc,$0030
21D7: CB 76       bit  6,(hl)
21D9: 28 03       jr   z,$21DE
21DB: 01 33 08    ld   bc,$0833
21DE: DD 71 5A    ld   (ix+$5a),c
21E1: DD 70 61    ld   (ix+$61),b
21E4: DD 36 FA 30 ld   (ix-$06),$30
21E8: DD 72 04    ld   (ix+$04),d
21EB: 21 2F C2    ld   hl,$C22F
21EE: 34          inc  (hl)
21EF: 3E 0B       ld   a,$0B
21F1: CD 15 08    call $0815
21F4: 3A 6C C2    ld   a,($C26C)
21F7: E6 C0       and  $C0
21F9: 28 2F       jr   z,$222A
21FB: 11 FA FF    ld   de,$FFFA
21FE: DD 19       add  ix,de
2200: DD E5       push ix
2202: E1          pop  hl
2203: 23          inc  hl
2204: 7E          ld   a,(hl)
2205: DD 77 31    ld   (ix+$31),a
2208: DD 77 61    ld   (ix+$61),a
220B: 23          inc  hl
220C: 7E          ld   a,(hl)
220D: D6 03       sub  $03
220F: DD 77 32    ld   (ix+$32),a
2212: DD 77 62    ld   (ix+$62),a
2215: 23          inc  hl
2216: 23          inc  hl
2217: 7E          ld   a,(hl)
2218: DD 77 34    ld   (ix+$34),a
221B: DD 77 64    ld   (ix+$64),a
221E: 23          inc  hl
221F: 7E          ld   a,(hl)
2220: D6 0C       sub  $0C
2222: DD 77 35    ld   (ix+$35),a
2225: C6 18       add  a,$18
2227: DD 77 65    ld   (ix+$65),a
222A: 21 6C C2    ld   hl,$C26C
222D: CB 86       res  0,(hl)
222F: 06 09       ld   b,$09
2231: DD 21 AD C2 ld   ix,$C2AD
2235: C5          push bc
2236: DD 7E 06    ld   a,(ix+$06)
2239: CB 5F       bit  3,a
223B: 20 05       jr   nz,$2242
223D: E6 C2       and  $C2
223F: C4 A9 22    call nz,$22A9
2242: 11 10 00    ld   de,$0010
2245: DD 19       add  ix,de
2247: C1          pop  bc
2248: 10 EB       djnz $2235
224A: 3A 53 C2    ld   a,($C253)
224D: CB 7F       bit  7,a
224F: C8          ret  z
2250: 4F          ld   c,a
2251: 21 B3 C2    ld   hl,$C2B3
2254: 11 10 00    ld   de,$0010
2257: 06 03       ld   b,$03
2259: CB 46       bit  0,(hl)
225B: C0          ret  nz
225C: 19          add  hl,de
225D: 10 FA       djnz $2259
225F: 06 03       ld   b,$03
2261: 1E 10       ld   e,$10
2263: ED 52       sbc  hl,de
2265: E5          push hl
2266: 7E          ld   a,(hl)
2267: B7          or   a
2268: 20 08       jr   nz,$2272
226A: 1E 30       ld   e,$30
226C: 19          add  hl,de
226D: B6          or   (hl)
226E: 20 02       jr   nz,$2272
2270: 19          add  hl,de
2271: B6          or   (hl)
2272: E1          pop  hl
2273: 28 03       jr   z,$2278
2275: 10 EA       djnz $2261
2277: C9          ret
2278: 34          inc  (hl)
2279: E5          push hl
227A: DD E1       pop  ix
227C: DD 36 FA 2E ld   (ix-$06),$2E
2280: 3A 6C C2    ld   a,($C26C)
2283: 07          rlca
2284: 30 03       jr   nc,$2289
2286: DD 34 30    inc  (ix+$30)
2289: 07          rlca
228A: D0          ret  nc
228B: DD 34 60    inc  (ix+$60)
228E: C9          ret
228F: 21 4E C2    ld   hl,$C24E
2292: 7E          ld   a,(hl)
2293: DD 77 01    ld   (ix+$01),a
2296: 23          inc  hl
2297: 7E          ld   a,(hl)
2298: C6 04       add  a,$04
229A: DD 77 02    ld   (ix+$02),a
229D: 23          inc  hl
229E: 23          inc  hl
229F: 7E          ld   a,(hl)
22A0: DD 77 04    ld   (ix+$04),a
22A3: 23          inc  hl
22A4: 7E          ld   a,(hl)
22A5: DD 77 05    ld   (ix+$05),a
22A8: C9          ret
22A9: CB 77       bit  6,a
22AB: 20 37       jr   nz,$22E4
22AD: E6 02       and  $02
22AF: 28 12       jr   z,$22C3
22B1: DD 7E 0A    ld   a,(ix+$0a)
22B4: DD 34 0A    inc  (ix+$0a)
22B7: FE 08       cp   $08
22B9: 38 08       jr   c,$22C3
22BB: DD CB 06 FE set  7,(ix+$06)
22BF: DD CB 06 8E res  1,(ix+$06)
22C3: DD 7E 02    ld   a,(ix+$02)
22C6: FE 8D       cp   $8D
22C8: 30 1A       jr   nc,$22E4
22CA: DD 7E 05    ld   a,(ix+$05)
22CD: FE 78       cp   $78
22CF: 30 13       jr   nc,$22E4
22D1: 11 0A 00    ld   de,$000A
22D4: DD 7E 0A    ld   a,(ix+$0a)
22D7: FE 20       cp   $20
22D9: 28 33       jr   z,$230E
22DB: DD 34 0A    inc  (ix+$0a)
22DE: CD B6 33    call $33B6
22E1: C3 02 04    jp   $0402
22E4: DD 36 06 00 ld   (ix+$06),$00
22E8: C3 62 04    jp   $0462
22EB: 11 0A 00    ld   de,$000A
22EE: DD CB 36 7E bit  7,(ix+$36)
22F2: 28 0A       jr   z,$22FE
22F4: DD 73 36    ld   (ix+$36),e
22F7: DD 36 33 0E ld   (ix+$33),$0E
22FB: DD 72 3A    ld   (ix+$3a),d
22FE: DD CB 66 7E bit  7,(ix+$66)
2302: 28 0A       jr   z,$230E
2304: DD 73 66    ld   (ix+$66),e
2307: DD 36 63 0E ld   (ix+$63),$0E
230B: DD 72 6A    ld   (ix+$6a),d
230E: DD 73 06    ld   (ix+$06),e
2311: DD 36 03 0E ld   (ix+$03),$0E
2315: DD 72 0A    ld   (ix+$0a),d
2318: C9          ret
2319: DD 21 AD C2 ld   ix,$C2AD
231D: 06 03       ld   b,$03
231F: C5          push bc
2320: DD 7E 06    ld   a,(ix+$06)
2323: 0F          rrca
2324: 30 07       jr   nc,$232D
2326: C1          pop  bc
2327: CD 8F 22    call $228F
232A: C3 02 04    jp   $0402
232D: 11 10 00    ld   de,$0010
2330: DD 19       add  ix,de
2332: C1          pop  bc
2333: 10 EA       djnz $231F
2335: C9          ret
2336: DD 21 AD C2 ld   ix,$C2AD
233A: 11 10 00    ld   de,$0010
233D: 06 03       ld   b,$03
233F: DD CB 06 46 bit  0,(ix+$06)
2343: 28 0C       jr   z,$2351
2345: DD 72 06    ld   (ix+$06),d
2348: DD 72 36    ld   (ix+$36),d
234B: DD 72 66    ld   (ix+$66),d
234E: C3 62 04    jp   $0462
2351: DD 19       add  ix,de
2353: 10 EA       djnz $233F
2355: C9          ret
2356: CB D6       set  2,(hl)
2358: 21 21 C2    ld   hl,$C221
235B: 35          dec  (hl)
235C: CD 8F 22    call $228F
235F: 3A 47 C3    ld   a,($C347)
2362: B7          or   a
2363: 28 0B       jr   z,$2370
2365: 3E 04       ld   a,$04
2367: CD 15 08    call $0815
236A: 21 6A C2    ld   hl,$C26A
236D: AF          xor  a
236E: 18 16       jr   $2386
2370: 3E 03       ld   a,$03
2372: CD 15 08    call $0815
2375: 21 6A C2    ld   hl,$C26A
2378: 3E 06       ld   a,$06
237A: CB 66       bit  4,(hl)
237C: 20 04       jr   nz,$2382
237E: CB E6       set  4,(hl)
2380: 18 04       jr   $2386
2382: CB EE       set  5,(hl)
2384: ED 44       neg
2386: DD 86 05    add  a,(ix+$05)
2389: DD 77 05    ld   (ix+$05),a
238C: 3A 53 C2    ld   a,($C253)
238F: E6 CF       and  $CF
2391: B6          or   (hl)
2392: 32 53 C2    ld   ($C253),a
2395: DD 36 03 40 ld   (ix+$03),$40
2399: 21 43 C3    ld   hl,$C343
239C: 36 02       ld   (hl),$02
239E: 23          inc  hl
239F: AF          xor  a
23A0: 77          ld   (hl),a
23A1: 23          inc  hl
23A2: 11 D5 34    ld   de,$34D5
23A5: 73          ld   (hl),e
23A6: 23          inc  hl
23A7: 72          ld   (hl),d
23A8: 11 20 36    ld   de,$3620
23AB: 23          inc  hl
23AC: 23          inc  hl
23AD: 73          ld   (hl),e
23AE: 23          inc  hl
23AF: 73          ld   (hl),e
23B0: 23          inc  hl
23B1: 72          ld   (hl),d
23B2: 23          inc  hl
23B3: 72          ld   (hl),d
23B4: 21 58 C3    ld   hl,$C358
23B7: 36 08       ld   (hl),$08
23B9: 23          inc  hl
23BA: 36 58       ld   (hl),$58
23BC: 23          inc  hl
23BD: 73          ld   (hl),e
23BE: 23          inc  hl
23BF: 73          ld   (hl),e
23C0: C9          ret
23C1: 3A 47 C3    ld   a,($C347)
23C4: FE 0C       cp   $0C
23C6: 28 18       jr   z,$23E0
23C8: 4F          ld   c,a
23C9: 3C          inc  a
23CA: 32 47 C3    ld   ($C347),a
23CD: 79          ld   a,c
23CE: E6 03       and  $03
23D0: 20 08       jr   nz,$23DA
23D2: 79          ld   a,c
23D3: 0F          rrca
23D4: 0F          rrca
23D5: C6 84       add  a,$84
23D7: 32 3D C3    ld   ($C33D),a
23DA: CD B6 33    call $33B6
23DD: C3 02 04    jp   $0402
23E0: AF          xor  a
23E1: 32 47 C3    ld   ($C347),a
23E4: CB DE       set  3,(hl)
23E6: 4F          ld   c,a
23E7: DD 5E 02    ld   e,(ix+$02)
23EA: DD 56 05    ld   d,(ix+$05)
23ED: 21 F7 24    ld   hl,$24F7
23F0: DD 36 00 80 ld   (ix+$00),$80
23F4: DD 71 01    ld   (ix+$01),c
23F7: DD 73 02    ld   (ix+$02),e
23FA: DD 36 03 40 ld   (ix+$03),$40
23FE: DD 71 04    ld   (ix+$04),c
2401: DD 72 05    ld   (ix+$05),d
2404: DD 36 06 02 ld   (ix+$06),$02
2408: 7E          ld   a,(hl)
2409: DD 77 07    ld   (ix+$07),a
240C: E6 0F       and  $0F
240E: 23          inc  hl
240F: 78          ld   a,b
2410: D9          exx
2411: 21 B5 36    ld   hl,$36B5
2414: 28 0A       jr   z,$2420
2416: 21 D5 36    ld   hl,$36D5
2419: FE 07       cp   $07
241B: 30 03       jr   nc,$2420
241D: 21 D5 35    ld   hl,$35D5
2420: DD 75 08    ld   (ix+$08),l
2423: DD 74 09    ld   (ix+$09),h
2426: 11 10 00    ld   de,$0010
2429: DD 19       add  ix,de
242B: D9          exx
242C: 10 C2       djnz $23F0
242E: C9          ret
242F: 32 47 C3    ld   ($C347),a
2432: CB E6       set  4,(hl)
2434: 57          ld   d,a
2435: 3E 82       ld   a,$82
2437: 32 43 C3    ld   ($C343),a
243A: 32 53 C3    ld   ($C353),a
243D: 78          ld   a,b
243E: E6 03       and  $03
2440: 5F          ld   e,a
2441: 21 0A 25    ld   hl,$250A
2444: 19          add  hl,de
2445: 7E          ld   a,(hl)
2446: DD 77 00    ld   (ix+$00),a
2449: DD 36 03 0E ld   (ix+$03),$0E
244D: 1E 10       ld   e,$10
244F: DD 19       add  ix,de
2451: 10 EA       djnz $243D
2453: C9          ret
2454: 06 13       ld   b,$13
2456: DD 21 3D C3 ld   ix,$C33D
245A: 21 6C C2    ld   hl,$C26C
245D: CB 4E       bit  1,(hl)
245F: C8          ret  z
2460: CB 56       bit  2,(hl)
2462: CA 56 23    jp   z,$2356
2465: CB 5E       bit  3,(hl)
2467: CA C1 23    jp   z,$23C1
246A: CB 66       bit  4,(hl)
246C: 20 41       jr   nz,$24AF
246E: 3A 47 C3    ld   a,($C347)
2471: D6 14       sub  $14
2473: 28 BA       jr   z,$242F
2475: DD 34 0A    inc  (ix+$0a)
2478: C5          push bc
2479: DD 7E 06    ld   a,(ix+$06)
247C: B7          or   a
247D: 28 27       jr   z,$24A6
247F: 3A D6 C0    ld   a,($C0D6)
2482: 80          add  a,b
2483: 0F          rrca
2484: 30 05       jr   nc,$248B
2486: E6 83       and  $83
2488: DD 77 00    ld   (ix+$00),a
248B: 78          ld   a,b
248C: FE 13       cp   $13
248E: 28 13       jr   z,$24A3
2490: CD B6 33    call $33B6
2493: DD 7E 05    ld   a,(ix+$05)
2496: FE 78       cp   $78
2498: 38 09       jr   c,$24A3
249A: DD 36 06 00 ld   (ix+$06),$00
249E: CD 62 04    call $0462
24A1: 18 03       jr   $24A6
24A3: CD 02 04    call $0402
24A6: 11 10 00    ld   de,$0010
24A9: DD 19       add  ix,de
24AB: C1          pop  bc
24AC: 10 CA       djnz $2478
24AE: C9          ret
24AF: 3A 47 C3    ld   a,($C347)
24B2: D6 10       sub  $10
24B4: 28 27       jr   z,$24DD
24B6: DD 34 0A    inc  (ix+$0a)
24B9: C5          push bc
24BA: DD 7E 06    ld   a,(ix+$06)
24BD: B7          or   a
24BE: 28 14       jr   z,$24D4
24C0: 3A 47 C3    ld   a,($C347)
24C3: 80          add  a,b
24C4: E6 0F       and  $0F
24C6: 5F          ld   e,a
24C7: 16 00       ld   d,$00
24C9: 21 0A 25    ld   hl,$250A
24CC: 19          add  hl,de
24CD: 7E          ld   a,(hl)
24CE: DD 77 00    ld   (ix+$00),a
24D1: CD A0 03    call $03A0
24D4: 11 10 00    ld   de,$0010
24D7: DD 19       add  ix,de
24D9: C1          pop  bc
24DA: 10 DD       djnz $24B9
24DC: C9          ret
24DD: DD 77 06    ld   (ix+$06),a
24E0: DD 77 0A    ld   (ix+$0a),a
24E3: C5          push bc
24E4: CD 31 04    call $0431
24E7: C1          pop  bc
24E8: 11 10 00    ld   de,$0010
24EB: DD 19       add  ix,de
24ED: 10 EE       djnz $24DD
24EF: 21 6C C2    ld   hl,$C26C
24F2: 7E          ld   a,(hl)
24F3: E6 E1       and  $E1
24F5: 77          ld   (hl),a
24F6: C9          ret
24F7: 00          nop
24F8: 00          nop
24F9: 03          inc  bc
24FA: 05          dec  b
24FB: 08          ex   af,af'
24FC: 0B          dec  bc
24FD: 0D          dec  c
24FE: 10 13       djnz $2513
2500: 15          dec  d
2501: 18 1B       jr   $251E
2503: 1D          dec  e
2504: 03          inc  bc
2505: 08          ex   af,af'
2506: 0D          dec  c
2507: 13          inc  de
2508: 18 1D       jr   $2527
250A: 88          adc  a,b
250B: 8C          adc  a,h
250C: 90          sub  b
250D: 94          sub  h
250E: 90          sub  b
250F: 8C          adc  a,h
2510: 88          adc  a,b
2511: 8C          adc  a,h
2512: 90          sub  b
2513: 94          sub  h
2514: 90          sub  b
2515: 8C          adc  a,h
2516: 88          adc  a,b
2517: 8C          adc  a,h
2518: 90          sub  b
2519: 94          sub  h
251A: DD 21 4D C2 ld   ix,$C24D
251E: DD CB 06 5E bit  3,(ix+$06)
2522: CA A2 25    jp   z,$25A2
2525: DD CB 06 56 bit  2,(ix+$06)
2529: 20 23       jr   nz,$254E
252B: 3A 6B C2    ld   a,($C26B)
252E: FE 20       cp   $20
2530: 38 09       jr   c,$253B
2532: DD CB 06 D6 set  2,(ix+$06)
2536: CD 31 04    call $0431
2539: 18 13       jr   $254E
253B: DD 34 1E    inc  (ix+$1e)
253E: 4F          ld   c,a
253F: E6 03       and  $03
2541: 20 5F       jr   nz,$25A2
2543: 21 EA 26    ld   hl,$26EA
2546: CD DE 26    call $26DE
2549: CD A0 03    call $03A0
254C: 18 54       jr   $25A2
254E: 21 B3 C2    ld   hl,$C2B3
2551: 11 10 00    ld   de,$0010
2554: 06 16       ld   b,$16
2556: CB 4E       bit  1,(hl)
2558: 20 48       jr   nz,$25A2
255A: 19          add  hl,de
255B: 10 F9       djnz $2556
255D: 1E 20       ld   e,$20
255F: 06 0E       ld   b,$0E
2561: CB 5E       bit  3,(hl)
2563: 20 3D       jr   nz,$25A2
2565: 19          add  hl,de
2566: 10 F9       djnz $2561
2568: 21 64 C2    ld   hl,$C264
256B: 34          inc  (hl)
256C: 7E          ld   a,(hl)
256D: D6 60       sub  $60
256F: D8          ret  c
2570: 77          ld   (hl),a
2571: 3E 02       ld   a,$02
2573: CD CF 04    call $04CF
2576: 21 1B C2    ld   hl,$C21B
2579: CB F6       set  6,(hl)
257B: 21 1F C2    ld   hl,$C21F
257E: CB C6       set  0,(hl)
2580: 23          inc  hl
2581: 36 FF       ld   (hl),$FF
2583: 3A 2A C2    ld   a,($C22A)
2586: B7          or   a
2587: C8          ret  z
2588: 3A 2C C2    ld   a,($C22C)
258B: FE 13       cp   $13
258D: 30 0A       jr   nc,$2599
258F: 2A 32 C1    ld   hl,($C132)
2592: CB 44       bit  0,h
2594: C0          ret  nz
2595: 7D          ld   a,l
2596: FE D0       cp   $D0
2598: D0          ret  nc
2599: 21 2C C2    ld   hl,$C22C
259C: 7E          ld   a,(hl)
259D: E6 07       and  $07
259F: C8          ret  z
25A0: 35          dec  (hl)
25A1: C9          ret
25A2: 3A 53 C2    ld   a,($C253)
25A5: E6 30       and  $30
25A7: 21 6A C2    ld   hl,$C26A
25AA: 4F          ld   c,a
25AB: 96          sub  (hl)
25AC: 28 16       jr   z,$25C4
25AE: 71          ld   (hl),c
25AF: 23          inc  hl
25B0: 23          inc  hl
25B1: CB 4E       bit  1,(hl)
25B3: 20 0B       jr   nz,$25C0
25B5: FE 30       cp   $30
25B7: 3E 0C       ld   a,$0C
25B9: 32 47 C3    ld   ($C347),a
25BC: CB CE       set  1,(hl)
25BE: 20 04       jr   nz,$25C4
25C0: 21 21 C2    ld   hl,$C221
25C3: 35          dec  (hl)
25C4: DD 21 AD C2 ld   ix,$C2AD
25C8: 11 10 00    ld   de,$0010
25CB: 06 09       ld   b,$09
25CD: D9          exx
25CE: DD CB 06 5E bit  3,(ix+$06)
25D2: 28 45       jr   z,$2619
25D4: DD 7E 0A    ld   a,(ix+$0a)
25D7: B7          or   a
25D8: 28 14       jr   z,$25EE
25DA: FE 08       cp   $08
25DC: 38 14       jr   c,$25F2
25DE: AF          xor  a
25DF: DD 77 06    ld   (ix+$06),a
25E2: DD 77 0A    ld   (ix+$0a),a
25E5: DD 36 03 00 ld   (ix+$03),$00
25E9: CD 62 04    call $0462
25EC: 18 2B       jr   $2619
25EE: DD CB 06 BE res  7,(ix+$06)
25F2: DD 34 0A    inc  (ix+$0a)
25F5: 0F          rrca
25F6: 38 1B       jr   c,$2613
25F8: 5F          ld   e,a
25F9: 16 00       ld   d,$00
25FB: 21 F6 26    ld   hl,$26F6
25FE: DD 7E 07    ld   a,(ix+$07)
2601: B7          or   a
2602: 28 0A       jr   z,$260E
2604: 21 FA 26    ld   hl,$26FA
2607: FE 18       cp   $18
2609: 28 03       jr   z,$260E
260B: 21 FE 26    ld   hl,$26FE
260E: 19          add  hl,de
260F: 7E          ld   a,(hl)
2610: DD 77 00    ld   (ix+$00),a
2613: CD 9B 33    call $339B
2616: CD 02 04    call $0402
2619: D9          exx
261A: DD 19       add  ix,de
261C: 10 AF       djnz $25CD
261E: 06 02       ld   b,$02
2620: DD 21 7D C2 ld   ix,$C27D
2624: 11 10 00    ld   de,$0010
2627: D9          exx
2628: DD CB 06 5E bit  3,(ix+$06)
262C: 28 28       jr   z,$2656
262E: DD 7E 0A    ld   a,(ix+$0a)
2631: FE 10       cp   $10
2633: 38 10       jr   c,$2645
2635: AF          xor  a
2636: DD 77 06    ld   (ix+$06),a
2639: DD 77 0A    ld   (ix+$0a),a
263C: DD 36 03 40 ld   (ix+$03),$40
2640: CD 62 04    call $0462
2643: 18 11       jr   $2656
2645: 4F          ld   c,a
2646: DD 34 0A    inc  (ix+$0a)
2649: E6 03       and  $03
264B: 20 06       jr   nz,$2653
264D: 21 F2 26    ld   hl,$26F2
2650: CD DE 26    call $26DE
2653: CD 02 04    call $0402
2656: D9          exx
2657: DD 19       add  ix,de
2659: 10 CC       djnz $2627
265B: DD 21 6D C4 ld   ix,$C46D
265F: 06 0E       ld   b,$0E
2661: 11 20 00    ld   de,$0020
2664: D9          exx
2665: DD CB 06 5E bit  3,(ix+$06)
2669: 28 6D       jr   z,$26D8
266B: DD CB 06 56 bit  2,(ix+$06)
266F: 20 40       jr   nz,$26B1
2671: DD CB 06 D6 set  2,(ix+$06)
2675: DD 36 03 0E ld   (ix+$03),$0E
2679: DD 36 09 00 ld   (ix+$09),$00
267D: DD 5E 1D    ld   e,(ix+$1d)
2680: DD 56 1E    ld   d,(ix+$1e)
2683: CD 93 03    call $0393
2686: 3E 09       ld   a,$09
2688: CD 15 08    call $0815
268B: DD 7E 1C    ld   a,(ix+$1c)
268E: 3C          inc  a
268F: 20 20       jr   nz,$26B1
2691: 21 2D C7    ld   hl,$C72D
2694: 06 14       ld   b,$14
2696: 11 06 00    ld   de,$0006
2699: 7E          ld   a,(hl)
269A: B7          or   a
269B: 28 05       jr   z,$26A2
269D: 19          add  hl,de
269E: 10 F9       djnz $2699
26A0: 18 0F       jr   $26B1
26A2: 36 94       ld   (hl),$94
26A4: 23          inc  hl
26A5: 23          inc  hl
26A6: DD 7E 02    ld   a,(ix+$02)
26A9: 77          ld   (hl),a
26AA: 23          inc  hl
26AB: 23          inc  hl
26AC: 23          inc  hl
26AD: DD 7E 05    ld   a,(ix+$05)
26B0: 77          ld   (hl),a
26B1: DD 7E 09    ld   a,(ix+$09)
26B4: FE 10       cp   $10
26B6: 38 0D       jr   c,$26C5
26B8: DD 7E 06    ld   a,(ix+$06)
26BB: E6 F1       and  $F1
26BD: DD 77 06    ld   (ix+$06),a
26C0: CD 31 04    call $0431
26C3: 18 13       jr   $26D8
26C5: DD 34 09    inc  (ix+$09)
26C8: 4F          ld   c,a
26C9: 0F          rrca
26CA: 38 06       jr   c,$26D2
26CC: 21 02 27    ld   hl,$2702
26CF: CD E1 26    call $26E1
26D2: CD 9B 33    call $339B
26D5: CD A0 03    call $03A0
26D8: D9          exx
26D9: DD 19       add  ix,de
26DB: 10 87       djnz $2664
26DD: C9          ret
26DE: 79          ld   a,c
26DF: 0F          rrca
26E0: 0F          rrca
26E1: 5F          ld   e,a
26E2: 16 00       ld   d,$00
26E4: 19          add  hl,de
26E5: 7E          ld   a,(hl)
26E6: DD 77 00    ld   (ix+$00),a
26E9: C9          ret
26EA: A8          xor  b
26EB: AC          xor  h
26EC: B0          or   b
26ED: B4          or   h
26EE: B8          cp   b
26EF: BC          cp   h
26F0: F8          ret  m
26F1: FC F4 F5    call m,$F5F4
26F4: F6 F7       or   $F7
26F6: E8          ret  pe
26F7: E9          jp   (hl)
26F8: EA EB EC    jp   pe,$ECEB
26FB: ED          db   $ed
26FC: EE EF       xor  $EF
26FE: F0          ret  p
26FF: F1          pop  af
2700: F2 F3 A8    jp   p,$A8F3
2703: AC          xor  h
2704: B0          or   b
2705: B4          or   h
2706: B8          cp   b
2707: BC          cp   h
2708: F8          ret  m
2709: FC DD 21    call m,$21DD
270C: 7D          ld   a,l
270D: C2 3A 3D    jp   nz,$3D3A
2710: C0          ret  nz
2711: FE 83       cp   $83
2713: 28 04       jr   z,$2719
2715: DD 21 8D C2 ld   ix,$C28D
2719: 08          ex   af,af'
271A: DD 7E 06    ld   a,(ix+$06)
271D: B7          or   a
271E: C2 DD 28    jp   nz,$28DD
2721: 34          inc  (hl)
2722: 23          inc  hl
2723: B6          or   (hl)
2724: DD 22 3F C0 ld   ($C03F),ix
2728: DD E5       push ix
272A: D1          pop  de
272B: 21 E3 28    ld   hl,$28E3
272E: 01 0F 00    ld   bc,$000F
2731: ED B0       ldir
2733: 28 04       jr   z,$2739
2735: DD 36 03 56 ld   (ix+$03),$56
2739: 3A 1B C2    ld   a,($C21B)
273C: 07          rlca
273D: 38 02       jr   c,$2741
273F: ED 5F       ld   a,r
2741: E6 3F       and  $3F
2743: C6 18       add  a,$18
2745: DD 77 05    ld   (ix+$05),a
2748: FE 3C       cp   $3C
274A: 30 04       jr   nc,$2750
274C: DD 36 07 0F ld   (ix+$07),$0F
2750: 08          ex   af,af'
2751: C8          ret  z
2752: DD 34 06    inc  (ix+$06)
2755: C9          ret
2756: 21 3E C0    ld   hl,$C03E
2759: CB 46       bit  0,(hl)
275B: 28 AD       jr   z,$270A
275D: DD 2A 3F C0 ld   ix,($C03F)
2761: CB 56       bit  2,(hl)
2763: C2 3D 28    jp   nz,$283D
2766: CB 4E       bit  1,(hl)
2768: 20 32       jr   nz,$279C
276A: DD CB 06 76 bit  6,(ix+$06)
276E: 20 0E       jr   nz,$277E
2770: DD 7E 02    ld   a,(ix+$02)
2773: FE FC       cp   $FC
2775: D2 D6 28    jp   nc,$28D6
2778: CD B6 33    call $33B6
277B: C3 5E 28    jp   $285E
277E: CB CE       set  1,(hl)
2780: DD CB 06 EE set  5,(ix+$06)
2784: DD 36 0A 00 ld   (ix+$0a),$00
2788: 3E 08       ld   a,$08
278A: CD 15 08    call $0815
278D: 11 00 01    ld   de,$0100
2790: CD 93 03    call $0393
2793: 21 75 35    ld   hl,$3575
2796: DD 75 08    ld   (ix+$08),l
2799: DD 74 09    ld   (ix+$09),h
279C: 3A 4F C2    ld   a,($C24F)
279F: 6F          ld   l,a
27A0: 3A 52 C2    ld   a,($C252)
27A3: D6 0C       sub  $0C
27A5: DD CB 06 46 bit  0,(ix+$06)
27A9: 28 02       jr   z,$27AD
27AB: C6 18       add  a,$18
27AD: 67          ld   h,a
27AE: E5          push hl
27AF: CD 06 33    call $3306
27B2: DD 77 07    ld   (ix+$07),a
27B5: CD B6 33    call $33B6
27B8: E1          pop  hl
27B9: 3A 3E C0    ld   a,($C03E)
27BC: E6 08       and  $08
27BE: 20 1B       jr   nz,$27DB
27C0: DD 7E 0A    ld   a,(ix+$0a)
27C3: FE 07       cp   $07
27C5: 30 0C       jr   nc,$27D3
27C7: DD 34 0A    inc  (ix+$0a)
27CA: 5F          ld   e,a
27CB: 16 00       ld   d,$00
27CD: 21 F8 28    ld   hl,$28F8
27D0: C3 85 28    jp   $2885
27D3: 3A 3E C0    ld   a,($C03E)
27D6: F6 08       or   $08
27D8: 32 3E C0    ld   ($C03E),a
27DB: DD 5E 02    ld   e,(ix+$02)
27DE: DD 56 05    ld   d,(ix+$05)
27E1: B7          or   a
27E2: ED 52       sbc  hl,de
27E4: 20 78       jr   nz,$285E
27E6: 3A 6C C2    ld   a,($C26C)
27E9: E6 C0       and  $C0
27EB: 20 0A       jr   nz,$27F7
27ED: 3E FE       ld   a,$FE
27EF: CD 15 08    call $0815
27F2: 3E 02       ld   a,$02
27F4: CD 15 08    call $0815
27F7: DD CB 06 B6 res  6,(ix+$06)
27FB: DD 7E 06    ld   a,(ix+$06)
27FE: 21 3E C0    ld   hl,$C03E
2801: CB D6       set  2,(hl)
2803: 21 B3 C2    ld   hl,$C2B3
2806: 11 10 00    ld   de,$0010
2809: 06 03       ld   b,$03
280B: CB 46       bit  0,(hl)
280D: 20 05       jr   nz,$2814
280F: 19          add  hl,de
2810: 10 F9       djnz $280B
2812: 18 0A       jr   $281E
2814: 1E 30       ld   e,$30
2816: CB 47       bit  0,a
2818: 28 02       jr   z,$281C
281A: 1E 60       ld   e,$60
281C: 19          add  hl,de
281D: 34          inc  (hl)
281E: 0F          rrca
281F: 3E 80       ld   a,$80
2821: 30 01       jr   nc,$2824
2823: 0F          rrca
2824: 4F          ld   c,a
2825: 21 6C C2    ld   hl,$C26C
2828: B6          or   (hl)
2829: 77          ld   (hl),a
282A: 21 69 C2    ld   hl,$C269
282D: DD 7E 03    ld   a,(ix+$03)
2830: FE 40       cp   $40
2832: 79          ld   a,c
2833: 28 03       jr   z,$2838
2835: B6          or   (hl)
2836: 18 02       jr   $283A
2838: 2F          cpl
2839: A6          and  (hl)
283A: 77          ld   (hl),a
283B: 18 21       jr   $285E
283D: DD CB 06 76 bit  6,(ix+$06)
2841: 20 4A       jr   nz,$288D
2843: CD 8F 22    call $228F
2846: DD 7E 02    ld   a,(ix+$02)
2849: D6 04       sub  $04
284B: DD 77 02    ld   (ix+$02),a
284E: DD 7E 05    ld   a,(ix+$05)
2851: D6 0C       sub  $0C
2853: DD CB 06 46 bit  0,(ix+$06)
2857: 28 02       jr   z,$285B
2859: C6 18       add  a,$18
285B: DD 77 05    ld   (ix+$05),a
285E: DD 7E 0A    ld   a,(ix+$0a)
2861: DD 34 0A    inc  (ix+$0a)
2864: FE 03       cp   $03
2866: 38 04       jr   c,$286C
2868: AF          xor  a
2869: DD 77 0A    ld   (ix+$0a),a
286C: 5F          ld   e,a
286D: 16 00       ld   d,$00
286F: 21 F2 28    ld   hl,$28F2
2872: DD 7E 03    ld   a,(ix+$03)
2875: FE 40       cp   $40
2877: 28 03       jr   z,$287C
2879: 21 FF 28    ld   hl,$28FF
287C: DD CB 06 6E bit  5,(ix+$06)
2880: 28 03       jr   z,$2885
2882: 23          inc  hl
2883: 23          inc  hl
2884: 23          inc  hl
2885: 19          add  hl,de
2886: 7E          ld   a,(hl)
2887: DD 77 00    ld   (ix+$00),a
288A: C3 02 04    jp   $0402
288D: 3E 09       ld   a,$09
288F: CD 15 08    call $0815
2892: DD 7E 06    ld   a,(ix+$06)
2895: EE 88       xor  $88
2897: DD 77 06    ld   (ix+$06),a
289A: DD 36 03 0E ld   (ix+$03),$0E
289E: DD 36 0A 00 ld   (ix+$0a),$00
28A2: 11 E3 C2    ld   de,$C2E3
28A5: 21 6C C2    ld   hl,$C26C
28A8: 0F          rrca
28A9: 3E 7F       ld   a,$7F
28AB: 30 05       jr   nc,$28B2
28AD: 3E BF       ld   a,$BF
28AF: 11 13 C3    ld   de,$C313
28B2: A6          and  (hl)
28B3: 77          ld   (hl),a
28B4: E6 C0       and  $C0
28B6: 20 0C       jr   nz,$28C4
28B8: E5          push hl
28B9: 3E FE       ld   a,$FE
28BB: CD 15 08    call $0815
28BE: 3E 01       ld   a,$01
28C0: CD 15 08    call $0815
28C3: E1          pop  hl
28C4: EB          ex   de,hl
28C5: 11 10 00    ld   de,$0010
28C8: 06 03       ld   b,$03
28CA: CB 46       bit  0,(hl)
28CC: 28 03       jr   z,$28D1
28CE: 72          ld   (hl),d
28CF: 18 0C       jr   $28DD
28D1: 19          add  hl,de
28D2: 10 F6       djnz $28CA
28D4: 18 07       jr   $28DD
28D6: DD 36 06 00 ld   (ix+$06),$00
28DA: CD 62 04    call $0462
28DD: 3A 3D C0    ld   a,($C03D)
28E0: C3 CF 04    jp   $04CF
28E3: 00          nop
28E4: 00          nop
28E5: 94          sub  h
28E6: 40          ld   b,b
28E7: 00          nop
28E8: 00          nop
28E9: 80          add  a,b
28EA: 11 B5 34    ld   de,$34B5
28ED: 00          nop
28EE: 04          inc  b
28EF: 04          inc  b
28F0: 04          inc  b
28F1: 04          inc  b
28F2: C3 C4 C5    jp   $C5C4
28F5: C0          ret  nz
28F6: C1          pop  bc
28F7: C2 C6 C7    jp   nz,$C7C6
28FA: C8          ret  z
28FB: C9          ret
28FC: CA CB CC    jp   z,$CCCB
28FF: 91          sub  c
2900: 92          sub  d
2901: 93          sub  e
2902: 9E          sbc  a,(hl)
2903: 9F          sbc  a,a
2904: A2          and  d
2905: 11 EE 45    ld   de,$45EE
2908: CD A5 2A    call $2AA5
290B: DD 36 03 0A ld   (ix+$03),$0A
290F: 11 95 34    ld   de,$3495
2912: DD 73 08    ld   (ix+$08),e
2915: DD 72 09    ld   (ix+$09),d
2918: DD 7E 07    ld   a,(ix+$07)
291B: DD 77 14    ld   (ix+$14),a
291E: DD 36 0B 06 ld   (ix+$0b),$06
2922: DD 36 0C 06 ld   (ix+$0c),$06
2926: DD 36 0D 05 ld   (ix+$0d),$05
292A: DD 36 0E 05 ld   (ix+$0e),$05
292E: 3A 3D C0    ld   a,($C03D)
2931: D6 05       sub  $05
2933: E6 07       and  $07
2935: DD 77 15    ld   (ix+$15),a
2938: C6 D2       add  a,$D2
293A: DD 77 17    ld   (ix+$17),a
293D: DD 36 1C FF ld   (ix+$1c),$FF
2941: DD 36 1D 27 ld   (ix+$1d),$27
2945: DD 36 1E 00 ld   (ix+$1e),$00
2949: C3 D7 29    jp   $29D7
294C: 21 3E C0    ld   hl,$C03E
294F: CB 46       bit  0,(hl)
2951: 28 B2       jr   z,$2905
2953: CD E2 2A    call $2AE2
2956: DD 7E 12    ld   a,(ix+$12)
2959: E6 03       and  $03
295B: 20 09       jr   nz,$2966
295D: DD 35 13    dec  (ix+$13)
2960: CA D1 29    jp   z,$29D1
2963: C3 FF 29    jp   $29FF
2966: 3D          dec  a
2967: 20 1D       jr   nz,$2986
2969: DD 7E 07    ld   a,(ix+$07)
296C: F5          push af
296D: DD 7E 12    ld   a,(ix+$12)
2970: E6 70       and  $70
2972: 0F          rrca
2973: 0F          rrca
2974: DD 77 07    ld   (ix+$07),a
2977: CD B6 33    call $33B6
297A: F1          pop  af
297B: DD 77 07    ld   (ix+$07),a
297E: DD 35 13    dec  (ix+$13)
2981: 28 4E       jr   z,$29D1
2983: C3 FF 29    jp   $29FF
2986: CD B6 33    call $33B6
2989: DD 7E 12    ld   a,(ix+$12)
298C: E6 70       and  $70
298E: 0F          rrca
298F: 0F          rrca
2990: DD BE 07    cp   (ix+$07)
2993: 28 3C       jr   z,$29D1
2995: 3A D6 C0    ld   a,($C0D6)
2998: E6 07       and  $07
299A: 20 1A       jr   nz,$29B6
299C: 0E FC       ld   c,$FC
299E: 06 FE       ld   b,$FE
29A0: DD CB 12 46 bit  0,(ix+$12)
29A4: 20 04       jr   nz,$29AA
29A6: 0E 04       ld   c,$04
29A8: 06 02       ld   b,$02
29AA: DD 7E 07    ld   a,(ix+$07)
29AD: 81          add  a,c
29AE: E6 1F       and  $1F
29B0: DD 77 07    ld   (ix+$07),a
29B3: C3 C5 29    jp   $29C5
29B6: E6 03       and  $03
29B8: C2 02 2A    jp   nz,$2A02
29BB: 06 FE       ld   b,$FE
29BD: DD CB 12 46 bit  0,(ix+$12)
29C1: 20 02       jr   nz,$29C5
29C3: 06 02       ld   b,$02
29C5: DD 7E 14    ld   a,(ix+$14)
29C8: 80          add  a,b
29C9: E6 1E       and  $1E
29CB: DD 77 14    ld   (ix+$14),a
29CE: C3 02 2A    jp   $2A02
29D1: DD 6E 10    ld   l,(ix+$10)
29D4: DD 66 11    ld   h,(ix+$11)
29D7: 7E          ld   a,(hl)
29D8: 07          rlca
29D9: 30 14       jr   nc,$29EF
29DB: 07          rlca
29DC: 30 0C       jr   nc,$29EA
29DE: 3A 41 C1    ld   a,($C141)
29E1: 0F          rrca
29E2: 38 06       jr   c,$29EA
29E4: 23          inc  hl
29E5: 23          inc  hl
29E6: 23          inc  hl
29E7: C3 D7 29    jp   $29D7
29EA: 23          inc  hl
29EB: 7E          ld   a,(hl)
29EC: 23          inc  hl
29ED: 66          ld   h,(hl)
29EE: 6F          ld   l,a
29EF: 7E          ld   a,(hl)
29F0: DD 77 12    ld   (ix+$12),a
29F3: 23          inc  hl
29F4: 7E          ld   a,(hl)
29F5: DD 77 13    ld   (ix+$13),a
29F8: 23          inc  hl
29F9: DD 75 10    ld   (ix+$10),l
29FC: DD 74 11    ld   (ix+$11),h
29FF: CD 56 2A    call $2A56
2A02: DD 7E 07    ld   a,(ix+$07)
2A05: C6 40       add  a,$40
2A07: DD 77 00    ld   (ix+$00),a
2A0A: CD A0 03    call $03A0
2A0D: DD 7E 14    ld   a,(ix+$14)
2A10: C6 60       add  a,$60
2A12: DD 5E 01    ld   e,(ix+$01)
2A15: DD 56 02    ld   d,(ix+$02)
2A18: DD 6E 04    ld   l,(ix+$04)
2A1B: DD 66 05    ld   h,(ix+$05)
2A1E: 4F          ld   c,a
2A1F: DD 46 03    ld   b,(ix+$03)
2A22: 08          ex   af,af'
2A23: DD 7E 0F    ld   a,(ix+$0f)
2A26: C6 04       add  a,$04
2A28: CF          rst  $08
2A29: DD 7E 14    ld   a,(ix+$14)
2A2C: 07          rlca
2A2D: 5F          ld   e,a
2A2E: 16 00       ld   d,$00
2A30: 21 37 2B    ld   hl,$2B37
2A33: 19          add  hl,de
2A34: 08          ex   af,af'
2A35: 3C          inc  a
2A36: 5E          ld   e,(hl)
2A37: 23          inc  hl
2A38: 56          ld   d,(hl)
2A39: 23          inc  hl
2A3A: 4E          ld   c,(hl)
2A3B: 23          inc  hl
2A3C: 46          ld   b,(hl)
2A3D: DD 6E 01    ld   l,(ix+$01)
2A40: DD 66 02    ld   h,(ix+$02)
2A43: 19          add  hl,de
2A44: EB          ex   de,hl
2A45: DD 6E 04    ld   l,(ix+$04)
2A48: DD 66 05    ld   h,(ix+$05)
2A4B: 09          add  hl,bc
2A4C: 4F          ld   c,a
2A4D: DD 46 03    ld   b,(ix+$03)
2A50: DD 7E 17    ld   a,(ix+$17)
2A53: C3 08 00    jp   $0008
2A56: DD 7E 02    ld   a,(ix+$02)
2A59: FE 90       cp   $90
2A5B: D0          ret  nc
2A5C: DD 7E 15    ld   a,(ix+$15)
2A5F: B7          or   a
2A60: 28 04       jr   z,$2A66
2A62: DD 35 15    dec  (ix+$15)
2A65: C9          ret
2A66: CD FE 32    call $32FE
2A69: 4F          ld   c,a
2A6A: E6 1E       and  $1E
2A6C: DD BE 14    cp   (ix+$14)
2A6F: 20 1C       jr   nz,$2A8D
2A71: 6F          ld   l,a
2A72: 26 00       ld   h,$00
2A74: 11 77 2B    ld   de,$2B77
2A77: 19          add  hl,de
2A78: DD 7E 02    ld   a,(ix+$02)
2A7B: 86          add  a,(hl)
2A7C: 5F          ld   e,a
2A7D: 23          inc  hl
2A7E: DD 7E 05    ld   a,(ix+$05)
2A81: 86          add  a,(hl)
2A82: 57          ld   d,a
2A83: CD 92 32    call $3292
2A86: CD 1C 2B    call $2B1C
2A89: DD 77 15    ld   (ix+$15),a
2A8C: C9          ret
2A8D: 3A D6 C0    ld   a,($C0D6)
2A90: E6 07       and  $07
2A92: C0          ret  nz
2A93: 79          ld   a,c
2A94: DD 4E 14    ld   c,(ix+$14)
2A97: CD 60 33    call $3360
2A9A: 4F          ld   c,a
2A9B: DD 96 14    sub  (ix+$14)
2A9E: 81          add  a,c
2A9F: E6 1E       and  $1E
2AA1: DD 77 14    ld   (ix+$14),a
2AA4: C9          ret
2AA5: 34          inc  (hl)
2AA6: D5          push de
2AA7: CD 87 33    call $3387
2AAA: D1          pop  de
2AAB: 38 2E       jr   c,$2ADB
2AAD: 23          inc  hl
2AAE: 4E          ld   c,(hl)
2AAF: 23          inc  hl
2AB0: 7E          ld   a,(hl)
2AB1: DD 77 05    ld   (ix+$05),a
2AB4: DD 36 01 00 ld   (ix+$01),$00
2AB8: DD 36 04 00 ld   (ix+$04),$00
2ABC: DD CB 06 FE set  7,(ix+$06)
2AC0: DD 22 3F C0 ld   ($C03F),ix
2AC4: 06 00       ld   b,$00
2AC6: CB 21       sla  c
2AC8: CB 10       rl   b
2ACA: EB          ex   de,hl
2ACB: 09          add  hl,bc
2ACC: 5E          ld   e,(hl)
2ACD: 23          inc  hl
2ACE: 56          ld   d,(hl)
2ACF: EB          ex   de,hl
2AD0: 7E          ld   a,(hl)
2AD1: DD 77 02    ld   (ix+$02),a
2AD4: 23          inc  hl
2AD5: 7E          ld   a,(hl)
2AD6: DD 77 07    ld   (ix+$07),a
2AD9: 23          inc  hl
2ADA: C9          ret
2ADB: E1          pop  hl
2ADC: 3A 3D C0    ld   a,($C03D)
2ADF: C3 CF 04    jp   $04CF
2AE2: DD 2A 3F C0 ld   ix,($C03F)
2AE6: CD 9B 33    call $339B
2AE9: DD 7E 02    ld   a,(ix+$02)
2AEC: D6 98       sub  $98
2AEE: FE 60       cp   $60
2AF0: 30 0B       jr   nc,$2AFD
2AF2: E1          pop  hl
2AF3: DD 36 06 00 ld   (ix+$06),$00
2AF7: CD 31 04    call $0431
2AFA: C3 07 2B    jp   $2B07
2AFD: DD CB 06 76 bit  6,(ix+$06)
2B01: C8          ret  z
2B02: E1          pop  hl
2B03: DD 36 06 08 ld   (ix+$06),$08
2B07: DD 7E 0F    ld   a,(ix+$0f)
2B0A: C6 04       add  a,$04
2B0C: CD 7A 04    call $047A
2B0F: DD 7E 17    ld   a,(ix+$17)
2B12: B7          or   a
2B13: C4 7A 04    call nz,$047A
2B16: 3A 3D C0    ld   a,($C03D)
2B19: C3 CF 04    jp   $04CF
2B1C: 3A 0A C8    ld   a,($C80A)
2B1F: E6 0C       and  $0C
2B21: 07          rlca
2B22: 07          rlca
2B23: C6 24       add  a,$24
2B25: 47          ld   b,a
2B26: 3A 2C C2    ld   a,($C22C)
2B29: ED 44       neg
2B2B: E6 FE       and  $FE
2B2D: 0F          rrca
2B2E: 90          sub  b
2B2F: 38 03       jr   c,$2B34
2B31: FE 21       cp   $21
2B33: D0          ret  nc
2B34: 3E 20       ld   a,$20
2B36: C9          ret
2B37: 00          nop
2B38: 08          ex   af,af'
2B39: 00          nop
2B3A: 00          nop
2B3B: 00          nop
2B3C: 08          ex   af,af'
2B3D: 00          nop
2B3E: 04          inc  b
2B3F: 00          nop
2B40: 04          inc  b
2B41: 00          nop
2B42: 04          inc  b
2B43: 00          nop
2B44: 04          inc  b
2B45: 00          nop
2B46: 08          ex   af,af'
2B47: 00          nop
2B48: 00          nop
2B49: 00          nop
2B4A: 08          ex   af,af'
2B4B: 00          nop
2B4C: FC 00 08    call m,$0800
2B4F: 00          nop
2B50: FC 00 04    call m,$0400
2B53: 00          nop
2B54: F8          ret  m
2B55: 00          nop
2B56: 04          inc  b
2B57: 00          nop
2B58: F8          ret  m
2B59: 00          nop
2B5A: 00          nop
2B5B: 00          nop
2B5C: F8          ret  m
2B5D: 00          nop
2B5E: FC 00 FC    call m,$FC00
2B61: 00          nop
2B62: FC 00 FC    call m,$FC00
2B65: 00          nop
2B66: F8          ret  m
2B67: 00          nop
2B68: 00          nop
2B69: 00          nop
2B6A: F8          ret  m
2B6B: 00          nop
2B6C: 04          inc  b
2B6D: 00          nop
2B6E: F8          ret  m
2B6F: 00          nop
2B70: 04          inc  b
2B71: 00          nop
2B72: FC 00 08    call m,$0800
2B75: 00          nop
2B76: FC 09 00    call m,$0009
2B79: 08          ex   af,af'
2B7A: 04          inc  b
2B7B: 07          rlca
2B7C: 07          rlca
2B7D: 04          inc  b
2B7E: 08          ex   af,af'
2B7F: 00          nop
2B80: 09          add  hl,bc
2B81: FC 08 F9    call m,$F908
2B84: 07          rlca
2B85: F8          ret  m
2B86: 04          inc  b
2B87: F7          rst  $30
2B88: 00          nop
2B89: F8          ret  m
2B8A: FC F9 F9    call m,$F9F9
2B8D: FC F8 00    call m,$00F8
2B90: F7          rst  $30
2B91: 04          inc  b
2B92: F8          ret  m
2B93: 07          rlca
2B94: F9          ld   sp,hl
2B95: 08          ex   af,af'
2B96: FC 11 10    call m,$1011
2B99: 2D          dec  l
2B9A: CD A5 2A    call $2AA5
2B9D: DD 36 03 46 ld   (ix+$03),$46
2BA1: 11 95 34    ld   de,$3495
2BA4: DD 73 08    ld   (ix+$08),e
2BA7: DD 72 09    ld   (ix+$09),d
2BAA: DD 36 0B 04 ld   (ix+$0b),$04
2BAE: DD 36 0C 05 ld   (ix+$0c),$05
2BB2: DD 36 0D 03 ld   (ix+$0d),$03
2BB6: DD 36 0E 03 ld   (ix+$0e),$03
2BBA: 11 E6 2C    ld   de,$2CE6
2BBD: DD 36 14 10 ld   (ix+$14),$10
2BC1: DD 73 15    ld   (ix+$15),e
2BC4: DD 72 16    ld   (ix+$16),d
2BC7: DD 36 17 00 ld   (ix+$17),$00
2BCB: DD 36 18 18 ld   (ix+$18),$18
2BCF: DD 36 1C 00 ld   (ix+$1c),$00
2BD3: DD 36 1D 19 ld   (ix+$1d),$19
2BD7: DD 36 1E 00 ld   (ix+$1e),$00
2BDB: C3 11 2C    jp   $2C11
2BDE: 21 3E C0    ld   hl,$C03E
2BE1: CB 46       bit  0,(hl)
2BE3: 28 B2       jr   z,$2B97
2BE5: CD E2 2A    call $2AE2
2BE8: DD 35 13    dec  (ix+$13)
2BEB: 28 1E       jr   z,$2C0B
2BED: DD 7E 12    ld   a,(ix+$12)
2BF0: DD BE 07    cp   (ix+$07)
2BF3: 28 2C       jr   z,$2C21
2BF5: 3A D6 C0    ld   a,($C0D6)
2BF8: E6 03       and  $03
2BFA: 20 25       jr   nz,$2C21
2BFC: DD 4E 07    ld   c,(ix+$07)
2BFF: DD 7E 12    ld   a,(ix+$12)
2C02: CD 60 33    call $3360
2C05: DD 77 07    ld   (ix+$07),a
2C08: C3 21 2C    jp   $2C21
2C0B: DD 6E 10    ld   l,(ix+$10)
2C0E: DD 66 11    ld   h,(ix+$11)
2C11: 7E          ld   a,(hl)
2C12: DD 77 12    ld   (ix+$12),a
2C15: 23          inc  hl
2C16: 7E          ld   a,(hl)
2C17: DD 77 13    ld   (ix+$13),a
2C1A: 23          inc  hl
2C1B: DD 75 10    ld   (ix+$10),l
2C1E: DD 74 11    ld   (ix+$11),h
2C21: CD B6 33    call $33B6
2C24: DD 7E 18    ld   a,(ix+$18)
2C27: B7          or   a
2C28: 28 06       jr   z,$2C30
2C2A: DD 35 18    dec  (ix+$18)
2C2D: C3 65 2C    jp   $2C65
2C30: CD FE 32    call $32FE
2C33: 4F          ld   c,a
2C34: E6 1E       and  $1E
2C36: DD BE 14    cp   (ix+$14)
2C39: 20 12       jr   nz,$2C4D
2C3B: DD 5E 02    ld   e,(ix+$02)
2C3E: DD 56 05    ld   d,(ix+$05)
2C41: CD 92 32    call $3292
2C44: CD 1C 2B    call $2B1C
2C47: DD 77 18    ld   (ix+$18),a
2C4A: C3 65 2C    jp   $2C65
2C4D: 3A D6 C0    ld   a,($C0D6)
2C50: E6 07       and  $07
2C52: 20 11       jr   nz,$2C65
2C54: 79          ld   a,c
2C55: DD 4E 14    ld   c,(ix+$14)
2C58: CD 60 33    call $3360
2C5B: 4F          ld   c,a
2C5C: DD 96 14    sub  (ix+$14)
2C5F: 81          add  a,c
2C60: E6 1E       and  $1E
2C62: DD 77 14    ld   (ix+$14),a
2C65: DD 5E 01    ld   e,(ix+$01)
2C68: DD 56 02    ld   d,(ix+$02)
2C6B: DD 6E 04    ld   l,(ix+$04)
2C6E: DD 66 05    ld   h,(ix+$05)
2C71: DD 7E 14    ld   a,(ix+$14)
2C74: 0F          rrca
2C75: C6 D8       add  a,$D8
2C77: 4F          ld   c,a
2C78: 06 02       ld   b,$02
2C7A: DD 7E 0F    ld   a,(ix+$0f)
2C7D: C6 04       add  a,$04
2C7F: CF          rst  $08
2C80: DD 7E 07    ld   a,(ix+$07)
2C83: E6 1C       and  $1C
2C85: 0F          rrca
2C86: 5F          ld   e,a
2C87: 16 00       ld   d,$00
2C89: DD 6E 15    ld   l,(ix+$15)
2C8C: DD 66 16    ld   h,(ix+$16)
2C8F: 19          add  hl,de
2C90: 5E          ld   e,(hl)
2C91: 23          inc  hl
2C92: 56          ld   d,(hl)
2C93: EB          ex   de,hl
2C94: 7E          ld   a,(hl)
2C95: 5F          ld   e,a
2C96: 3A D6 C0    ld   a,($C0D6)
2C99: E6 04       and  $04
2C9B: 7B          ld   a,e
2C9C: 28 02       jr   z,$2CA0
2C9E: C6 18       add  a,$18
2CA0: 23          inc  hl
2CA1: 5E          ld   e,(hl)
2CA2: 23          inc  hl
2CA3: 56          ld   d,(hl)
2CA4: 23          inc  hl
2CA5: 4E          ld   c,(hl)
2CA6: 23          inc  hl
2CA7: 46          ld   b,(hl)
2CA8: E5          push hl
2CA9: DD 6E 01    ld   l,(ix+$01)
2CAC: DD 66 02    ld   h,(ix+$02)
2CAF: 19          add  hl,de
2CB0: EB          ex   de,hl
2CB1: DD 6E 04    ld   l,(ix+$04)
2CB4: DD 66 05    ld   h,(ix+$05)
2CB7: 09          add  hl,bc
2CB8: 4F          ld   c,a
2CB9: DD 46 03    ld   b,(ix+$03)
2CBC: 08          ex   af,af'
2CBD: DD 7E 0F    ld   a,(ix+$0f)
2CC0: CF          rst  $08
2CC1: E1          pop  hl
2CC2: 08          ex   af,af'
2CC3: 3C          inc  a
2CC4: 23          inc  hl
2CC5: 5E          ld   e,(hl)
2CC6: 23          inc  hl
2CC7: 56          ld   d,(hl)
2CC8: 23          inc  hl
2CC9: 4E          ld   c,(hl)
2CCA: 23          inc  hl
2CCB: 46          ld   b,(hl)
2CCC: DD 6E 01    ld   l,(ix+$01)
2CCF: DD 66 02    ld   h,(ix+$02)
2CD2: 19          add  hl,de
2CD3: EB          ex   de,hl
2CD4: DD 6E 04    ld   l,(ix+$04)
2CD7: DD 66 05    ld   h,(ix+$05)
2CDA: 09          add  hl,bc
2CDB: 4F          ld   c,a
2CDC: DD 46 03    ld   b,(ix+$03)
2CDF: DD 7E 0F    ld   a,(ix+$0f)
2CE2: 3C          inc  a
2CE3: C3 08 00    jp   $0008
2CE6: F6 2C       or   $2C
2CE8: FF          rst  $38
2CE9: 2C          inc  l
2CEA: FF          rst  $38
2CEB: 2C          inc  l
2CEC: 07          rlca
2CED: 2D          dec  l
2CEE: 07          rlca
2CEF: 2D          dec  l
2CF0: 10 2D       djnz $2D1F
2CF2: 10 2D       djnz $2D21
2CF4: 10 2D       djnz $2D23
2CF6: 00          nop
2CF7: 00          nop
2CF8: 04          inc  b
2CF9: 00          nop
2CFA: 00          nop
2CFB: 00          nop
2CFC: FC 00 00    call m,$0000
2CFF: 00          nop
2D00: 00          nop
2D01: 00          nop
2D02: FC 00 00    call m,$0000
2D05: 00          nop
2D06: 04          inc  b
2D07: 04          inc  b
2D08: 00          nop
2D09: 04          inc  b
2D0A: 00          nop
2D0B: 00          nop
2D0C: 00          nop
2D0D: FC 00 00    call m,$0000
2D10: 14          inc  d
2D11: 2D          dec  l
2D12: 1E 2D       ld   e,$2D
2D14: 97          sub  a
2D15: 10 10       djnz $2D27
2D17: 00          nop
2D18: 10 00       djnz $2D1A
2D1A: 10 00       djnz $2D1C
2D1C: 10 00       djnz $2D1E
2D1E: F9          ld   sp,hl
2D1F: 00          nop
2D20: 00          nop
2D21: 00          nop
2D22: 00          nop
2D23: 00          nop
2D24: 00          nop
2D25: 00          nop
2D26: 00          nop
2D27: 00          nop
2D28: 00          nop
2D29: 00          nop
2D2A: 00          nop
2D2B: 00          nop
2D2C: 00          nop
2D2D: 00          nop
2D2E: 00          nop
2D2F: 00          nop
2D30: 3A 3F C0    ld   a,($C03F)
2D33: F6 01       or   $01
2D35: 32 3E C0    ld   ($C03E),a
2D38: CD 87 33    call $3387
2D3B: 3A 3D C0    ld   a,($C03D)
2D3E: DA CF 04    jp   c,$04CF
2D41: DD 36 1D 13 ld   (ix+$1d),$13
2D45: DD 36 1E 00 ld   (ix+$1e),$00
2D49: 3A 3E C0    ld   a,($C03E)
2D4C: 07          rlca
2D4D: DA 41 2E    jp   c,$2E41
2D50: 3A 40 C0    ld   a,($C040)
2D53: DD 77 05    ld   (ix+$05),a
2D56: DD 36 02 94 ld   (ix+$02),$94
2D5A: DD 36 10 00 ld   (ix+$10),$00
2D5E: DD 36 01 00 ld   (ix+$01),$00
2D62: DD 36 04 00 ld   (ix+$04),$00
2D66: DD 36 03 08 ld   (ix+$03),$08
2D6A: DD CB 06 FE set  7,(ix+$06)
2D6E: DD 36 07 00 ld   (ix+$07),$00
2D72: DD 36 0B 04 ld   (ix+$0b),$04
2D76: DD 36 0C 04 ld   (ix+$0c),$04
2D7A: DD 36 0D 04 ld   (ix+$0d),$04
2D7E: DD 36 0E 04 ld   (ix+$0e),$04
2D82: DD 36 00 31 ld   (ix+$00),$31
2D86: DD 36 1C FF ld   (ix+$1c),$FF
2D8A: DD 22 3F C0 ld   ($C03F),ix
2D8E: C3 0F 2E    jp   $2E0F
2D91: 3A 3E C0    ld   a,($C03E)
2D94: B7          or   a
2D95: 28 99       jr   z,$2D30
2D97: 07          rlca
2D98: 30 19       jr   nc,$2DB3
2D9A: CD E2 2A    call $2AE2
2D9D: 3A D6 C0    ld   a,($C0D6)
2DA0: E6 03       and  $03
2DA2: 20 09       jr   nz,$2DAD
2DA4: DD 7E 15    ld   a,(ix+$15)
2DA7: B7          or   a
2DA8: 28 03       jr   z,$2DAD
2DAA: DD 35 15    dec  (ix+$15)
2DAD: CD 56 2A    call $2A56
2DB0: C3 0D 2A    jp   $2A0D
2DB3: CD E2 2A    call $2AE2
2DB6: 3A D6 C0    ld   a,($C0D6)
2DB9: 3C          inc  a
2DBA: E6 03       and  $03
2DBC: 20 51       jr   nz,$2E0F
2DBE: CD FE 32    call $32FE
2DC1: 4F          ld   c,a
2DC2: E6 1E       and  $1E
2DC4: DD BE 07    cp   (ix+$07)
2DC7: 28 14       jr   z,$2DDD
2DC9: 79          ld   a,c
2DCA: DD 4E 07    ld   c,(ix+$07)
2DCD: CD 60 33    call $3360
2DD0: 4F          ld   c,a
2DD1: DD 96 07    sub  (ix+$07)
2DD4: 81          add  a,c
2DD5: E6 1E       and  $1E
2DD7: DD 77 07    ld   (ix+$07),a
2DDA: C3 0F 2E    jp   $2E0F
2DDD: DD 7E 10    ld   a,(ix+$10)
2DE0: B7          or   a
2DE1: 28 06       jr   z,$2DE9
2DE3: DD 35 10    dec  (ix+$10)
2DE6: C3 0F 2E    jp   $2E0F
2DE9: DD 5E 07    ld   e,(ix+$07)
2DEC: 16 00       ld   d,$00
2DEE: 21 77 2B    ld   hl,$2B77
2DF1: 19          add  hl,de
2DF2: 5E          ld   e,(hl)
2DF3: 23          inc  hl
2DF4: 56          ld   d,(hl)
2DF5: DD 7E 02    ld   a,(ix+$02)
2DF8: 83          add  a,e
2DF9: 5F          ld   e,a
2DFA: DD 7E 05    ld   a,(ix+$05)
2DFD: 82          add  a,d
2DFE: 57          ld   d,a
2DFF: 79          ld   a,c
2E00: CD 92 32    call $3292
2E03: CD 1C 2B    call $2B1C
2E06: 0F          rrca
2E07: 0F          rrca
2E08: D6 02       sub  $02
2E0A: E6 3F       and  $3F
2E0C: DD 77 10    ld   (ix+$10),a
2E0F: CD 02 04    call $0402
2E12: DD 7E 07    ld   a,(ix+$07)
2E15: 5F          ld   e,a
2E16: 0F          rrca
2E17: C6 98       add  a,$98
2E19: CB 03       rlc  e
2E1B: 16 00       ld   d,$00
2E1D: 21 91 2E    ld   hl,$2E91
2E20: 19          add  hl,de
2E21: 5E          ld   e,(hl)
2E22: 23          inc  hl
2E23: 56          ld   d,(hl)
2E24: 23          inc  hl
2E25: 4E          ld   c,(hl)
2E26: 23          inc  hl
2E27: 46          ld   b,(hl)
2E28: DD 6E 01    ld   l,(ix+$01)
2E2B: DD 66 02    ld   h,(ix+$02)
2E2E: 19          add  hl,de
2E2F: EB          ex   de,hl
2E30: DD 6E 04    ld   l,(ix+$04)
2E33: DD 66 05    ld   h,(ix+$05)
2E36: 09          add  hl,bc
2E37: 4F          ld   c,a
2E38: 06 08       ld   b,$08
2E3A: DD 7E 0F    ld   a,(ix+$0f)
2E3D: 3C          inc  a
2E3E: C3 08 00    jp   $0008
2E41: DD 36 1C 00 ld   (ix+$1c),$00
2E45: 3A 40 C0    ld   a,($C040)
2E48: DD 77 05    ld   (ix+$05),a
2E4B: FE 3C       cp   $3C
2E4D: 3E 08       ld   a,$08
2E4F: 38 02       jr   c,$2E53
2E51: 3E 18       ld   a,$18
2E53: DD 77 14    ld   (ix+$14),a
2E56: DD 36 02 94 ld   (ix+$02),$94
2E5A: DD 36 01 00 ld   (ix+$01),$00
2E5E: DD 36 04 00 ld   (ix+$04),$00
2E62: DD 36 03 4A ld   (ix+$03),$4A
2E66: DD CB 06 FE set  7,(ix+$06)
2E6A: DD 36 0B 04 ld   (ix+$0b),$04
2E6E: DD 36 0C 06 ld   (ix+$0c),$06
2E72: DD 36 0D 04 ld   (ix+$0d),$04
2E76: DD 36 0E 04 ld   (ix+$0e),$04
2E7A: DD 7E 0F    ld   a,(ix+$0f)
2E7D: DD 77 17    ld   (ix+$17),a
2E80: DD 22 3F C0 ld   ($C03F),ix
2E84: 3A 3D C0    ld   a,($C03D)
2E87: E6 03       and  $03
2E89: 07          rlca
2E8A: 07          rlca
2E8B: 07          rlca
2E8C: 07          rlca
2E8D: DD 77 15    ld   (ix+$15),a
2E90: C9          ret
2E91: 00          nop
2E92: 05          dec  b
2E93: 00          nop
2E94: 00          nop
2E95: 00          nop
2E96: 04          inc  b
2E97: 80          add  a,b
2E98: 01 00 03    ld   bc,$0300
2E9B: 00          nop
2E9C: 03          inc  bc
2E9D: 80          add  a,b
2E9E: 01 00 04    ld   bc,$0400
2EA1: 00          nop
2EA2: 00          nop
2EA3: 00          nop
2EA4: 05          dec  b
2EA5: 80          add  a,b
2EA6: FE 00       cp   $00
2EA8: 04          inc  b
2EA9: 00          nop
2EAA: FD          db   $fd
2EAB: 00          nop
2EAC: 03          inc  bc
2EAD: 80          add  a,b
2EAE: FC 00 02    call m,$0200
2EB1: 00          nop
2EB2: FB          ei
2EB3: 00          nop
2EB4: 00          nop
2EB5: 00          nop
2EB6: FC 00 FE    call m,$FE00
2EB9: 00          nop
2EBA: FD          db   $fd
2EBB: 00          nop
2EBC: FD          db   $fd
2EBD: 00          nop
2EBE: FE 80       cp   $80
2EC0: FB          ei
2EC1: 00          nop
2EC2: 00          nop
2EC3: 80          add  a,b
2EC4: FA 80 02    jp   m,$0280
2EC7: 80          add  a,b
2EC8: FB          ei
2EC9: 00          nop
2ECA: 03          inc  bc
2ECB: 00          nop
2ECC: FD          db   $fd
2ECD: 00          nop
2ECE: 04          inc  b
2ECF: 00          nop
2ED0: FE 34       cp   $34
2ED2: CD 87 33    call $3387
2ED5: 3A 3D C0    ld   a,($C03D)
2ED8: DA CF 04    jp   c,$04CF
2EDB: 11 47 00    ld   de,$0047
2EDE: 21 98 C1    ld   hl,$C198
2EE1: 19          add  hl,de
2EE2: 7E          ld   a,(hl)
2EE3: B7          or   a
2EE4: CA EB 2E    jp   z,$2EEB
2EE7: AF          xor  a
2EE8: 00          nop
2EE9: 00          nop
2EEA: 00          nop
2EEB: DD E5       push ix
2EED: E1          pop  hl
2EEE: 23          inc  hl
2EEF: 36 00       ld   (hl),$00
2EF1: 23          inc  hl
2EF2: 36 A0       ld   (hl),$A0
2EF4: 23          inc  hl
2EF5: 36 02       ld   (hl),$02
2EF7: 23          inc  hl
2EF8: 36 00       ld   (hl),$00
2EFA: 23          inc  hl
2EFB: 3A 40 C0    ld   a,($C040)
2EFE: 77          ld   (hl),a
2EFF: 23          inc  hl
2F00: CB FE       set  7,(hl)
2F02: 23          inc  hl
2F03: 23          inc  hl
2F04: 11 95 34    ld   de,$3495
2F07: 73          ld   (hl),e
2F08: 23          inc  hl
2F09: 72          ld   (hl),d
2F0A: 23          inc  hl
2F0B: 36 00       ld   (hl),$00
2F0D: 23          inc  hl
2F0E: 36 0C       ld   (hl),$0C
2F10: 23          inc  hl
2F11: 36 0C       ld   (hl),$0C
2F13: 23          inc  hl
2F14: 36 0A       ld   (hl),$0A
2F16: 23          inc  hl
2F17: 36 0C       ld   (hl),$0C
2F19: 23          inc  hl
2F1A: 23          inc  hl
2F1B: 3A 3D C0    ld   a,($C03D)
2F1E: E6 01       and  $01
2F20: 07          rlca
2F21: 07          rlca
2F22: 07          rlca
2F23: 07          rlca
2F24: C6 6C       add  a,$6C
2F26: 77          ld   (hl),a
2F27: 23          inc  hl
2F28: 36 00       ld   (hl),$00
2F2A: 23          inc  hl
2F2B: 36 00       ld   (hl),$00
2F2D: 23          inc  hl
2F2E: 36 00       ld   (hl),$00
2F30: DD 36 1C 00 ld   (ix+$1c),$00
2F34: DD 36 1D 00 ld   (ix+$1d),$00
2F38: DD 36 1E 07 ld   (ix+$1e),$07
2F3C: 3A 3F C0    ld   a,($C03F)
2F3F: DD 22 3F C0 ld   ($C03F),ix
2F43: 07          rlca
2F44: 6F          ld   l,a
2F45: 26 00       ld   h,$00
2F47: 11 C9 31    ld   de,$31C9
2F4A: 19          add  hl,de
2F4B: 5E          ld   e,(hl)
2F4C: 23          inc  hl
2F4D: 56          ld   d,(hl)
2F4E: EB          ex   de,hl
2F4F: C3 AD 30    jp   $30AD
2F52: 21 3E C0    ld   hl,$C03E
2F55: CB 46       bit  0,(hl)
2F57: CA D1 2E    jp   z,$2ED1
2F5A: DD 2A 3F C0 ld   ix,($C03F)
2F5E: CD 9B 33    call $339B
2F61: DD CB 06 6E bit  5,(ix+$06)
2F65: C2 9A 2F    jp   nz,$2F9A
2F68: DD CB 06 76 bit  6,(ix+$06)
2F6C: 28 2C       jr   z,$2F9A
2F6E: 3E 0C       ld   a,$0C
2F70: CD 15 08    call $0815
2F73: 11 17 00    ld   de,$0017
2F76: CD 93 03    call $0393
2F79: DD CB 06 B6 res  6,(ix+$06)
2F7D: DD 36 03 0A ld   (ix+$03),$0A
2F81: DD 34 0A    inc  (ix+$0a)
2F84: DD 7E 0A    ld   a,(ix+$0a)
2F87: FE 14       cp   $14
2F89: 38 0F       jr   c,$2F9A
2F8B: DD CB 06 EE set  5,(ix+$06)
2F8F: DD 36 18 00 ld   (ix+$18),$00
2F93: DD CB 06 DE set  3,(ix+$06)
2F97: C3 C9 30    jp   $30C9
2F9A: DD 7E 02    ld   a,(ix+$02)
2F9D: C6 14       add  a,$14
2F9F: FE FC       cp   $FC
2FA1: 38 16       jr   c,$2FB9
2FA3: 3A 3D C0    ld   a,($C03D)
2FA6: CD CF 04    call $04CF
2FA9: DD 36 06 00 ld   (ix+$06),$00
2FAD: DD 7E 10    ld   a,(ix+$10)
2FB0: 06 10       ld   b,$10
2FB2: CD 7A 04    call $047A
2FB5: 3C          inc  a
2FB6: 10 FA       djnz $2FB2
2FB8: C9          ret
2FB9: DD CB 06 6E bit  5,(ix+$06)
2FBD: C2 C9 30    jp   nz,$30C9
2FC0: DD 7E 18    ld   a,(ix+$18)
2FC3: B7          or   a
2FC4: C4 B6 33    call nz,$33B6
2FC7: CD FE 32    call $32FE
2FCA: 4F          ld   c,a
2FCB: DD E5       push ix
2FCD: E1          pop  hl
2FCE: 11 11 00    ld   de,$0011
2FD1: 19          add  hl,de
2FD2: 3A D6 C0    ld   a,($C0D6)
2FD5: 57          ld   d,a
2FD6: E6 06       and  $06
2FD8: CA 52 30    jp   z,$3052
2FDB: 0F          rrca
2FDC: 47          ld   b,a
2FDD: DD 7E 02    ld   a,(ix+$02)
2FE0: D6 06       sub  $06
2FE2: 5F          ld   e,a
2FE3: 79          ld   a,c
2FE4: 10 13       djnz $2FF9
2FE6: E6 1E       and  $1E
2FE8: BE          cp   (hl)
2FE9: 20 5A       jr   nz,$3045
2FEB: 7A          ld   a,d
2FEC: E6 39       and  $39
2FEE: 20 62       jr   nz,$3052
2FF0: DD 7E 05    ld   a,(ix+$05)
2FF3: D6 01       sub  $01
2FF5: 57          ld   d,a
2FF6: C3 2C 30    jp   $302C
2FF9: 23          inc  hl
2FFA: 10 19       djnz $3015
2FFC: 3D          dec  a
2FFD: E6 1F       and  $1F
2FFF: 4F          ld   c,a
3000: E6 1E       and  $1E
3002: BE          cp   (hl)
3003: 20 40       jr   nz,$3045
3005: 7A          ld   a,d
3006: E6 79       and  $79
3008: FE 20       cp   $20
300A: 20 46       jr   nz,$3052
300C: DD 7E 05    ld   a,(ix+$05)
300F: D6 06       sub  $06
3011: 57          ld   d,a
3012: C3 2C 30    jp   $302C
3015: 23          inc  hl
3016: 3C          inc  a
3017: E6 1F       and  $1F
3019: 4F          ld   c,a
301A: E6 1E       and  $1E
301C: BE          cp   (hl)
301D: 20 26       jr   nz,$3045
301F: 7A          ld   a,d
3020: E6 79       and  $79
3022: FE 60       cp   $60
3024: 20 2C       jr   nz,$3052
3026: DD 7E 05    ld   a,(ix+$05)
3029: C6 05       add  a,$05
302B: 57          ld   d,a
302C: CD 92 32    call $3292
302F: 38 21       jr   c,$3052
3031: 3A 43 C2    ld   a,($C243)
3034: 0F          rrca
3035: 0F          rrca
3036: 79          ld   a,c
3037: 3C          inc  a
3038: 30 02       jr   nc,$303C
303A: D6 02       sub  $02
303C: E6 1F       and  $1F
303E: 4F          ld   c,a
303F: CD 92 32    call $3292
3042: C3 52 30    jp   $3052
3045: 79          ld   a,c
3046: 4E          ld   c,(hl)
3047: E5          push hl
3048: CD 60 33    call $3360
304B: E1          pop  hl
304C: 4F          ld   c,a
304D: 96          sub  (hl)
304E: 81          add  a,c
304F: E6 1E       and  $1E
3051: 77          ld   (hl),a
3052: DD 7E 0F    ld   a,(ix+$0f)
3055: DD 6E 01    ld   l,(ix+$01)
3058: DD 66 02    ld   h,(ix+$02)
305B: 11 00 FC    ld   de,$FC00
305E: 19          add  hl,de
305F: EB          ex   de,hl
3060: DD 6E 04    ld   l,(ix+$04)
3063: DD 66 05    ld   h,(ix+$05)
3066: 01 00 FF    ld   bc,$FF00
3069: 09          add  hl,bc
306A: 47          ld   b,a
306B: DD 7E 11    ld   a,(ix+$11)
306E: 0F          rrca
306F: C6 D8       add  a,$D8
3071: 4F          ld   c,a
3072: 78          ld   a,b
3073: 06 02       ld   b,$02
3075: F5          push af
3076: E5          push hl
3077: D5          push de
3078: CF          rst  $08
3079: D1          pop  de
307A: E1          pop  hl
307B: 01 00 FB    ld   bc,$FB00
307E: 09          add  hl,bc
307F: C1          pop  bc
3080: 04          inc  b
3081: DD 7E 12    ld   a,(ix+$12)
3084: 0F          rrca
3085: C6 D8       add  a,$D8
3087: 4F          ld   c,a
3088: 78          ld   a,b
3089: 06 02       ld   b,$02
308B: F5          push af
308C: E5          push hl
308D: D5          push de
308E: CF          rst  $08
308F: D1          pop  de
3090: E1          pop  hl
3091: 01 00 0A    ld   bc,$0A00
3094: 09          add  hl,bc
3095: C1          pop  bc
3096: 04          inc  b
3097: DD 7E 13    ld   a,(ix+$13)
309A: 0F          rrca
309B: C6 D8       add  a,$D8
309D: 4F          ld   c,a
309E: 78          ld   a,b
309F: 06 02       ld   b,$02
30A1: CF          rst  $08
30A2: DD 35 19    dec  (ix+$19)
30A5: 20 22       jr   nz,$30C9
30A7: DD 6E 16    ld   l,(ix+$16)
30AA: DD 66 17    ld   h,(ix+$17)
30AD: 7E          ld   a,(hl)
30AE: E6 03       and  $03
30B0: DD 77 18    ld   (ix+$18),a
30B3: E6 01       and  $01
30B5: 07          rlca
30B6: 07          rlca
30B7: 07          rlca
30B8: 07          rlca
30B9: DD 77 07    ld   (ix+$07),a
30BC: 7E          ld   a,(hl)
30BD: E6 FC       and  $FC
30BF: DD 77 19    ld   (ix+$19),a
30C2: 23          inc  hl
30C3: DD 75 16    ld   (ix+$16),l
30C6: DD 74 17    ld   (ix+$17),h
30C9: DD CB 06 5E bit  3,(ix+$06)
30CD: 28 04       jr   z,$30D3
30CF: DD 36 03 02 ld   (ix+$03),$02
30D3: FD 21 A9 31 ld   iy,$31A9
30D7: DD 7E 18    ld   a,(ix+$18)
30DA: B7          or   a
30DB: 28 0B       jr   z,$30E8
30DD: 3A D6 C0    ld   a,($C0D6)
30E0: E6 04       and  $04
30E2: 28 04       jr   z,$30E8
30E4: FD 21 B9 31 ld   iy,$31B9
30E8: DD 6E 01    ld   l,(ix+$01)
30EB: DD 66 02    ld   h,(ix+$02)
30EE: E5          push hl
30EF: 11 00 08    ld   de,$0800
30F2: 19          add  hl,de
30F3: DD 75 01    ld   (ix+$01),l
30F6: DD 74 02    ld   (ix+$02),h
30F9: DD 6E 04    ld   l,(ix+$04)
30FC: DD 66 05    ld   h,(ix+$05)
30FF: E5          push hl
3100: 11 00 F8    ld   de,$F800
3103: 19          add  hl,de
3104: DD 75 04    ld   (ix+$04),l
3107: DD 74 05    ld   (ix+$05),h
310A: DD 7E 0F    ld   a,(ix+$0f)
310D: F5          push af
310E: DD 7E 10    ld   a,(ix+$10)
3111: DD 77 0F    ld   (ix+$0f),a
3114: CD 9E 1B    call $1B9E
3117: DD 6E 04    ld   l,(ix+$04)
311A: DD 66 05    ld   h,(ix+$05)
311D: 11 00 10    ld   de,$1000
3120: 19          add  hl,de
3121: DD 75 04    ld   (ix+$04),l
3124: DD 74 05    ld   (ix+$05),h
3127: 11 04 00    ld   de,$0004
312A: FD 19       add  iy,de
312C: DD 7E 0F    ld   a,(ix+$0f)
312F: 83          add  a,e
3130: DD 77 0F    ld   (ix+$0f),a
3133: CD 9E 1B    call $1B9E
3136: DD 6E 01    ld   l,(ix+$01)
3139: DD 66 02    ld   h,(ix+$02)
313C: 11 00 F0    ld   de,$F000
313F: 19          add  hl,de
3140: DD 75 01    ld   (ix+$01),l
3143: DD 74 02    ld   (ix+$02),h
3146: DD 6E 04    ld   l,(ix+$04)
3149: DD 66 05    ld   h,(ix+$05)
314C: 19          add  hl,de
314D: DD 75 04    ld   (ix+$04),l
3150: DD 74 05    ld   (ix+$05),h
3153: 11 04 00    ld   de,$0004
3156: FD 19       add  iy,de
3158: DD 7E 0F    ld   a,(ix+$0f)
315B: 83          add  a,e
315C: DD 77 0F    ld   (ix+$0f),a
315F: CD 9E 1B    call $1B9E
3162: DD 6E 04    ld   l,(ix+$04)
3165: DD 66 05    ld   h,(ix+$05)
3168: 11 00 10    ld   de,$1000
316B: 19          add  hl,de
316C: DD 75 04    ld   (ix+$04),l
316F: DD 74 05    ld   (ix+$05),h
3172: 11 04 00    ld   de,$0004
3175: FD 19       add  iy,de
3177: DD 7E 0F    ld   a,(ix+$0f)
317A: 83          add  a,e
317B: DD 77 0F    ld   (ix+$0f),a
317E: CD 9E 1B    call $1B9E
3181: F1          pop  af
3182: DD 77 0F    ld   (ix+$0f),a
3185: E1          pop  hl
3186: DD 75 04    ld   (ix+$04),l
3189: DD 74 05    ld   (ix+$05),h
318C: E1          pop  hl
318D: DD 75 01    ld   (ix+$01),l
3190: DD 74 02    ld   (ix+$02),h
3193: DD 36 03 02 ld   (ix+$03),$02
3197: DD 7E 06    ld   a,(ix+$06)
319A: E6 28       and  $28
319C: C8          ret  z
319D: DD 36 03 08 ld   (ix+$03),$08
31A1: E6 08       and  $08
31A3: C8          ret  z
31A4: DD 36 03 0E ld   (ix+$03),$0E
31A8: C9          ret
31A9: C0          ret  nz
31AA: C1          pop  bc
31AB: C4 C5 C2    call nz,$C2C5
31AE: C3 C6 C7    jp   $C7C6
31B1: C8          ret  z
31B2: C9          ret
31B3: CC CD CA    call z,$CACD
31B6: CB CE       set  1,(hl)
31B8: CF          rst  $08
31B9: D0          ret  nc
31BA: C1          pop  bc
31BB: D1          pop  de
31BC: C5          push bc
31BD: C2 D4 C6    jp   nz,$C6D4
31C0: D5          push de
31C1: D2 C9 D3    jp   nc,$D3C9
31C4: CD CA D6    call $D6CA
31C7: CE D7       adc  a,$D7
31C9: D1          pop  de
31CA: 31 DD 31    ld   sp,$31DD
31CD: E9          jp   (hl)
31CE: 31 F6 31    ld   sp,$31F6
31D1: A1          and  c
31D2: 20 52       jr   nz,$3226
31D4: 20 51       jr   nz,$3227
31D6: 92          sub  d
31D7: 40          ld   b,b
31D8: 72          ld   (hl),d
31D9: 61          ld   h,c
31DA: 40          ld   b,b
31DB: F1          pop  af
31DC: F1          pop  af
31DD: 61          ld   h,c
31DE: 40          ld   b,b
31DF: 92          sub  d
31E0: 31 52 40    ld   sp,$4052
31E3: 41          ld   b,c
31E4: 82          add  a,d
31E5: 20 22       jr   nz,$3209
31E7: F1          pop  af
31E8: F1          pop  af
31E9: 91          sub  c
31EA: 20 92       jr   nz,$317E
31EC: 40          ld   b,b
31ED: 22 21 10    ld   ($1021),hl
31F0: 52          ld   d,d
31F1: 20 32       jr   nz,$3225
31F3: 80          add  a,b
31F4: F1          pop  af
31F5: F1          pop  af
31F6: 3C          inc  a
31F7: 32 3E C0    ld   ($C03E),a
31FA: 3A 2C C2    ld   a,($C22C)
31FD: E6 F0       and  $F0
31FF: 0F          rrca
3200: 0F          rrca
3201: 0F          rrca
3202: 0F          rrca
3203: 4F          ld   c,a
3204: 3A 0A C8    ld   a,($C80A)
3207: E6 0C       and  $0C
3209: 0F          rrca
320A: 0F          rrca
320B: 81          add  a,c
320C: 11 10 00    ld   de,$0010
320F: 21 95 35    ld   hl,$3595
3212: FE 04       cp   $04
3214: 38 03       jr   c,$3219
3216: 21 B5 35    ld   hl,$35B5
3219: DD 36 00 00 ld   (ix+$00),$00
321D: DD 36 03 0E ld   (ix+$03),$0E
3221: DD 36 06 00 ld   (ix+$06),$00
3225: DD 75 08    ld   (ix+$08),l
3228: DD 74 09    ld   (ix+$09),h
322B: DD 36 0B 00 ld   (ix+$0b),$00
322F: DD 36 0C 01 ld   (ix+$0c),$01
3233: DD 36 0D 00 ld   (ix+$0d),$00
3237: DD 36 0E 01 ld   (ix+$0e),$01
323B: DD 19       add  ix,de
323D: 10 DA       djnz $3219
323F: C9          ret
3240: DD 21 2D C6 ld   ix,$C62D
3244: 11 10 00    ld   de,$0010
3247: 06 10       ld   b,$10
3249: 3A 3E C0    ld   a,($C03E)
324C: B7          or   a
324D: 28 A7       jr   z,$31F6
324F: DD 7E 06    ld   a,(ix+$06)
3252: B7          or   a
3253: D9          exx
3254: C4 5D 32    call nz,$325D
3257: D9          exx
3258: DD 19       add  ix,de
325A: 10 F3       djnz $324F
325C: C9          ret
325D: DD CB 06 76 bit  6,(ix+$06)
3261: 20 20       jr   nz,$3283
3263: DD 7E 02    ld   a,(ix+$02)
3266: FE 90       cp   $90
3268: 30 19       jr   nc,$3283
326A: DD 7E 05    ld   a,(ix+$05)
326D: FE 78       cp   $78
326F: 30 12       jr   nc,$3283
3271: CD B6 33    call $33B6
3274: 3A D6 C0    ld   a,($C0D6)
3277: E6 0C       and  $0C
3279: 0F          rrca
327A: 0F          rrca
327B: C6 38       add  a,$38
327D: DD 77 00    ld   (ix+$00),a
3280: C3 02 04    jp   $0402
3283: DD 36 06 00 ld   (ix+$06),$00
3287: DD 36 01 00 ld   (ix+$01),$00
328B: DD 36 04 00 ld   (ix+$04),$00
328F: C3 62 04    jp   $0462
3292: 3A 1F C2    ld   a,($C21F)
3295: E6 82       and  $82
3297: C0          ret  nz
3298: D5          push de
3299: 21 33 C6    ld   hl,$C633
329C: 11 10 00    ld   de,$0010
329F: 06 10       ld   b,$10
32A1: 7E          ld   a,(hl)
32A2: B7          or   a
32A3: 28 06       jr   z,$32AB
32A5: 19          add  hl,de
32A6: 10 F9       djnz $32A1
32A8: D1          pop  de
32A9: 37          scf
32AA: C9          ret
32AB: D1          pop  de
32AC: CB FE       set  7,(hl)
32AE: 23          inc  hl
32AF: 71          ld   (hl),c
32B0: 2B          dec  hl
32B1: 2B          dec  hl
32B2: 72          ld   (hl),d
32B3: 2B          dec  hl
32B4: 2B          dec  hl
32B5: 2B          dec  hl
32B6: 73          ld   (hl),e
32B7: C9          ret
32B8: 06 14       ld   b,$14
32BA: 21 2D C7    ld   hl,$C72D
32BD: 7E          ld   a,(hl)
32BE: B7          or   a
32BF: 20 07       jr   nz,$32C8
32C1: 11 06 00    ld   de,$0006
32C4: 19          add  hl,de
32C5: 10 F6       djnz $32BD
32C7: C9          ret
32C8: 3C          inc  a
32C9: E6 F7       and  $F7
32CB: F6 04       or   $04
32CD: 77          ld   (hl),a
32CE: 23          inc  hl
32CF: 7E          ld   a,(hl)
32D0: 07          rlca
32D1: 30 0F       jr   nc,$32E2
32D3: 36 00       ld   (hl),$00
32D5: 23          inc  hl
32D6: 7E          ld   a,(hl)
32D7: FE F7       cp   $F7
32D9: 20 0B       jr   nz,$32E6
32DB: 2B          dec  hl
32DC: 2B          dec  hl
32DD: 36 00       ld   (hl),$00
32DF: C3 C1 32    jp   $32C1
32E2: 36 80       ld   (hl),$80
32E4: 23          inc  hl
32E5: 35          dec  (hl)
32E6: 2B          dec  hl
32E7: 2B          dec  hl
32E8: E5          push hl
32E9: C5          push bc
32EA: EB          ex   de,hl
32EB: 78          ld   a,b
32EC: 3D          dec  a
32ED: 07          rlca
32EE: 07          rlca
32EF: 6F          ld   l,a
32F0: 01 00 E0    ld   bc,$E000
32F3: 61          ld   h,c
32F4: 09          add  hl,bc
32F5: EB          ex   de,hl
32F6: CD 10 04    call $0410
32F9: C1          pop  bc
32FA: E1          pop  hl
32FB: C3 C1 32    jp   $32C1
32FE: 3A 52 C2    ld   a,($C252)
3301: 67          ld   h,a
3302: 3A 4F C2    ld   a,($C24F)
3305: 6F          ld   l,a
3306: 7D          ld   a,l
3307: DD 5E 02    ld   e,(ix+$02)
330A: DD 56 05    ld   d,(ix+$05)
330D: 93          sub  e
330E: 01 04 01    ld   bc,$0104
3311: 1E 1C       ld   e,$1C
3313: 30 07       jr   nc,$331C
3315: ED 44       neg
3317: 01 0C 02    ld   bc,$020C
331A: 1E 14       ld   e,$14
331C: 6F          ld   l,a
331D: 7C          ld   a,h
331E: 92          sub  d
331F: 30 04       jr   nc,$3325
3321: ED 44       neg
3323: 04          inc  b
3324: 4B          ld   c,e
3325: 5F          ld   e,a
3326: EB          ex   de,hl
3327: 10 FD       djnz $3326
3329: 7D          ld   a,l
332A: BB          cp   e
332B: 30 03       jr   nc,$3330
332D: 06 80       ld   b,$80
332F: EB          ex   de,hl
3330: 7D          ld   a,l
3331: 93          sub  e
3332: 93          sub  e
3333: 30 0D       jr   nc,$3342
3335: 83          add  a,e
3336: 87          add  a,a
3337: 38 1B       jr   c,$3354
3339: 87          add  a,a
333A: 38 18       jr   c,$3354
333C: BB          cp   e
333D: 30 15       jr   nc,$3354
333F: C3 55 33    jp   $3355
3342: 04          inc  b
3343: 6F          ld   l,a
3344: 7B          ld   a,e
3345: BD          cp   l
3346: 30 0C       jr   nc,$3354
3348: 04          inc  b
3349: FE 20       cp   $20
334B: 30 07       jr   nc,$3354
334D: 87          add  a,a
334E: 87          add  a,a
334F: 87          add  a,a
3350: BD          cp   l
3351: 30 01       jr   nc,$3354
3353: 04          inc  b
3354: 04          inc  b
3355: 78          ld   a,b
3356: B7          or   a
3357: F2 5C 33    jp   p,$335C
335A: ED 44       neg
335C: 81          add  a,c
335D: E6 1F       and  $1F
335F: C9          ret
3360: B9          cp   c
3361: C8          ret  z
3362: 47          ld   b,a
3363: A9          xor  c
3364: E6 10       and  $10
3366: 78          ld   a,b
3367: 20 04       jr   nz,$336D
3369: 91          sub  c
336A: C3 7C 33    jp   $337C
336D: B9          cp   c
336E: 38 07       jr   c,$3377
3370: 91          sub  c
3371: FE 10       cp   $10
3373: 3F          ccf
3374: C3 7C 33    jp   $337C
3377: 91          sub  c
3378: ED 44       neg
337A: FE 10       cp   $10
337C: 79          ld   a,c
337D: 38 04       jr   c,$3383
337F: 3C          inc  a
3380: E6 1F       and  $1F
3382: C9          ret
3383: 3D          dec  a
3384: E6 1F       and  $1F
3386: C9          ret
3387: DD 21 6D C4 ld   ix,$C46D
338B: 11 20 00    ld   de,$0020
338E: 06 0E       ld   b,$0E
3390: DD 7E 06    ld   a,(ix+$06)
3393: B7          or   a
3394: C8          ret  z
3395: DD 19       add  ix,de
3397: 10 F7       djnz $3390
3399: 37          scf
339A: C9          ret
339B: 3A 44 C2    ld   a,($C244)
339E: B7          or   a
339F: C8          ret  z
33A0: DD 6E 01    ld   l,(ix+$01)
33A3: DD 66 02    ld   h,(ix+$02)
33A6: 1E 00       ld   e,$00
33A8: CB 3F       srl  a
33AA: CB 1B       rr   e
33AC: 57          ld   d,a
33AD: ED 52       sbc  hl,de
33AF: DD 75 01    ld   (ix+$01),l
33B2: DD 74 02    ld   (ix+$02),h
33B5: C9          ret
33B6: DD 6E 08    ld   l,(ix+$08)
33B9: DD 66 09    ld   h,(ix+$09)
33BC: DD 7E 07    ld   a,(ix+$07)
33BF: 4F          ld   c,a
33C0: E6 07       and  $07
33C2: 07          rlca
33C3: 07          rlca
33C4: 5F          ld   e,a
33C5: 16 00       ld   d,$00
33C7: 19          add  hl,de
33C8: 5E          ld   e,(hl)
33C9: 23          inc  hl
33CA: 56          ld   d,(hl)
33CB: 23          inc  hl
33CC: 7E          ld   a,(hl)
33CD: 23          inc  hl
33CE: 66          ld   h,(hl)
33CF: 6F          ld   l,a
33D0: 79          ld   a,c
33D1: E6 18       and  $18
33D3: 0F          rrca
33D4: 0F          rrca
33D5: CB 0F       rrc  a
33D7: 20 1B       jr   nz,$33F4
33D9: DD 4E 04    ld   c,(ix+$04)
33DC: DD 46 05    ld   b,(ix+$05)
33DF: 09          add  hl,bc
33E0: DD 75 04    ld   (ix+$04),l
33E3: DD 74 05    ld   (ix+$05),h
33E6: DD 6E 01    ld   l,(ix+$01)
33E9: DD 66 02    ld   h,(ix+$02)
33EC: 19          add  hl,de
33ED: DD 75 01    ld   (ix+$01),l
33F0: DD 74 02    ld   (ix+$02),h
33F3: C9          ret
33F4: 47          ld   b,a
33F5: 10 1E       djnz $3415
33F7: EB          ex   de,hl
33F8: DD 4E 04    ld   c,(ix+$04)
33FB: DD 46 05    ld   b,(ix+$05)
33FE: 09          add  hl,bc
33FF: DD 75 04    ld   (ix+$04),l
3402: DD 74 05    ld   (ix+$05),h
3405: DD 6E 01    ld   l,(ix+$01)
3408: DD 66 02    ld   h,(ix+$02)
340B: B7          or   a
340C: ED 52       sbc  hl,de
340E: DD 75 01    ld   (ix+$01),l
3411: DD 74 02    ld   (ix+$02),h
3414: C9          ret
3415: 10 21       djnz $3438
3417: 4D          ld   c,l
3418: 44          ld   b,h
3419: DD 6E 04    ld   l,(ix+$04)
341C: DD 66 05    ld   h,(ix+$05)
341F: B7          or   a
3420: ED 42       sbc  hl,bc
3422: DD 75 04    ld   (ix+$04),l
3425: DD 74 05    ld   (ix+$05),h
3428: DD 6E 01    ld   l,(ix+$01)
342B: DD 66 02    ld   h,(ix+$02)
342E: B7          or   a
342F: ED 52       sbc  hl,de
3431: DD 75 01    ld   (ix+$01),l
3434: DD 74 02    ld   (ix+$02),h
3437: C9          ret
3438: DD 4E 01    ld   c,(ix+$01)
343B: DD 46 02    ld   b,(ix+$02)
343E: 09          add  hl,bc
343F: DD 75 01    ld   (ix+$01),l
3442: DD 74 02    ld   (ix+$02),h
3445: DD 6E 04    ld   l,(ix+$04)
3448: DD 66 05    ld   h,(ix+$05)
344B: B7          or   a
344C: ED 52       sbc  hl,de
344E: DD 75 04    ld   (ix+$04),l
3451: DD 74 05    ld   (ix+$05),h
3454: C9          ret
3455: 1A          ld   a,(de)
3456: 00          nop
3457: 00          nop
3458: 00          nop
3459: 18 00       jr   $345B
345B: 04          inc  b
345C: 00          nop
345D: 16 00       ld   d,$00
345F: 09          add  hl,bc
3460: 00          nop
3461: 14          inc  d
3462: 00          nop
3463: 0D          dec  c
3464: 00          nop
3465: 12          ld   (de),a
3466: 00          nop
3467: 12          ld   (de),a
3468: 00          nop
3469: 0D          dec  c
346A: 00          nop
346B: 14          inc  d
346C: 00          nop
346D: 09          add  hl,bc
346E: 00          nop
346F: 16 00       ld   d,$00
3471: 04          inc  b
3472: 00          nop
3473: 18 00       jr   $3475
3475: 34          inc  (hl)
3476: 00          nop
3477: 00          nop
3478: 00          nop
3479: 30 00       jr   nc,$347B
347B: 09          add  hl,bc
347C: 00          nop
347D: 2C          inc  l
347E: 00          nop
347F: 12          ld   (de),a
3480: 00          nop
3481: 28 00       jr   z,$3483
3483: 1B          dec  de
3484: 00          nop
3485: 24          inc  h
3486: 00          nop
3487: 24          inc  h
3488: 00          nop
3489: 1B          dec  de
348A: 00          nop
348B: 28 00       jr   z,$348D
348D: 12          ld   (de),a
348E: 00          nop
348F: 2C          inc  l
3490: 00          nop
3491: 09          add  hl,bc
3492: 00          nop
3493: 30 00       jr   nc,$3495
3495: 4D          ld   c,l
3496: 00          nop
3497: 00          nop
3498: 00          nop
3499: 47          ld   b,a
349A: 00          nop
349B: 0E 00       ld   c,$00
349D: 41          ld   b,c
349E: 00          nop
349F: 1B          dec  de
34A0: 00          nop
34A1: 3B          dec  sp
34A2: 00          nop
34A3: 28 00       jr   z,$34A5
34A5: 35          dec  (hl)
34A6: 00          nop
34A7: 35          dec  (hl)
34A8: 00          nop
34A9: 28 00       jr   z,$34AB
34AB: 3B          dec  sp
34AC: 00          nop
34AD: 1B          dec  de
34AE: 00          nop
34AF: 41          ld   b,c
34B0: 00          nop
34B1: 0E 00       ld   c,$00
34B3: 47          ld   b,a
34B4: 00          nop
34B5: 66          ld   h,(hl)
34B6: 00          nop
34B7: 00          nop
34B8: 00          nop
34B9: 5E          ld   e,(hl)
34BA: 00          nop
34BB: 12          ld   (de),a
34BC: 00          nop
34BD: 56          ld   d,(hl)
34BE: 00          nop
34BF: 23          inc  hl
34C0: 00          nop
34C1: 4E          ld   c,(hl)
34C2: 00          nop
34C3: 35          dec  (hl)
34C4: 00          nop
34C5: 46          ld   b,(hl)
34C6: 00          nop
34C7: 46          ld   b,(hl)
34C8: 00          nop
34C9: 35          dec  (hl)
34CA: 00          nop
34CB: 4E          ld   c,(hl)
34CC: 00          nop
34CD: 23          inc  hl
34CE: 00          nop
34CF: 56          ld   d,(hl)
34D0: 00          nop
34D1: 12          ld   (de),a
34D2: 00          nop
34D3: 5E          ld   e,(hl)
34D4: 00          nop
34D5: 80          add  a,b
34D6: 00          nop
34D7: 00          nop
34D8: 00          nop
34D9: 76          halt
34DA: 00          nop
34DB: 16 00       ld   d,$00
34DD: 6C          ld   l,h
34DE: 00          nop
34DF: 2C          inc  l
34E0: 00          nop
34E1: 62          ld   h,d
34E2: 00          nop
34E3: 42          ld   b,d
34E4: 00          nop
34E5: 58          ld   e,b
34E6: 00          nop
34E7: 58          ld   e,b
34E8: 00          nop
34E9: 42          ld   b,d
34EA: 00          nop
34EB: 62          ld   h,d
34EC: 00          nop
34ED: 2C          inc  l
34EE: 00          nop
34EF: 6C          ld   l,h
34F0: 00          nop
34F1: 16 00       ld   d,$00
34F3: 76          halt
34F4: 00          nop
34F5: 9A          sbc  a,d
34F6: 00          nop
34F7: 00          nop
34F8: 00          nop
34F9: 8E          adc  a,(hl)
34FA: 00          nop
34FB: 1A          ld   a,(de)
34FC: 00          nop
34FD: 82          add  a,d
34FE: 00          nop
34FF: 35          dec  (hl)
3500: 00          nop
3501: 76          halt
3502: 00          nop
3503: 50          ld   d,b
3504: 00          nop
3505: 6A          ld   l,d
3506: 00          nop
3507: 6A          ld   l,d
3508: 00          nop
3509: 50          ld   d,b
350A: 00          nop
350B: 76          halt
350C: 00          nop
350D: 35          dec  (hl)
350E: 00          nop
350F: 82          add  a,d
3510: 00          nop
3511: 1A          ld   a,(de)
3512: 00          nop
3513: 8E          adc  a,(hl)
3514: 00          nop
3515: B4          or   h
3516: 00          nop
3517: 00          nop
3518: 00          nop
3519: A6          and  (hl)
351A: 00          nop
351B: 1F          rra
351C: 00          nop
351D: 98          sbc  a,b
351E: 00          nop
351F: 3E 00       ld   a,$00
3521: 8A          adc  a,d
3522: 00          nop
3523: 5D          ld   e,l
3524: 00          nop
3525: 7C          ld   a,h
3526: 00          nop
3527: 7C          ld   a,h
3528: 00          nop
3529: 5D          ld   e,l
352A: 00          nop
352B: 8A          adc  a,d
352C: 00          nop
352D: 3E 00       ld   a,$00
352F: 98          sbc  a,b
3530: 00          nop
3531: 1F          rra
3532: 00          nop
3533: A6          and  (hl)
3534: 00          nop
3535: CD 00 00    call $0000
3538: 00          nop
3539: BD          cp   l
353A: 00          nop
353B: 24          inc  h
353C: 00          nop
353D: AD          xor  l
353E: 00          nop
353F: 47          ld   b,a
3540: 00          nop
3541: 9D          sbc  a,l
3542: 00          nop
3543: 6A          ld   l,d
3544: 00          nop
3545: 8D          adc  a,l
3546: 00          nop
3547: 8D          adc  a,l
3548: 00          nop
3549: 6A          ld   l,d
354A: 00          nop
354B: 9D          sbc  a,l
354C: 00          nop
354D: 47          ld   b,a
354E: 00          nop
354F: AD          xor  l
3550: 00          nop
3551: 24          inc  h
3552: 00          nop
3553: BD          cp   l
3554: 00          nop
3555: E6 00       and  $00
3557: 00          nop
3558: 00          nop
3559: D4 00 27    call nc,$2700
355C: 00          nop
355D: C2 00 4F    jp   nz,$4F00
3560: 00          nop
3561: B0          or   b
3562: 00          nop
3563: 77          ld   (hl),a
3564: 00          nop
3565: 9E          sbc  a,(hl)
3566: 00          nop
3567: 9E          sbc  a,(hl)
3568: 00          nop
3569: 77          ld   (hl),a
356A: 00          nop
356B: B0          or   b
356C: 00          nop
356D: 4F          ld   c,a
356E: 00          nop
356F: C2 00 27    jp   nz,$2700
3572: 00          nop
3573: D4 00 00    call nc,$0000
3576: 01 00 00    ld   bc,$0000
3579: EC 00 2C    call pe,$2C00
357C: 00          nop
357D: D8          ret  c
357E: 00          nop
357F: 58          ld   e,b
3580: 00          nop
3581: C4 00 84    call nz,$8400
3584: 00          nop
3585: B0          or   b
3586: 00          nop
3587: B0          or   b
3588: 00          nop
3589: 84          add  a,h
358A: 00          nop
358B: C4 00 58    call nz,$5800
358E: 00          nop
358F: D8          ret  c
3590: 00          nop
3591: 2C          inc  l
3592: 00          nop
3593: EC 00 1A    call pe,$1A00
3596: 01 00 00    ld   bc,$0000
3599: 04          inc  b
359A: 01 31 00    ld   bc,$0031
359D: EE 00       xor  $00
359F: 61          ld   h,c
35A0: 00          nop
35A1: D8          ret  c
35A2: 00          nop
35A3: 92          sub  d
35A4: 00          nop
35A5: C2 00 C2    jp   nz,$C200
35A8: 00          nop
35A9: 92          sub  d
35AA: 00          nop
35AB: D8          ret  c
35AC: 00          nop
35AD: 61          ld   h,c
35AE: 00          nop
35AF: EE 00       xor  $00
35B1: 31 00 04    ld   sp,$0400
35B4: 01 34 01    ld   bc,$0134
35B7: 00          nop
35B8: 00          nop
35B9: 1C          inc  e
35BA: 01 35 00    ld   bc,$0035
35BD: 04          inc  b
35BE: 01 6A 00    ld   bc,$006A
35C1: EC 00 9F    call pe,$9F00
35C4: 00          nop
35C5: D4 00 D4    call nc,$D400
35C8: 00          nop
35C9: 9F          sbc  a,a
35CA: 00          nop
35CB: EC 00 6A    call pe,$6A00
35CE: 00          nop
35CF: 04          inc  b
35D0: 01 35 00    ld   bc,$0035
35D3: 1C          inc  e
35D4: 01 4D 01    ld   bc,$014D
35D7: 00          nop
35D8: 00          nop
35D9: 33          inc  sp
35DA: 01 3A 00    ld   bc,$003A
35DD: 19          add  hl,de
35DE: 01 73 00    ld   bc,$0073
35E1: FF          rst  $38
35E2: 00          nop
35E3: AC          xor  h
35E4: 00          nop
35E5: E5          push hl
35E6: 00          nop
35E7: E5          push hl
35E8: 00          nop
35E9: AC          xor  h
35EA: 00          nop
35EB: E1          pop  hl
35EC: 00          nop
35ED: 73          ld   (hl),e
35EE: 00          nop
35EF: 19          add  hl,de
35F0: 01 3A 00    ld   bc,$003A
35F3: 33          inc  sp
35F4: 01 66 01    ld   bc,$0166
35F7: 00          nop
35F8: 00          nop
35F9: 4A          ld   c,d
35FA: 01 3E 00    ld   bc,$003E
35FD: 2E 01       ld   l,$01
35FF: 7B          ld   a,e
3600: 00          nop
3601: 12          ld   (de),a
3602: 01 B9 00    ld   bc,$00B9
3605: F6 00       or   $00
3607: F6 00       or   $00
3609: B9          cp   c
360A: 00          nop
360B: 12          ld   (de),a
360C: 01 7B 00    ld   bc,$007B
360F: 2E 01       ld   l,$01
3611: 3E 00       ld   a,$00
3613: 4A          ld   c,d
3614: 01 80 01    ld   bc,$0180
3617: 00          nop
3618: 00          nop
3619: 62          ld   h,d
361A: 01 42 00    ld   bc,$0042
361D: 44          ld   b,h
361E: 01 84 00    ld   bc,$0084
3621: 26 01       ld   h,$01
3623: C6 00       add  a,$00
3625: 08          ex   af,af'
3626: 01 08 01    ld   bc,$0108
3629: C6 00       add  a,$00
362B: 26 01       ld   h,$01
362D: 84          add  a,h
362E: 00          nop
362F: 44          ld   b,h
3630: 01 42 00    ld   bc,$0042
3633: 62          ld   h,d
3634: 01 9A 01    ld   bc,$019A
3637: 00          nop
3638: 00          nop
3639: 7A          ld   a,d
363A: 01 46 00    ld   bc,$0046
363D: 5A          ld   e,d
363E: 01 8D 00    ld   bc,$008D
3641: 3A 01 D3    ld   a,($D301)
3644: 00          nop
3645: 1A          ld   a,(de)
3646: 01 1A 01    ld   bc,$011A
3649: D3 00       out  ($00),a
364B: 3A 01 8D    ld   a,($8D01)
364E: 00          nop
364F: 5A          ld   e,d
3650: 01 46 00    ld   bc,$0046
3653: 7A          ld   a,d
3654: 01 B4 01    ld   bc,$01B4
3657: 00          nop
3658: 00          nop
3659: 92          sub  d
365A: 01 4B 00    ld   bc,$004B
365D: 70          ld   (hl),b
365E: 01 96 00    ld   bc,$0096
3661: 4E          ld   c,(hl)
3662: 01 E1 00    ld   bc,$00E1
3665: 2C          inc  l
3666: 01 2C 01    ld   bc,$012C
3669: E1          pop  hl
366A: 00          nop
366B: 4E          ld   c,(hl)
366C: 01 96 00    ld   bc,$0096
366F: 70          ld   (hl),b
3670: 01 4B 00    ld   bc,$004B
3673: 92          sub  d
3674: 01 CD 01    ld   bc,$01CD
3677: 00          nop
3678: 00          nop
3679: A9          xor  c
367A: 01 50 00    ld   bc,$0050
367D: 85          add  a,l
367E: 01 9F 00    ld   bc,$009F
3681: 61          ld   h,c
3682: 01 EE 00    ld   bc,$00EE
3685: 3D          dec  a
3686: 01 3D 01    ld   bc,$013D
3689: EE 00       xor  $00
368B: 61          ld   h,c
368C: 01 9F 00    ld   bc,$009F
368F: 85          add  a,l
3690: 01 50 00    ld   bc,$0050
3693: A9          xor  c
3694: 01 E6 01    ld   bc,$01E6
3697: 00          nop
3698: 00          nop
3699: C0          ret  nz
369A: 01 54 00    ld   bc,$0054
369D: 9A          sbc  a,d
369E: 01 A7 00    ld   bc,$00A7
36A1: 74          ld   (hl),h
36A2: 01 FB 00    ld   bc,$00FB
36A5: 4E          ld   c,(hl)
36A6: 01 4E 01    ld   bc,$014E
36A9: FB          ei
36AA: 00          nop
36AB: 74          ld   (hl),h
36AC: 01 A7 00    ld   bc,$00A7
36AF: 9A          sbc  a,d
36B0: 01 54 00    ld   bc,$0054
36B3: C0          ret  nz
36B4: 01 00 02    ld   bc,$0200
36B7: 00          nop
36B8: 00          nop
36B9: D8          ret  c
36BA: 01 58 00    ld   bc,$0058
36BD: B0          or   b
36BE: 01 B0 00    ld   bc,$00B0
36C1: 88          adc  a,b
36C2: 01 08 01    ld   bc,$0108
36C5: 60          ld   h,b
36C6: 01 60 01    ld   bc,$0160
36C9: 08          ex   af,af'
36CA: 01 88 01    ld   bc,$0188
36CD: B0          or   b
36CE: 00          nop
36CF: B0          or   b
36D0: 01 58 00    ld   bc,$0058
36D3: D8          ret  c
36D4: 01 80 02    ld   bc,$0280
36D7: 00          nop
36D8: 00          nop
36D9: 4E          ld   c,(hl)
36DA: 02          ld   (bc),a
36DB: 6E          ld   l,(hl)
36DC: 00          nop
36DD: 1C          inc  e
36DE: 02          ld   (bc),a
36DF: DC 00 EA    call c,$EA00
36E2: 01 4A 01    ld   bc,$014A
36E5: B8          cp   b
36E6: 01 B8 01    ld   bc,$01B8
36E9: 4A          ld   c,d
36EA: 01 EA 01    ld   bc,$01EA
36ED: DC 00 1C    call c,$1C00
36F0: 02          ld   (bc),a
36F1: 6E          ld   l,(hl)
36F2: 00          nop
36F3: 4E          ld   c,(hl)
36F4: 02          ld   (bc),a
36F5: 60          ld   h,b
36F6: E3          ex   (sp),hl
36F7: F0          ret  p
36F8: A3          and  e
36F9: 39          add  hl,sp
36FA: 60          ld   h,b
36FB: E3          ex   (sp),hl
36FC: F0          ret  p
36FD: BB          cp   e
36FE: 39          add  hl,sp
36FF: 60          ld   h,b
3700: 62          ld   h,d
3701: F0          ret  p
3702: B3          or   e
3703: 39          add  hl,sp
3704: 60          ld   h,b
3705: 23          inc  hl
3706: F6 A7       or   $A7
3708: 39          add  hl,sp
3709: 60          ld   h,b
370A: 23          inc  hl
370B: F6 BB       or   $BB
370D: 39          add  hl,sp
370E: 60          ld   h,b
370F: A2          and  d
3710: F5          push af
3711: B3          or   e
3712: 39          add  hl,sp
3713: 60          ld   h,b
3714: A3          and  e
3715: F2 B2 38    jp   p,$38B2
3718: 60          ld   h,b
3719: 22 F3 B3    ld   ($B3F3),hl
371C: 39          add  hl,sp
371D: 60          ld   h,b
371E: A2          and  d
371F: F5          push af
3720: AB          xor  e
3721: 39          add  hl,sp
3722: 6C          ld   l,h
3723: 55          ld   d,l
3724: F3          di
3725: C4 38 6C    call nz,$6C38
3728: 51          ld   d,c
3729: F2 C9 38    jp   p,$38C9
372C: 6C          ld   l,h
372D: 13          inc  de
372E: F2 0C 39    jp   p,$390C
3731: 6C          ld   l,h
3732: D3 F1       out  ($F1),a
3734: 8C          adc  a,h
3735: 39          add  hl,sp
3736: 64          ld   h,h
3737: 92          sub  d
3738: F2 D6 38    jp   p,$38D6
373B: 94          sub  h
373C: C4 F1 E7    call nz,$E7F1
373F: 38 64       jr   c,$37A5
3741: 82          add  a,d
3742: F2 05 39    jp   p,$3905
3745: 60          ld   h,b
3746: 10 F3       djnz $373B
3748: BD          cp   l
3749: 38 8C       jr   c,$36D7
374B: DE F1       sbc  a,$F1
374D: 1C          inc  e
374E: 39          add  hl,sp
374F: 6C          ld   l,h
3750: 5B          ld   e,e
3751: F0          ret  p
3752: 30 39       jr   nc,$378D
3754: 60          ld   h,b
3755: D9          exx
3756: F0          ret  p
3757: 4D          ld   c,l
3758: 39          add  hl,sp
3759: 60          ld   h,b
375A: D7          rst  $10
375B: F0          ret  p
375C: 51          ld   d,c
375D: 39          add  hl,sp
375E: 60          ld   h,b
375F: D5          push de
3760: F0          ret  p
3761: 55          ld   d,l
3762: 39          add  hl,sp
3763: 60          ld   h,b
3764: D3 F0       out  ($F0),a
3766: 59          ld   e,c
3767: 39          add  hl,sp
3768: 60          ld   h,b
3769: D1          pop  de
376A: F0          ret  p
376B: 5D          ld   e,l
376C: 39          add  hl,sp
376D: 60          ld   h,b
376E: CF          rst  $08
376F: F0          ret  p
3770: 61          ld   h,c
3771: 39          add  hl,sp
3772: 60          ld   h,b
3773: CD F0 65    call $65F0
3776: 39          add  hl,sp
3777: 60          ld   h,b
3778: CB F0       set  6,b
377A: 69          ld   l,c
377B: 39          add  hl,sp
377C: 60          ld   h,b
377D: C9          ret
377E: F0          ret  p
377F: 6D          ld   l,l
3780: 39          add  hl,sp
3781: 60          ld   h,b
3782: 87          add  a,a
3783: F0          ret  p
3784: 71          ld   (hl),c
3785: 39          add  hl,sp
3786: 94          sub  h
3787: 45          ld   b,l
3788: F2 76 39    jp   p,$3976
378B: 94          sub  h
378C: 44          ld   b,h
378D: F2 80 39    jp   p,$3980
3790: 60          ld   h,b
3791: D9          exx
3792: F3          di
3793: 8A          adc  a,d
3794: 39          add  hl,sp
3795: 60          ld   h,b
3796: D7          rst  $10
3797: F3          di
3798: 8A          adc  a,d
3799: 39          add  hl,sp
379A: 60          ld   h,b
379B: D5          push de
379C: F3          di
379D: 8A          adc  a,d
379E: 39          add  hl,sp
379F: 60          ld   h,b
37A0: D3 F3       out  ($F3),a
37A2: 8A          adc  a,d
37A3: 39          add  hl,sp
37A4: 60          ld   h,b
37A5: D1          pop  de
37A6: F3          di
37A7: 8A          adc  a,d
37A8: 39          add  hl,sp
37A9: 60          ld   h,b
37AA: CF          rst  $08
37AB: F3          di
37AC: 8A          adc  a,d
37AD: 39          add  hl,sp
37AE: 60          ld   h,b
37AF: CD F3 8A    call $8AF3
37B2: 39          add  hl,sp
37B3: 60          ld   h,b
37B4: CB F3       set  6,e
37B6: 8A          adc  a,d
37B7: 39          add  hl,sp
37B8: 60          ld   h,b
37B9: C9          ret
37BA: F3          di
37BB: 8A          adc  a,d
37BC: 39          add  hl,sp
37BD: 60          ld   h,b
37BE: C7          rst  $00
37BF: F3          di
37C0: 8A          adc  a,d
37C1: 39          add  hl,sp
37C2: 60          ld   h,b
37C3: D9          exx
37C4: F0          ret  p
37C5: 9E          sbc  a,(hl)
37C6: 39          add  hl,sp
37C7: 60          ld   h,b
37C8: D7          rst  $10
37C9: F0          ret  p
37CA: 9E          sbc  a,(hl)
37CB: 39          add  hl,sp
37CC: 60          ld   h,b
37CD: D5          push de
37CE: F0          ret  p
37CF: 9E          sbc  a,(hl)
37D0: 39          add  hl,sp
37D1: 60          ld   h,b
37D2: D3 F0       out  ($F0),a
37D4: 9E          sbc  a,(hl)
37D5: 39          add  hl,sp
37D6: 60          ld   h,b
37D7: D1          pop  de
37D8: F0          ret  p
37D9: 9E          sbc  a,(hl)
37DA: 39          add  hl,sp
37DB: 60          ld   h,b
37DC: CF          rst  $08
37DD: F0          ret  p
37DE: 9E          sbc  a,(hl)
37DF: 39          add  hl,sp
37E0: 60          ld   h,b
37E1: CD F0 9E    call $9EF0
37E4: 39          add  hl,sp
37E5: 60          ld   h,b
37E6: CB F0       set  6,b
37E8: 9E          sbc  a,(hl)
37E9: 39          add  hl,sp
37EA: 60          ld   h,b
37EB: C9          ret
37EC: F0          ret  p
37ED: 9E          sbc  a,(hl)
37EE: 39          add  hl,sp
37EF: 60          ld   h,b
37F0: 87          add  a,a
37F1: F0          ret  p
37F2: 9E          sbc  a,(hl)
37F3: 39          add  hl,sp
37F4: 6C          ld   l,h
37F5: CD F1 BF    call $BFF1
37F8: 39          add  hl,sp
37F9: 64          ld   h,h
37FA: C9          ret
37FB: F1          pop  af
37FC: C8          ret  z
37FD: 39          add  hl,sp
37FE: 6C          ld   l,h
37FF: 0D          dec  c
3800: F4 DB 39    call p,$39DB
3803: 6C          ld   l,h
3804: 0D          dec  c
3805: F4 E3 39    call p,$39E3
3808: 6C          ld   l,h
3809: 0D          dec  c
380A: F4 EC 39    call p,$39EC
380D: 6C          ld   l,h
380E: CB F1       set  6,c
3810: F5          push af
3811: 39          add  hl,sp
3812: 6C          ld   l,h
3813: CB F1       set  6,c
3815: 08          ex   af,af'
3816: 3A 6C CB    ld   a,($CB6C)
3819: F1          pop  af
381A: 1C          inc  e
381B: 3A 64 89    ld   a,($8964)
381E: F3          di
381F: 30 3A       jr   nc,$385B
3821: 64          ld   h,h
3822: 49          ld   c,c
3823: F3          di
3824: 32 3A 64    ld   ($643A),a
3827: 49          ld   c,c
3828: F3          di
3829: 35          dec  (hl)
382A: 3A 64 49    ld   a,($4964)
382D: F3          di
382E: 38 3A       jr   c,$386A
3830: 6C          ld   l,h
3831: C9          ret
3832: F1          pop  af
3833: 3B          dec  sp
3834: 3A 60 CD    ld   a,($CD60)
3837: F1          pop  af
3838: 44          ld   b,h
3839: 3A 60 CB    ld   a,($CB60)
383C: F1          pop  af
383D: 44          ld   b,h
383E: 3A 60 C9    ld   a,($C960)
3841: F1          pop  af
3842: 44          ld   b,h
3843: 3A 60 00    ld   a,($0060)
3846: F6 59       or   $59
3848: 3A 60 C0    ld   a,($C060)
384B: F5          push af
384C: AB          xor  e
384D: 39          add  hl,sp
384E: 60          ld   h,b
384F: 00          nop
3850: F6 60       or   $60
3852: 3A 60 00    ld   a,($0060)
3855: F6 63       or   $63
3857: 3A 60 9F    ld   a,($9F60)
385A: F4 68 3A    call p,$3A68
385D: 60          ld   h,b
385E: 9D          sbc  a,l
385F: F4 6E 3A    call p,$3A6E
3862: 64          ld   h,h
3863: D9          exx
3864: F0          ret  p
3865: 4D          ld   c,l
3866: 39          add  hl,sp
3867: 64          ld   h,h
3868: D7          rst  $10
3869: F0          ret  p
386A: 51          ld   d,c
386B: 39          add  hl,sp
386C: 64          ld   h,h
386D: D5          push de
386E: F0          ret  p
386F: 55          ld   d,l
3870: 39          add  hl,sp
3871: 64          ld   h,h
3872: D3 F0       out  ($F0),a
3874: 59          ld   e,c
3875: 39          add  hl,sp
3876: 64          ld   h,h
3877: D1          pop  de
3878: F0          ret  p
3879: 5D          ld   e,l
387A: 39          add  hl,sp
387B: 64          ld   h,h
387C: CF          rst  $08
387D: F0          ret  p
387E: 61          ld   h,c
387F: 39          add  hl,sp
3880: 64          ld   h,h
3881: CD F0 65    call $65F0
3884: 39          add  hl,sp
3885: 64          ld   h,h
3886: CB F0       set  6,b
3888: 69          ld   l,c
3889: 39          add  hl,sp
388A: 64          ld   h,h
388B: C9          ret
388C: F0          ret  p
388D: 6D          ld   l,l
388E: 39          add  hl,sp
388F: 64          ld   h,h
3890: 87          add  a,a
3891: F0          ret  p
3892: 71          ld   (hl),c
3893: 39          add  hl,sp
3894: 60          ld   h,b
3895: 12          ld   (de),a
3896: F2 44 3A    jp   p,$3A44
3899: 64          ld   h,h
389A: DE F1       sbc  a,$F1
389C: 75          ld   (hl),l
389D: 3A 50 52    ld   a,($5250)
38A0: 53          ld   d,e
38A1: 60          ld   h,b
38A2: 54          ld   d,h
38A3: 55          ld   d,l
38A4: 56          ld   d,(hl)
38A5: 57          ld   d,a
38A6: 58          ld   e,b
38A7: FF          rst  $38
38A8: 51          ld   d,c
38A9: 52          ld   d,d
38AA: 53          ld   d,e
38AB: 60          ld   h,b
38AC: 54          ld   d,h
38AD: 55          ld   d,l
38AE: 56          ld   d,(hl)
38AF: 57          ld   d,a
38B0: 58          ld   e,b
38B1: FF          rst  $38
38B2: 11 12 10    ld   de,$1012
38B5: 11 2D 1C    ld   de,$1C2D
38B8: 0C          inc  c
38B9: 18 1B       jr   $38D6
38BB: 0E FF       ld   c,$FF
38BD: 0B          dec  bc
38BE: 0A          ld   a,(bc)
38BF: 0D          dec  c
38C0: 2D          dec  l
38C1: 11 20 FF    ld   de,$FF20
38C4: 19          add  hl,de
38C5: 1E 1C       ld   e,$1C
38C7: 11 FF 1C    ld   de,$1CFF
38CA: 1D          dec  e
38CB: 0A          ld   a,(bc)
38CC: 1B          dec  de
38CD: 1D          dec  e
38CE: 2D          dec  l
38CF: 0B          dec  bc
38D0: 1E 1D       ld   e,$1D
38D2: 1D          dec  e
38D3: 18 17       jr   $38EC
38D5: FF          rst  $38
38D6: 10 0A       djnz $38E2
38D8: 16 0E       ld   d,$0E
38DA: 2D          dec  l
38DB: 18 1F       jr   $38FC
38DD: 0E 1B       ld   c,$1B
38DF: FF          rst  $38
38E0: 2E 2D       ld   l,$2D
38E2: 01 09 08    ld   bc,$0809
38E5: 05          dec  b
38E6: FF          rst  $38
38E7: 2E 2D       ld   l,$2D
38E9: 1D          dec  e
38EA: 0A          ld   a,(bc)
38EB: 12          ld   (de),a
38EC: 1D          dec  e
38ED: 18 2D       jr   $391C
38EF: 0C          inc  c
38F0: 18 1B       jr   $390D
38F2: 19          add  hl,de
38F3: 26 01       ld   h,$01
38F5: 09          add  hl,bc
38F6: 08          ex   af,af'
38F7: 05          dec  b
38F8: FF          rst  $38
38F9: 0D          dec  c
38FA: 1E 16       ld   e,$16
38FC: 16 22       ld   d,$22
38FE: FF          rst  $38
38FF: 0D          dec  c
3900: 1E 16       ld   e,$16
3902: 16 22       ld   d,$22
3904: FF          rst  $38
3905: 0C          inc  c
3906: 1B          dec  de
3907: 0E 0D       ld   c,$0D
3909: 12          ld   (de),a
390A: 1D          dec  e
390B: FF          rst  $38
390C: 18 17       jr   $3925
390E: 15          dec  d
390F: 22 2D 18    ld   ($182D),hl
3912: 17          rla
3913: 0E 2D       ld   c,$2D
3915: 19          add  hl,de
3916: 15          dec  d
3917: 0A          ld   a,(bc)
3918: 22 0E 1B    ld   ($1B0E),hl
391B: FF          rst  $38
391C: 1B          dec  de
391D: 0E 1C       ld   c,$1C
391F: 0E 1B       ld   c,$1B
3921: 1F          rra
3922: 0E 2D       ld   c,$2D
3924: 22 18 1E    ld   ($1E18),hl
3927: 1B          dec  de
3928: 2D          dec  l
3929: 17          rla
392A: 0A          ld   a,(bc)
392B: 16 0E       ld   d,$0E
392D: 2D          dec  l
392E: 24          inc  h
392F: FF          rst  $38
3930: 1B          dec  de
3931: 0A          ld   a,(bc)
3932: 17          rla
3933: 14          inc  d
3934: 12          ld   (de),a
3935: 17          rla
3936: 10 2D       djnz $3965
3938: 2D          dec  l
3939: 2D          dec  l
393A: 1C          inc  e
393B: 0C          inc  c
393C: 18 1B       jr   $3959
393E: 0E 2D       ld   c,$2D
3940: 2D          dec  l
3941: 2D          dec  l
3942: 0A          ld   a,(bc)
3943: 1B          dec  de
3944: 0E 0A       ld   c,$0A
3946: 2D          dec  l
3947: 2D          dec  l
3948: 17          rla
3949: 0A          ld   a,(bc)
394A: 16 0E       ld   d,$0E
394C: FF          rst  $38
394D: 01 1C 1D    ld   bc,$1D1C
3950: FF          rst  $38
3951: 02          ld   (bc),a
3952: 17          rla
3953: 0D          dec  c
3954: FF          rst  $38
3955: 03          inc  bc
3956: 1B          dec  de
3957: 0D          dec  c
3958: FF          rst  $38
3959: 04          inc  b
395A: 1D          dec  e
395B: 11 FF 05    ld   de,$05FF
395E: 1D          dec  e
395F: 11 FF 06    ld   de,$06FF
3962: 1D          dec  e
3963: 11 FF 07    ld   de,$07FF
3966: 1D          dec  e
3967: 11 FF 08    ld   de,$08FF
396A: 1D          dec  e
396B: 11 FF 09    ld   de,$09FF
396E: 1D          dec  e
396F: 11 FF 01    ld   de,$01FF
3972: 00          nop
3973: 1D          dec  e
3974: 11 FF 44    ld   de,$44FF
3977: 45          ld   b,l
3978: 48          ld   c,b
3979: 49          ld   c,c
397A: 4C          ld   c,h
397B: 4D          ld   c,l
397C: 2D          dec  l
397D: 3C          inc  a
397E: 30 FF       jr   nc,$397F
3980: 46          ld   b,(hl)
3981: 47          ld   b,a
3982: 4A          ld   c,d
3983: 4B          ld   c,e
3984: 4E          ld   c,(hl)
3985: 4F          ld   c,a
3986: 2D          dec  l
3987: 3D          dec  a
3988: 31 FF 00    ld   sp,$00FF
398B: FF          rst  $38
398C: 18 17       jr   $39A5
398E: 0E 2D       ld   c,$2D
3990: 18 1B       jr   $39AD
3992: 2D          dec  l
3993: 1D          dec  e
3994: 20 18       jr   nz,$39AE
3996: 2D          dec  l
3997: 19          add  hl,de
3998: 15          dec  d
3999: 0A          ld   a,(bc)
399A: 22 0E 1B    ld   ($1B0E),hl
399D: FF          rst  $38
399E: 2D          dec  l
399F: 2D          dec  l
39A0: 2D          dec  l
39A1: 2D          dec  l
39A2: FF          rst  $38
39A3: 01 1E 19    ld   bc,$191E
39A6: FF          rst  $38
39A7: 02          ld   (bc),a
39A8: 1E 19       ld   e,$19
39AA: FF          rst  $38
39AB: 2D          dec  l
39AC: 2D          dec  l
39AD: 2D          dec  l
39AE: 2D          dec  l
39AF: 2D          dec  l
39B0: 2D          dec  l
39B1: 2D          dec  l
39B2: FF          rst  $38
39B3: 2D          dec  l
39B4: 2D          dec  l
39B5: 2D          dec  l
39B6: 2D          dec  l
39B7: 2D          dec  l
39B8: 2D          dec  l
39B9: 00          nop
39BA: FF          rst  $38
39BB: 2D          dec  l
39BC: 2D          dec  l
39BD: 2D          dec  l
39BE: FF          rst  $38
39BF: 22 18 1E    ld   ($1E18),hl
39C2: 2D          dec  l
39C3: 11 0A 1F    ld   de,$1F0A
39C6: 0E FF       ld   c,$FF
39C8: 0B          dec  bc
39C9: 18 17       jr   $39E2
39CB: 1E 1C       ld   e,$1C
39CD: 2D          dec  l
39CE: 2D          dec  l
39CF: 2D          dec  l
39D0: 00          nop
39D1: 00          nop
39D2: 00          nop
39D3: 2D          dec  l
39D4: 19          add  hl,de
39D5: 18 12       jr   $39E9
39D7: 17          rla
39D8: 1D          dec  e
39D9: 1C          inc  e
39DA: FF          rst  $38
39DB: 17          rla
39DC: 18 2D       jr   $3A0B
39DE: 0B          dec  bc
39DF: 18 16       jr   $39F7
39E1: 0B          dec  bc
39E2: FF          rst  $38
39E3: 18 17       jr   $39FC
39E5: 0E 2D       ld   c,$2D
39E7: 0B          dec  bc
39E8: 18 16       jr   $3A00
39EA: 0B          dec  bc
39EB: FF          rst  $38
39EC: 1D          dec  e
39ED: 20 18       jr   nz,$3A07
39EF: 2D          dec  l
39F0: 0B          dec  bc
39F1: 18 16       jr   $3A09
39F3: 0B          dec  bc
39F4: FF          rst  $38
39F5: 0A          ld   a,(bc)
39F6: 17          rla
39F7: 0D          dec  c
39F8: 2D          dec  l
39F9: 17          rla
39FA: 18 2D       jr   $3A29
39FC: 15          dec  d
39FD: 12          ld   (de),a
39FE: 1D          dec  e
39FF: 1D          dec  e
3A00: 15          dec  d
3A01: 0E 2D       ld   c,$2D
3A03: 11 0E 15    ld   de,$150E
3A06: 12          ld   (de),a
3A07: FF          rst  $38
3A08: 0A          ld   a,(bc)
3A09: 17          rla
3A0A: 0D          dec  c
3A0B: 2D          dec  l
3A0C: 18 17       jr   $3A25
3A0E: 0E 2D       ld   c,$2D
3A10: 15          dec  d
3A11: 12          ld   (de),a
3A12: 1D          dec  e
3A13: 1D          dec  e
3A14: 15          dec  d
3A15: 0E 2D       ld   c,$2D
3A17: 11 0E 15    ld   de,$150E
3A1A: 12          ld   (de),a
3A1B: FF          rst  $38
3A1C: 0A          ld   a,(bc)
3A1D: 17          rla
3A1E: 0D          dec  c
3A1F: 2D          dec  l
3A20: 1D          dec  e
3A21: 20 18       jr   nz,$3A3B
3A23: 2D          dec  l
3A24: 15          dec  d
3A25: 12          ld   (de),a
3A26: 1D          dec  e
3A27: 1D          dec  e
3A28: 15          dec  d
3A29: 0E 2D       ld   c,$2D
3A2B: 11 0E 15    ld   de,$150E
3A2E: 12          ld   (de),a
3A2F: FF          rst  $38
3A30: 05          dec  b
3A31: FF          rst  $38
3A32: 01 00 FF    ld   bc,$FF00
3A35: 01 05 FF    ld   bc,$FF05
3A38: 02          ld   (bc),a
3A39: 00          nop
3A3A: FF          rst  $38
3A3B: 17          rla
3A3C: 18 2D       jr   $3A6B
3A3E: 0B          dec  bc
3A3F: 18 17       jr   $3A58
3A41: 1E 1C       ld   e,$1C
3A43: FF          rst  $38
3A44: 2D          dec  l
3A45: 2D          dec  l
3A46: 2D          dec  l
3A47: 2D          dec  l
3A48: 2D          dec  l
3A49: 2D          dec  l
3A4A: 2D          dec  l
3A4B: 2D          dec  l
3A4C: 2D          dec  l
3A4D: 2D          dec  l
3A4E: 2D          dec  l
3A4F: 2D          dec  l
3A50: 2D          dec  l
3A51: 2D          dec  l
3A52: 2D          dec  l
3A53: 2D          dec  l
3A54: 2D          dec  l
3A55: 2D          dec  l
3A56: 2D          dec  l
3A57: 2D          dec  l
3A58: FF          rst  $38
3A59: 00          nop
3A5A: 00          nop
3A5B: 00          nop
3A5C: 00          nop
3A5D: 00          nop
3A5E: 00          nop
3A5F: FF          rst  $38
3A60: 00          nop
3A61: 00          nop
3A62: FF          rst  $38
3A63: 00          nop
3A64: 00          nop
3A65: 00          nop
3A66: 00          nop
3A67: FF          rst  $38
3A68: 00          nop
3A69: 00          nop
3A6A: 00          nop
3A6B: 00          nop
3A6C: 00          nop
3A6D: FF          rst  $38
3A6E: 00          nop
3A6F: 00          nop
3A70: 00          nop
3A71: 00          nop
3A72: 00          nop
3A73: 00          nop
3A74: FF          rst  $38
3A75: 0E 21       ld   c,$21
3A77: 0C          inc  c
3A78: 0E 15       ld   c,$15
3A7A: 15          dec  d
3A7B: 0E 17       ld   c,$17
3A7D: 1D          dec  e
3A7E: 2D          dec  l
3A7F: 19          add  hl,de
3A80: 15          dec  d
3A81: 0A          ld   a,(bc)
3A82: 22 0E 1B    ld   ($1B0E),hl
3A85: 1C          inc  e
3A86: FF          rst  $38
3A87: CD 91 04    call $0491
3A8A: CD B6 05    call $05B6
3A8D: CD 2B 05    call $052B
3A90: 11 9B F0    ld   de,$F09B
3A93: CD AC 3B    call $3BAC
3A96: 11 8C F0    ld   de,$F08C
3A99: CD AC 3B    call $3BAC
3A9C: 21 FA 3B    ld   hl,$3BFA
3A9F: CD D4 3B    call $3BD4
3AA2: 21 09 3C    ld   hl,$3C09
3AA5: CD D4 3B    call $3BD4
3AA8: 21 2A 3C    ld   hl,$3C2A
3AAB: CD D4 3B    call $3BD4
3AAE: 21 33 3C    ld   hl,$3C33
3AB1: CD D4 3B    call $3BD4
3AB4: 21 3C 3C    ld   hl,$3C3C
3AB7: CD D4 3B    call $3BD4
3ABA: 21 57 3C    ld   hl,$3C57
3ABD: CD D4 3B    call $3BD4
3AC0: 21 45 3C    ld   hl,$3C45
3AC3: CD D4 3B    call $3BD4
3AC6: 21 64 3C    ld   hl,$3C64
3AC9: CD D4 3B    call $3BD4
3ACC: 21 85 3C    ld   hl,$3C85
3ACF: CD D4 3B    call $3BD4
3AD2: 21 8E 3C    ld   hl,$3C8E
3AD5: CD D4 3B    call $3BD4
3AD8: 21 A0 3C    ld   hl,$3CA0
3ADB: CD D4 3B    call $3BD4
3ADE: CD 31 05    call $0531
3AE1: CD 2B 00    call $002B
3AE4: 3A 09 C8    ld   a,($C809)
3AE7: 11 1B F1    ld   de,$F11B
3AEA: CD BA 3B    call $3BBA
3AED: 3A 0A C8    ld   a,($C80A)
3AF0: 11 0C F1    ld   de,$F10C
3AF3: CD BA 3B    call $3BBA
3AF6: CD 2B 00    call $002B
3AF9: 3A 09 C8    ld   a,($C809)
3AFC: CB 7F       bit  7,a
3AFE: 21 18 3C    ld   hl,$3C18
3B01: 20 03       jr   nz,$3B06
3B03: 21 21 3C    ld   hl,$3C21
3B06: CD D4 3B    call $3BD4
3B09: 3A 09 C8    ld   a,($C809)
3B0C: CB 6F       bit  5,a
3B0E: 21 C3 3C    ld   hl,$3CC3
3B11: 20 03       jr   nz,$3B16
3B13: 21 B3 3C    ld   hl,$3CB3
3B16: CD D4 3B    call $3BD4
3B19: 3A 09 C8    ld   a,($C809)
3B1C: CB 67       bit  4,a
3B1E: 21 D3 3C    ld   hl,$3CD3
3B21: 20 03       jr   nz,$3B26
3B23: 21 DD 3C    ld   hl,$3CDD
3B26: CD D4 3B    call $3BD4
3B29: 3A 09 C8    ld   a,($C809)
3B2C: CB 5F       bit  3,a
3B2E: 21 ED 3C    ld   hl,$3CED
3B31: 20 03       jr   nz,$3B36
3B33: 21 E7 3C    ld   hl,$3CE7
3B36: CD D4 3B    call $3BD4
3B39: CD 2B 00    call $002B
3B3C: 3A 09 C8    ld   a,($C809)
3B3F: E6 07       and  $07
3B41: FE 07       cp   $07
3B43: 20 08       jr   nz,$3B4D
3B45: 21 F3 3C    ld   hl,$3CF3
3B48: CD D4 3B    call $3BD4
3B4B: 18 24       jr   $3B71
3B4D: 21 76 3C    ld   hl,$3C76
3B50: CD D4 3B    call $3BD4
3B53: 3A 09 C8    ld   a,($C809)
3B56: E6 07       and  $07
3B58: 87          add  a,a
3B59: 5F          ld   e,a
3B5A: 16 00       ld   d,$00
3B5C: 21 EC 3B    ld   hl,$3BEC
3B5F: 19          add  hl,de
3B60: EB          ex   de,hl
3B61: 2A 05 C2    ld   hl,($C205)
3B64: 01 16 F2    ld   bc,$F216
3B67: 09          add  hl,bc
3B68: 1A          ld   a,(de)
3B69: 77          ld   (hl),a
3B6A: 13          inc  de
3B6B: 01 80 01    ld   bc,$0180
3B6E: 09          add  hl,bc
3B6F: 1A          ld   a,(de)
3B70: 77          ld   (hl),a
3B71: CD 2B 00    call $002B
3B74: 3A 0A C8    ld   a,($C80A)
3B77: CB 67       bit  4,a
3B79: 21 03 3D    ld   hl,$3D03
3B7C: 28 03       jr   z,$3B81
3B7E: 21 14 3D    ld   hl,$3D14
3B81: CD D4 3B    call $3BD4
3B84: CD 2B 00    call $002B
3B87: 3A 0A C8    ld   a,($C80A)
3B8A: 0F          rrca
3B8B: 0F          rrca
3B8C: E6 03       and  $03
3B8E: 2A 05 C2    ld   hl,($C205)
3B91: 11 C8 F6    ld   de,$F6C8
3B94: 19          add  hl,de
3B95: 77          ld   (hl),a
3B96: CD B0 0D    call $0DB0
3B99: 2A 05 C2    ld   hl,($C205)
3B9C: 11 C6 F6    ld   de,$F6C6
3B9F: 19          add  hl,de
3BA0: 77          ld   (hl),a
3BA1: 3A 09 C8    ld   a,($C809)
3BA4: E6 40       and  $40
3BA6: C2 E1 3A    jp   nz,$3AE1
3BA9: C3 00 00    jp   $0000
3BAC: 2A 05 C2    ld   hl,($C205)
3BAF: 19          add  hl,de
3BB0: 3E 01       ld   a,$01
3BB2: 06 08       ld   b,$08
3BB4: 77          ld   (hl),a
3BB5: 3C          inc  a
3BB6: 2B          dec  hl
3BB7: 10 FB       djnz $3BB4
3BB9: C9          ret
3BBA: 2A 05 C2    ld   hl,($C205)
3BBD: 19          add  hl,de
3BBE: 4F          ld   c,a
3BBF: 06 08       ld   b,$08
3BC1: CB 01       rlc  c
3BC3: 11 E8 3C    ld   de,$3CE8
3BC6: 38 03       jr   c,$3BCB
3BC8: 11 EE 3C    ld   de,$3CEE
3BCB: E5          push hl
3BCC: CD DD 3B    call $3BDD
3BCF: E1          pop  hl
3BD0: 2B          dec  hl
3BD1: 10 EE       djnz $3BC1
3BD3: C9          ret
3BD4: 5E          ld   e,(hl)
3BD5: 23          inc  hl
3BD6: 56          ld   d,(hl)
3BD7: EB          ex   de,hl
3BD8: ED 4B 05 C2 ld   bc,($C205)
3BDC: 09          add  hl,bc
3BDD: 13          inc  de
3BDE: 1A          ld   a,(de)
3BDF: FE FF       cp   $FF
3BE1: C8          ret  z
3BE2: 77          ld   (hl),a
3BE3: 3E 40       ld   a,$40
3BE5: 85          add  a,l
3BE6: 6F          ld   l,a
3BE7: 30 F4       jr   nc,$3BDD
3BE9: 24          inc  h
3BEA: 18 F1       jr   $3BDD
3BEC: 01 01 01    ld   bc,$0101
3BEF: 02          ld   (bc),a
3BF0: 01 03 02    ld   bc,$0203
3BF3: 01 02 03    ld   bc,$0302
3BF6: 03          inc  bc
3BF7: 01 03 01    ld   bc,$0103
3BFA: 5D          ld   e,l
3BFB: F2 0D 12    jp   p,$120D
3BFE: 19          add  hl,de
3BFF: 2D          dec  l
3C00: 1C          inc  e
3C01: 20 12       jr   nz,$3C15
3C03: 1D          dec  e
3C04: 0C          inc  c
3C05: 11 2D 01    ld   de,$012D
3C08: FF          rst  $38
3C09: 4E          ld   c,(hl)
3C0A: F2 0D 12    jp   p,$120D
3C0D: 19          add  hl,de
3C0E: 2D          dec  l
3C0F: 1C          inc  e
3C10: 20 12       jr   nz,$3C24
3C12: 1D          dec  e
3C13: 0C          inc  c
3C14: 11 2D 02    ld   de,$022D
3C17: FF          rst  $38
3C18: 9B          sbc  a,e
3C19: F5          push af
3C1A: 2D          dec  l
3C1B: 2D          dec  l
3C1C: 0F          rrca
3C1D: 0A          ld   a,(bc)
3C1E: 1C          inc  e
3C1F: 1D          dec  e
3C20: FF          rst  $38
3C21: 9B          sbc  a,e
3C22: F5          push af
3C23: 17          rla
3C24: 18 1B       jr   $3C41
3C26: 16 0A       ld   d,$0A
3C28: 15          dec  d
3C29: FF          rst  $38
3C2A: 0C          inc  c
3C2B: F2 1E 17    jp   p,$171E
3C2E: 1E 1C       ld   e,$1C
3C30: 0E 0D       ld   c,$0D
3C32: FF          rst  $38
3C33: 0B          dec  bc
3C34: F2 1E 17    jp   p,$171E
3C37: 1E 1C       ld   e,$1C
3C39: 0E 0D       ld   c,$0D
3C3B: FF          rst  $38
3C3C: 0A          ld   a,(bc)
3C3D: F2 1E 17    jp   p,$171E
3C40: 1E 1C       ld   e,$1C
3C42: 0E 0D       ld   c,$0D
3C44: FF          rst  $38
3C45: 1A          ld   a,(de)
3C46: F2 0D 12    jp   p,$120D
3C49: 19          add  hl,de
3C4A: 2D          dec  l
3C4B: 1C          inc  e
3C4C: 20 12       jr   nz,$3C60
3C4E: 1D          dec  e
3C4F: 0C          inc  c
3C50: 11 2D 1D    ld   de,$1D2D
3C53: 0E 1C       ld   c,$1C
3C55: 1D          dec  e
3C56: FF          rst  $38
3C57: 1B          dec  de
3C58: F2 11 0E    jp   p,$0E11
3C5B: 1B          dec  de
3C5C: 18 2D       jr   $3C8B
3C5E: 1C          inc  e
3C5F: 19          add  hl,de
3C60: 0E 0E       ld   c,$0E
3C62: 0D          dec  c
3C63: FF          rst  $38
3C64: 17          rla
3C65: F2 0A 0D    jp   p,$0D0A
3C68: 1F          rra
3C69: 0E 1B       ld   c,$1B
3C6B: 1D          dec  e
3C6C: 12          ld   (de),a
3C6D: 1C          inc  e
3C6E: 0E 2D       ld   c,$2D
3C70: 1C          inc  e
3C71: 18 1E       jr   $3C91
3C73: 17          rla
3C74: 0D          dec  c
3C75: FF          rst  $38
3C76: 56          ld   d,(hl)
3C77: F2 0C 18    jp   p,$180C
3C7A: 12          ld   (de),a
3C7B: 17          rla
3C7C: 2D          dec  l
3C7D: 2D          dec  l
3C7E: 0C          inc  c
3C7F: 1B          dec  de
3C80: 0E 0D       ld   c,$0D
3C82: 12          ld   (de),a
3C83: 1D          dec  e
3C84: FF          rst  $38
3C85: 09          add  hl,bc
3C86: F2 0E 21    jp   p,$210E
3C89: 0C          inc  c
3C8A: 0E 17       ld   c,$17
3C8C: 1D          dec  e
3C8D: FF          rst  $38
3C8E: 08          ex   af,af'
3C8F: F2 10 0A    jp   p,$0A10
3C92: 16 0E       ld   d,$0E
3C94: 2D          dec  l
3C95: 0D          dec  c
3C96: 12          ld   (de),a
3C97: 0F          rrca
3C98: 0F          rrca
3C99: 12          ld   (de),a
3C9A: 0C          inc  c
3C9B: 1E 15       ld   e,$15
3C9D: 1D          dec  e
3C9E: 22 FF 06    ld   ($06FF),hl
3CA1: F2 17 1E    jp   p,$1E17
3CA4: 16 0B       ld   d,$0B
3CA6: 0E 1B       ld   c,$1B
3CA8: 2D          dec  l
3CA9: 18 0F       jr   $3CBA
3CAB: 2D          dec  l
3CAC: 11 0E 1B    ld   de,$1B0E
3CAF: 18 0E       jr   $3CBF
3CB1: 1C          inc  e
3CB2: FF          rst  $38
3CB3: 19          add  hl,de
3CB4: F2 17 18    jp   p,$1817
3CB7: 1B          dec  de
3CB8: 16 0A       ld   d,$0A
3CBA: 15          dec  d
3CBB: 2D          dec  l
3CBC: 1C          inc  e
3CBD: 0C          inc  c
3CBE: 1B          dec  de
3CBF: 0E 0E       ld   c,$0E
3CC1: 17          rla
3CC2: FF          rst  $38
3CC3: 19          add  hl,de
3CC4: F2 12 17    jp   p,$1712
3CC7: 1F          rra
3CC8: 0E 1B       ld   c,$1B
3CCA: 1D          dec  e
3CCB: 2D          dec  l
3CCC: 1C          inc  e
3CCD: 0C          inc  c
3CCE: 1B          dec  de
3CCF: 0E 0E       ld   c,$0E
3CD1: 17          rla
3CD2: FF          rst  $38
3CD3: 18 F2       jr   $3CC7
3CD5: 1E 19       ld   e,$19
3CD7: 1B          dec  de
3CD8: 12          ld   (de),a
3CD9: 10 11       djnz $3CEC
3CDB: 1D          dec  e
3CDC: FF          rst  $38
3CDD: 18 F2       jr   $3CD1
3CDF: 1D          dec  e
3CE0: 0A          ld   a,(bc)
3CE1: 0B          dec  bc
3CE2: 15          dec  d
3CE3: 0E 2D       ld   c,$2D
3CE5: 2D          dec  l
3CE6: FF          rst  $38
3CE7: 97          sub  a
3CE8: F6 18       or   $18
3CEA: 17          rla
3CEB: 2D          dec  l
3CEC: FF          rst  $38
3CED: 97          sub  a
3CEE: F6 18       or   $18
3CF0: 0F          rrca
3CF1: 0F          rrca
3CF2: FF          rst  $38
3CF3: 16 F2       ld   d,$F2
3CF5: 0F          rrca
3CF6: 1B          dec  de
3CF7: 0E 0E       ld   c,$0E
3CF9: 2D          dec  l
3CFA: 19          add  hl,de
3CFB: 15          dec  d
3CFC: 0A          ld   a,(bc)
3CFD: 22 2D 2D    ld   ($2D2D),hl
3D00: 2D          dec  l
3D01: 2D          dec  l
3D02: FF          rst  $38
3D03: C9          ret
3D04: F3          di
3D05: 02          ld   (bc),a
3D06: 00          nop
3D07: 00          nop
3D08: 00          nop
3D09: 00          nop
3D0A: 2D          dec  l
3D0B: 29          add  hl,hl
3D0C: 2D          dec  l
3D0D: 08          ex   af,af'
3D0E: 00          nop
3D0F: 00          nop
3D10: 00          nop
3D11: 00          nop
3D12: 2D          dec  l
3D13: FF          rst  $38
3D14: C9          ret
3D15: F3          di
3D16: 05          dec  b
3D17: 00          nop
3D18: 00          nop
3D19: 00          nop
3D1A: 00          nop
3D1B: 2D          dec  l
3D1C: 29          add  hl,hl
3D1D: 2D          dec  l
3D1E: 01 02 00    ld   bc,$0002
3D21: 00          nop
3D22: 00          nop
3D23: 00          nop
3D24: FF          rst  $38
3D25: 21 3E C0    ld   hl,$C03E
3D28: CB 7E       bit  7,(hl)
3D2A: 20 65       jr   nz,$3D91
3D2C: 3A 3F C0    ld   a,($C03F)
3D2F: FE 07       cp   $07
3D31: 20 0A       jr   nz,$3D3D
3D33: 3E 0D       ld   a,$0D
3D35: CD 15 08    call $0815
3D38: 21 3E C0    ld   hl,$C03E
3D3B: 3E 07       ld   a,$07
3D3D: 4F          ld   c,a
3D3E: F6 80       or   $80
3D40: 77          ld   (hl),a
3D41: CD 87 33    call $3387
3D44: DA 8F 3E    jp   c,$3E8F
3D47: 3A 40 C0    ld   a,($C040)
3D4A: 08          ex   af,af'
3D4B: DD 22 3F C0 ld   ($C03F),ix
3D4F: 2A 3F C0    ld   hl,($C03F)
3D52: EB          ex   de,hl
3D53: 21 95 3E    ld   hl,$3E95
3D56: 79          ld   a,c
3D57: 07          rlca
3D58: 07          rlca
3D59: 07          rlca
3D5A: 07          rlca
3D5B: 81          add  a,c
3D5C: 4F          ld   c,a
3D5D: 06 00       ld   b,$00
3D5F: 09          add  hl,bc
3D60: 01 0F 00    ld   bc,$000F
3D63: ED B0       ldir
3D65: 7E          ld   a,(hl)
3D66: DD 77 1D    ld   (ix+$1d),a
3D69: 23          inc  hl
3D6A: 7E          ld   a,(hl)
3D6B: DD 77 1E    ld   (ix+$1e),a
3D6E: DD 36 17 00 ld   (ix+$17),$00
3D72: DD 36 1C FF ld   (ix+$1c),$FF
3D76: 08          ex   af,af'
3D77: 4F          ld   c,a
3D78: 3A 3E C0    ld   a,($C03E)
3D7B: FE 86       cp   $86
3D7D: 30 0B       jr   nc,$3D8A
3D7F: E6 02       and  $02
3D81: 20 07       jr   nz,$3D8A
3D83: DD 71 02    ld   (ix+$02),c
3D86: CD 9B 33    call $339B
3D89: C9          ret
3D8A: DD 71 05    ld   (ix+$05),c
3D8D: CD 9B 33    call $339B
3D90: C9          ret
3D91: 7E          ld   a,(hl)
3D92: FE 80       cp   $80
3D94: 20 0F       jr   nz,$3DA5
3D96: DD 2A 3F C0 ld   ix,($C03F)
3D9A: DD CB 06 76 bit  6,(ix+$06)
3D9E: 28 05       jr   z,$3DA5
3DA0: 3E 06       ld   a,$06
3DA2: CD 15 08    call $0815
3DA5: CD E2 2A    call $2AE2
3DA8: 21 3E C0    ld   hl,$C03E
3DAB: 7E          ld   a,(hl)
3DAC: E6 07       and  $07
3DAE: FE 07       cp   $07
3DB0: CA 4B 3E    jp   z,$3E4B
3DB3: FE 06       cp   $06
3DB5: CA 33 3E    jp   z,$3E33
3DB8: CB 57       bit  2,a
3DBA: 20 5E       jr   nz,$3E1A
3DBC: 0F          rrca
3DBD: 38 5B       jr   c,$3E1A
3DBF: 0F          rrca
3DC0: 30 19       jr   nc,$3DDB
3DC2: DD 7E 08    ld   a,(ix+$08)
3DC5: B7          or   a
3DC6: 28 0E       jr   z,$3DD6
3DC8: 4F          ld   c,a
3DC9: 3A D6 C0    ld   a,($C0D6)
3DCC: 0F          rrca
3DCD: 38 01       jr   c,$3DD0
3DCF: 0D          dec  c
3DD0: DD 71 08    ld   (ix+$08),c
3DD3: C3 A0 03    jp   $03A0
3DD6: 21 3E C0    ld   hl,$C03E
3DD9: CB 8E       res  1,(hl)
3DDB: DD 6E 04    ld   l,(ix+$04)
3DDE: DD 66 05    ld   h,(ix+$05)
3DE1: DD 5E 09    ld   e,(ix+$09)
3DE4: DD 56 0A    ld   d,(ix+$0a)
3DE7: 19          add  hl,de
3DE8: DD 75 04    ld   (ix+$04),l
3DEB: DD 74 05    ld   (ix+$05),h
3DEE: 7C          ld   a,h
3DEF: 21 F0 FF    ld   hl,$FFF0
3DF2: 19          add  hl,de
3DF3: DD 75 09    ld   (ix+$09),l
3DF6: DD 74 0A    ld   (ix+$0a),h
3DF9: 08          ex   af,af'
3DFA: CD A0 03    call $03A0
3DFD: 08          ex   af,af'
3DFE: CB 27       sla  a
3E00: 38 0F       jr   c,$3E11
3E02: FE F0       cp   $F0
3E04: D8          ret  c
3E05: DD 7E 0F    ld   a,(ix+$0f)
3E08: 3C          inc  a
3E09: CD 7A 04    call $047A
3E0C: C6 02       add  a,$02
3E0E: C3 7A 04    jp   $047A
3E11: FE F0       cp   $F0
3E13: 38 73       jr   c,$3E88
3E15: DD 7E 0F    ld   a,(ix+$0f)
3E18: 18 EF       jr   $3E09
3E1A: DD 7E 0A    ld   a,(ix+$0a)
3E1D: B7          or   a
3E1E: 28 0E       jr   z,$3E2E
3E20: 4F          ld   c,a
3E21: 3A D6 C0    ld   a,($C0D6)
3E24: 0F          rrca
3E25: 38 01       jr   c,$3E28
3E27: 0D          dec  c
3E28: DD 71 0A    ld   (ix+$0a),c
3E2B: CD B6 33    call $33B6
3E2E: DD 7E 05    ld   a,(ix+$05)
3E31: 18 C6       jr   $3DF9
3E33: CD 70 3E    call $3E70
3E36: 3A D6 C0    ld   a,($C0D6)
3E39: E6 03       and  $03
3E3B: C2 A0 03    jp   nz,$03A0
3E3E: 21 C0 FF    ld   hl,$FFC0
3E41: 19          add  hl,de
3E42: DD 75 09    ld   (ix+$09),l
3E45: DD 74 0A    ld   (ix+$0a),h
3E48: C3 A0 03    jp   $03A0
3E4B: CD 70 3E    call $3E70
3E4E: CD A0 03    call $03A0
3E51: DD 7E 02    ld   a,(ix+$02)
3E54: C6 F8       add  a,$F8
3E56: 57          ld   d,a
3E57: DD 5E 01    ld   e,(ix+$01)
3E5A: DD 7E 05    ld   a,(ix+$05)
3E5D: C6 08       add  a,$08
3E5F: 67          ld   h,a
3E60: DD 6E 04    ld   l,(ix+$04)
3E63: 0E 9C       ld   c,$9C
3E65: DD 46 03    ld   b,(ix+$03)
3E68: DD 7E 0F    ld   a,(ix+$0f)
3E6B: C6 04       add  a,$04
3E6D: C3 08 00    jp   $0008
3E70: DD 6E 01    ld   l,(ix+$01)
3E73: DD 66 02    ld   h,(ix+$02)
3E76: DD 5E 09    ld   e,(ix+$09)
3E79: DD 56 0A    ld   d,(ix+$0a)
3E7C: 19          add  hl,de
3E7D: DD 75 01    ld   (ix+$01),l
3E80: DD 74 02    ld   (ix+$02),h
3E83: DD 36 1C 00 ld   (ix+$1c),$00
3E87: C9          ret
3E88: CD 31 04    call $0431
3E8B: DD 36 06 00 ld   (ix+$06),$00
3E8F: 3A 3D C0    ld   a,($C03D)
3E92: C3 CF 04    jp   $04CF
3E95: 30 00       jr   nc,$3E97


3F1D: 21 3E C0    ld   hl,$C03E
3F20: CB 46       bit  0,(hl)
3F22: 20 75       jr   nz,$3F99
3F24: 34          inc  (hl)
3F25: 3A 3F C0    ld   a,($C03F)
3F28: FE 81       cp   $81
3F2A: 28 5D       jr   z,$3F89
3F2C: CD 87 33    call $3387
3F2F: DA 8F 3E    jp   c,$3E8F
3F32: 3A 40 C0    ld   a,($C040)
3F35: DD 77 05    ld   (ix+$05),a
3F38: 3A 3F C0    ld   a,($C03F)
3F3B: 47          ld   b,a
3F3C: 17          rla
3F3D: DA C0 3F    jp   c,$3FC0
3F40: 4F          ld   c,a
3F41: 07          rlca
3F42: 07          rlca
3F43: 81          add  a,c
3F44: 80          add  a,b
3F45: DD 22 3F C0 ld   ($C03F),ix
3F49: 2A 3F C0    ld   hl,($C03F)
3F4C: EB          ex   de,hl
3F4D: 21 FF 3F    ld   hl,$3FFF
3F50: 4F          ld   c,a
3F51: 06 00       ld   b,$00
3F53: 09          add  hl,bc
3F54: ED A0       ldi
3F56: AF          xor  a
3F57: 12          ld   (de),a
3F58: 13          inc  de
3F59: ED A0       ldi
3F5B: ED A0       ldi
3F5D: EB          ex   de,hl
3F5E: 77          ld   (hl),a
3F5F: 23          inc  hl
3F60: 23          inc  hl
3F61: 36 80       ld   (hl),$80
3F63: 0E 04       ld   c,$04
3F65: 06 00       ld   b,$00
3F67: 09          add  hl,bc
3F68: EB          ex   de,hl
3F69: ED A0       ldi
3F6B: ED A0       ldi
3F6D: ED A0       ldi
3F6F: ED A0       ldi
3F71: ED A0       ldi
3F73: 7E          ld   a,(hl)
3F74: DD 77 1D    ld   (ix+$1d),a
3F77: 23          inc  hl
3F78: 7E          ld   a,(hl)
3F79: DD 77 1E    ld   (ix+$1e),a
3F7C: 23          inc  hl
3F7D: 7E          ld   a,(hl)
3F7E: DD 77 1C    ld   (ix+$1c),a
3F81: DD 36 17 00 ld   (ix+$17),$00
3F85: CD 9B 33    call $339B
3F88: C9          ret
3F89: DD 21 6D C2 ld   ix,$C26D
3F8D: DD CB 06 7E bit  7,(ix+$06)
3F91: 28 02       jr   z,$3F95
3F93: 35          dec  (hl)
3F94: C9          ret
3F95: CB F6       set  6,(hl)
3F97: 18 99       jr   $3F32
3F99: CB 7E       bit  7,(hl)
3F9B: 20 34       jr   nz,$3FD1
3F9D: CD E2 2A    call $2AE2
3FA0: DD 7E 0A    ld   a,(ix+$0a)
3FA3: B7          or   a
3FA4: CA A0 03    jp   z,$03A0
3FA7: 08          ex   af,af'
3FA8: CD 02 04    call $0402
3FAB: 08          ex   af,af'
3FAC: 3D          dec  a
3FAD: C8          ret  z
3FAE: 3D          dec  a
3FAF: DD 7E 00    ld   a,(ix+$00)
3FB2: 28 06       jr   z,$3FBA
3FB4: 21 FF 2C    ld   hl,$2CFF
3FB7: C3 A1 2C    jp   $2CA1
3FBA: 21 F7 2C    ld   hl,$2CF7
3FBD: C3 A1 2C    jp   $2CA1
3FC0: CB FE       set  7,(hl)
3FC2: DD 77 07    ld   (ix+$07),a
3FC5: 21 E7 3F    ld   hl,$3FE7
3FC8: 4F          ld   c,a
3FC9: 06 00       ld   b,$00
3FCB: 09          add  hl,bc
3FCC: 7E          ld   a,(hl)
3FCD: 23          inc  hl
3FCE: 66          ld   h,(hl)
3FCF: 6F          ld   l,a
3FD0: E9          jp   (hl)
3FD1: CB 76       bit  6,(hl)
3FD3: 20 0C       jr   nz,$3FE1
3FD5: DD 2A 3F C0 ld   ix,($C03F)
3FD9: DD 4E 07    ld   c,(ix+$07)
3FDC: 21 F3 3F    ld   hl,$3FF3
3FDF: 18 E8       jr   $3FC9
3FE1: DD 21 6D C2 ld   ix,$C26D
3FE5: 18 F2       jr   $3FD9
3FE7: FC 40 A8    call m,$A840
3FEA: 42          ld   b,d
3FEB: FE 41       cp   $41
3FED: 71          ld   (hl),c
3FEE: 44          ld   b,h
3FEF: E0          ret  po
3FF0: 43          ld   b,e
3FF1: 30 45       jr   nc,$4038
3FF3: 33          inc  sp
3FF4: 41          ld   b,c
3FF5: D1          pop  de
3FF6: 42          ld   b,d
3FF7: 2E 42       ld   l,$42
3FF9: A4          and  h
3FFA: 44          ld   b,h
3FFB: 35          dec  (hl)
3FFC: 44          ld   b,h
3FFD: 3C          inc  a
3FFE: 45          ld   b,l
3FFF: 30 97       jr   nc,$3F98
4001: 4A          ld   c,d
4002: 00          nop
4003: 06 05       ld   b,$05
4005: 05          dec  b
4006: 05          dec  b
4007: 10 00       djnz $4009
4009: FF          rst  $38
400A: 34          inc  (hl)
400B: 97          sub  a
400C: 4A          ld   c,d
400D: 00          nop
400E: 06 05       ld   b,$05
4010: 05          dec  b
4011: 05          dec  b
4012: 10 00       djnz $4014
4014: FF          rst  $38
4015: 38 97       jr   c,$3FAE
4017: 4A          ld   c,d
4018: 00          nop
4019: 06 05       ld   b,$05
401B: 05          dec  b
401C: 05          dec  b
401D: 10 00       djnz $401F
401F: FF          rst  $38
4020: 3C          inc  a
4021: 97          sub  a
4022: 4A          ld   c,d
4023: 00          nop
4024: 06 05       ld   b,$05
4026: 05          dec  b
4027: 05          dec  b
4028: 10 00       djnz $402A
402A: FF          rst  $38
402B: 52          ld   d,d
402C: 94          sub  h
402D: 4E          ld   c,(hl)
402E: 01 04 04    ld   bc,$0404
4031: 04          inc  b
4032: 04          inc  b
4033: 05          dec  b
4034: 00          nop
4035: 00          nop
4036: 53          ld   d,e
4037: 94          sub  h
4038: 4E          ld   c,(hl)
4039: 01 04 04    ld   bc,$0404
403C: 04          inc  b
403D: 04          inc  b
403E: 05          dec  b
403F: 00          nop
4040: 00          nop
4041: 80          add  a,b
4042: 93          sub  e
4043: 04          inc  b
4044: 03          inc  bc
4045: 04          inc  b
4046: 03          inc  bc
4047: 05          dec  b
4048: 05          dec  b
4049: 10 00       djnz $404B
404B: FF          rst  $38
404C: 82          add  a,d
404D: 93          sub  e
404E: 04          inc  b
404F: 03          inc  bc
4050: 04          inc  b
4051: 03          inc  bc
4052: 05          dec  b
4053: 05          dec  b
4054: 10 00       djnz $4056
4056: FF          rst  $38
4057: 84          add  a,h
4058: 97          sub  a
4059: 04          inc  b
405A: 02          ld   (bc),a
405B: 06 05       ld   b,$05
405D: 03          inc  bc
405E: 03          inc  bc
405F: 10 00       djnz $4061
4061: FF          rst  $38
4062: 86          add  a,(hl)
4063: 97          sub  a
4064: 04          inc  b
4065: 02          ld   (bc),a
4066: 06 05       ld   b,$05
4068: 03          inc  bc
4069: 03          inc  bc
406A: 10 00       djnz $406C
406C: FF          rst  $38
406D: 54          ld   d,h
406E: 93          sub  e
406F: 46          ld   b,(hl)
4070: 03          inc  bc
4071: 04          inc  b
4072: 03          inc  bc
4073: 05          dec  b
4074: 05          dec  b
4075: 10 00       djnz $4077
4077: FF          rst  $38
4078: 56          ld   d,(hl)
4079: 93          sub  e
407A: 48          ld   c,b
407B: 03          inc  bc
407C: 04          inc  b
407D: 03          inc  bc
407E: 05          dec  b
407F: 05          dec  b
4080: 10 00       djnz $4082
4082: FF          rst  $38
4083: 5A          ld   e,d
4084: 97          sub  a
4085: 46          ld   b,(hl)
4086: 02          ld   (bc),a
4087: 06 05       ld   b,$05
4089: 03          inc  bc
408A: 03          inc  bc
408B: 10 00       djnz $408D
408D: FF          rst  $38
408E: 58          ld   e,b
408F: 97          sub  a
4090: 48          ld   c,b
4091: 02          ld   (bc),a
4092: 06 05       ld   b,$05
4094: 03          inc  bc
4095: 03          inc  bc
4096: 10 00       djnz $4098
4098: FF          rst  $38
4099: 87          add  a,a
409A: 94          sub  h
409B: 58          ld   e,b
409C: 01 02 03    ld   bc,$0302
409F: 02          ld   (bc),a
40A0: 02          ld   (bc),a
40A1: 05          dec  b
40A2: 00          nop
40A3: 00          nop
40A4: 5C          ld   e,h
40A5: 94          sub  h
40A6: 4E          ld   c,(hl)
40A7: 03          inc  bc
40A8: 04          inc  b
40A9: 02          ld   (bc),a
40AA: 08          ex   af,af'
40AB: 08          ex   af,af'
40AC: 05          dec  b
40AD: 00          nop
40AE: 00          nop
40AF: 5E          ld   e,(hl)
40B0: 94          sub  h
40B1: 4E          ld   c,(hl)
40B2: 03          inc  bc
40B3: 04          inc  b
40B4: 02          ld   (bc),a
40B5: 08          ex   af,af'
40B6: 08          ex   af,af'
40B7: 05          dec  b
40B8: 00          nop
40B9: 00          nop
40BA: 88          adc  a,b
40BB: 97          sub  a
40BC: 44          ld   b,h
40BD: 00          nop
40BE: 05          dec  b
40BF: 05          dec  b
40C0: 05          dec  b
40C1: 05          dec  b
40C2: 10 00       djnz $40C4
40C4: FF          rst  $38
40C5: 8C          adc  a,h
40C6: 97          sub  a
40C7: 44          ld   b,h
40C8: 00          nop
40C9: 05          dec  b
40CA: 05          dec  b
40CB: 05          dec  b
40CC: 05          dec  b
40CD: 10 00       djnz $40CF
40CF: FF          rst  $38
40D0: 08          ex   af,af'
40D1: 98          sbc  a,b
40D2: 5E          ld   e,(hl)
40D3: 00          nop
40D4: 05          dec  b
40D5: 02          ld   (bc),a
40D6: 05          dec  b
40D7: 05          dec  b
40D8: 10 00       djnz $40DA
40DA: FF          rst  $38
40DB: 0C          inc  c
40DC: 98          sbc  a,b
40DD: 5E          ld   e,(hl)
40DE: 00          nop
40DF: 05          dec  b
40E0: 02          ld   (bc),a
40E1: 05          dec  b
40E2: 05          dec  b
40E3: 10 00       djnz $40E5
40E5: FF          rst  $38
40E6: 14          inc  d
40E7: 94          sub  h
40E8: 4E          ld   c,(hl)
40E9: 03          inc  bc
40EA: 03          inc  bc
40EB: 02          ld   (bc),a
40EC: 04          inc  b
40ED: 04          inc  b
40EE: 05          dec  b
40EF: 00          nop
40F0: 00          nop
40F1: 16 94       ld   d,$94
40F3: 46          ld   b,(hl)
40F4: 01 02 03    ld   bc,$0302
40F7: 02          ld   (bc),a
40F8: 02          ld   (bc),a
40F9: 05          dec  b
40FA: 00          nop
40FB: 00          nop
40FC: DD 22 3F C0 ld   ($C03F),ix
4100: 2A 3F C0    ld   hl,($C03F)
4103: 36 A4       ld   (hl),$A4
4105: AF          xor  a
4106: 23          inc  hl
4107: 77          ld   (hl),a
4108: 23          inc  hl
4109: 36 97       ld   (hl),$97
410B: 23          inc  hl
410C: 36 4E       ld   (hl),$4E
410E: 23          inc  hl
410F: 77          ld   (hl),a
4110: 23          inc  hl
4111: 23          inc  hl
4112: 36 80       ld   (hl),$80
4114: 23          inc  hl
4115: 23          inc  hl
4116: 77          ld   (hl),a
4117: 23          inc  hl
4118: 77          ld   (hl),a
4119: 23          inc  hl
411A: 23          inc  hl
411B: 36 08       ld   (hl),$08
411D: 23          inc  hl
411E: 36 08       ld   (hl),$08
4120: 23          inc  hl
4121: 36 08       ld   (hl),$08
4123: 23          inc  hl
4124: 36 08       ld   (hl),$08
4126: 23          inc  hl
4127: 7E          ld   a,(hl)
4128: C6 04       add  a,$04
412A: 23          inc  hl
412B: 36 BC       ld   (hl),$BC
412D: 23          inc  hl
412E: 77          ld   (hl),a
412F: CD 9B 33    call $339B
4132: C9          ret
4133: DD 2A 3F C0 ld   ix,($C03F)
4137: CD 9B 33    call $339B
413A: DD 7E 02    ld   a,(ix+$02)
413D: C6 10       add  a,$10
413F: FE F8       cp   $F8
4141: D2 88 3E    jp   nc,$3E88
4144: DD 7E 06    ld   a,(ix+$06)
4147: 07          rlca
4148: 07          rlca
4149: D0          ret  nc
414A: 07          rlca
414B: D4 EE 41    call nc,$41EE
414E: DD 7E 08    ld   a,(ix+$08)
4151: 3C          inc  a
4152: DD 77 08    ld   (ix+$08),a
4155: 21 3E C0    ld   hl,$C03E
4158: CB 6E       bit  5,(hl)
415A: 20 22       jr   nz,$417E
415C: FE 40       cp   $40
415E: 38 14       jr   c,$4174
4160: DD 36 00 B4 ld   (ix+$00),$B4
4164: CB EE       set  5,(hl)
4166: CB E6       set  4,(hl)
4168: DD 7E 02    ld   a,(ix+$02)
416B: DD 77 15    ld   (ix+$15),a
416E: AF          xor  a
416F: DD 77 14    ld   (ix+$14),a
4172: 18 16       jr   $418A
4174: E6 18       and  $18
4176: 0F          rrca
4177: C6 A4       add  a,$A4
4179: DD 77 00    ld   (ix+$00),a
417C: 18 0C       jr   $418A
417E: E6 07       and  $07
4180: 20 08       jr   nz,$418A
4182: DD 7E 00    ld   a,(ix+$00)
4185: EE 0C       xor  $0C
4187: DD 77 00    ld   (ix+$00),a
418A: CD A0 03    call $03A0
418D: 21 3E C0    ld   hl,$C03E
4190: CB 66       bit  4,(hl)
4192: C8          ret  z
4193: DD 7E 09    ld   a,(ix+$09)
4196: 3C          inc  a
4197: DD 77 09    ld   (ix+$09),a
419A: CB 5E       bit  3,(hl)
419C: 20 1F       jr   nz,$41BD
419E: FE 20       cp   $20
41A0: 38 12       jr   c,$41B4
41A2: DD 36 10 BE ld   (ix+$10),$BE
41A6: CB DE       set  3,(hl)
41A8: DD 7E 02    ld   a,(ix+$02)
41AB: DD 77 17    ld   (ix+$17),a
41AE: AF          xor  a
41AF: DD 77 16    ld   (ix+$16),a
41B2: 18 15       jr   $41C9
41B4: E6 0F       and  $0F
41B6: 20 11       jr   nz,$41C9
41B8: DD 34 10    inc  (ix+$10)
41BB: 18 0C       jr   $41C9
41BD: E6 0F       and  $0F
41BF: 20 08       jr   nz,$41C9
41C1: DD 7E 10    ld   a,(ix+$10)
41C4: EE 01       xor  $01
41C6: DD 77 10    ld   (ix+$10),a
41C9: DD 6E 14    ld   l,(ix+$14)
41CC: DD 66 15    ld   h,(ix+$15)
41CF: 01 C0 FF    ld   bc,$FFC0
41D2: 09          add  hl,bc
41D3: DD 75 14    ld   (ix+$14),l
41D6: DD 74 15    ld   (ix+$15),h
41D9: EB          ex   de,hl
41DA: DD 6E 04    ld   l,(ix+$04)
41DD: DD 66 05    ld   h,(ix+$05)
41E0: 24          inc  h
41E1: 24          inc  h
41E2: DD 4E 10    ld   c,(ix+$10)
41E5: DD 46 03    ld   b,(ix+$03)
41E8: DD 7E 11    ld   a,(ix+$11)
41EB: C3 08 00    jp   $0008
41EE: 11 10 00    ld   de,$0010
41F1: CD 93 03    call $0393
41F4: DD CB 06 EE set  5,(ix+$06)
41F8: 3E 09       ld   a,$09
41FA: CD 15 08    call $0815
41FD: C9          ret
41FE: DD 22 3F C0 ld   ($C03F),ix
4202: AF          xor  a
4203: DD 77 01    ld   (ix+$01),a
4206: DD 36 02 97 ld   (ix+$02),$97
420A: DD 36 03 58 ld   (ix+$03),$58
420E: DD 77 04    ld   (ix+$04),a
4211: DD 36 06 80 ld   (ix+$06),$80
4215: DD 77 08    ld   (ix+$08),a
4218: DD 77 09    ld   (ix+$09),a
421B: DD 36 0B 08 ld   (ix+$0b),$08
421F: DD 36 0C 08 ld   (ix+$0c),$08
4223: DD 36 0D 04 ld   (ix+$0d),$04
4227: DD 36 0E 04 ld   (ix+$0e),$04
422B: C3 9B 33    jp   $339B
422E: DD 2A 3F C0 ld   ix,($C03F)
4232: CD 9B 33    call $339B
4235: DD 7E 02    ld   a,(ix+$02)
4238: C6 10       add  a,$10
423A: FE F8       cp   $F8
423C: D2 88 3E    jp   nc,$3E88
423F: 21 3E C0    ld   hl,$C03E
4242: CB 6E       bit  5,(hl)
4244: 20 20       jr   nz,$4266
4246: DD CB 06 76 bit  6,(ix+$06)
424A: 28 3C       jr   z,$4288
424C: DD 7E 08    ld   a,(ix+$08)
424F: 3C          inc  a
4250: DD 77 08    ld   (ix+$08),a
4253: FE 32       cp   $32
4255: 38 31       jr   c,$4288
4257: CB EE       set  5,(hl)
4259: E5          push hl
425A: 11 00 10    ld   de,$1000
425D: CD 93 03    call $0393
4260: 3E 06       ld   a,$06
4262: CD 15 08    call $0815
4265: E1          pop  hl
4266: DD 7E 09    ld   a,(ix+$09)
4269: 3C          inc  a
426A: DD 77 09    ld   (ix+$09),a
426D: CB 66       bit  4,(hl)
426F: 20 10       jr   nz,$4281
4271: FE 10       cp   $10
4273: 30 0C       jr   nc,$4281
4275: FE 0F       cp   $0F
4277: 20 02       jr   nz,$427B
4279: CB E6       set  4,(hl)
427B: E6 18       and  $18
427D: 06 22       ld   b,$22
427F: 18 04       jr   $4285
4281: E6 08       and  $08
4283: 06 28       ld   b,$28
4285: 0F          rrca
4286: 0F          rrca
4287: 80          add  a,b
4288: CB 6E       bit  5,(hl)
428A: 20 02       jr   nz,$428E
428C: 3E 20       ld   a,$20
428E: 21 F7 2C    ld   hl,$2CF7
4291: CD A1 2C    call $2CA1
4294: DD CB 06 76 bit  6,(ix+$06)
4298: C8          ret  z
4299: DD CB 06 B6 res  6,(ix+$06)
429D: 11 01 00    ld   de,$0001
42A0: CD 93 03    call $0393
42A3: 3E 0A       ld   a,$0A
42A5: C3 15 08    jp   $0815
42A8: AF          xor  a
42A9: DD 77 01    ld   (ix+$01),a
42AC: DD 36 02 94 ld   (ix+$02),$94
42B0: DD 36 03 46 ld   (ix+$03),$46
42B4: DD 77 04    ld   (ix+$04),a
42B7: DD 36 06 80 ld   (ix+$06),$80
42BB: 3E 04       ld   a,$04
42BD: DD 77 0B    ld   (ix+$0b),a
42C0: DD 77 0C    ld   (ix+$0c),a
42C3: DD 77 0D    ld   (ix+$0d),a
42C6: DD 77 0E    ld   (ix+$0e),a
42C9: AF          xor  a
42CA: 21 3F C0    ld   hl,$C03F
42CD: 77          ld   (hl),a
42CE: 23          inc  hl
42CF: 77          ld   (hl),a
42D0: C9          ret
42D1: DD CB 06 76 bit  6,(ix+$06)
42D5: C2 AE 43    jp   nz,$43AE
42D8: DD 7E 02    ld   a,(ix+$02)
42DB: C6 04       add  a,$04
42DD: FE F8       cp   $F8
42DF: D2 88 3E    jp   nc,$3E88
42E2: 3A D6 C0    ld   a,($C0D6)
42E5: E6 02       and  $02
42E7: 0F          rrca
42E8: C6 A0       add  a,$A0
42EA: DD 77 00    ld   (ix+$00),a
42ED: CD 02 04    call $0402
42F0: 21 3F C0    ld   hl,$C03F
42F3: 7E          ld   a,(hl)
42F4: E6 03       and  $03
42F6: 20 1E       jr   nz,$4316
42F8: 23          inc  hl
42F9: 7E          ld   a,(hl)
42FA: B7          or   a
42FB: CC 5B 43    call z,$435B
42FE: 35          dec  (hl)
42FF: 28 12       jr   z,$4313
4301: 01 CF FF    ld   bc,$FFCF
4304: 11 76 00    ld   de,$0076
4307: CD 6B 43    call $436B
430A: 7C          ld   a,h
430B: FE 58       cp   $58
430D: D8          ret  c
430E: 21 40 C0    ld   hl,$C040
4311: 36 00       ld   (hl),$00
4313: 2B          dec  hl
4314: 34          inc  (hl)
4315: C9          ret
4316: 3D          dec  a
4317: 20 22       jr   nz,$433B
4319: 11 86 43    ld   de,$4386
431C: 23          inc  hl
431D: 7E          ld   a,(hl)
431E: 3C          inc  a
431F: FE 50       cp   $50
4321: 38 05       jr   c,$4328
4323: AF          xor  a
4324: 77          ld   (hl),a
4325: 2B          dec  hl
4326: 34          inc  (hl)
4327: C9          ret
4328: 77          ld   (hl),a
4329: E6 70       and  $70
432B: 0F          rrca
432C: 0F          rrca
432D: EB          ex   de,hl
432E: 5F          ld   e,a
432F: 16 00       ld   d,$00
4331: 19          add  hl,de
4332: 4E          ld   c,(hl)
4333: 23          inc  hl
4334: 46          ld   b,(hl)
4335: 23          inc  hl
4336: 5E          ld   e,(hl)
4337: 23          inc  hl
4338: 56          ld   d,(hl)
4339: 18 30       jr   $436B
433B: 3D          dec  a
433C: 20 18       jr   nz,$4356
433E: 23          inc  hl
433F: 7E          ld   a,(hl)
4340: B7          or   a
4341: CC 5B 43    call z,$435B
4344: 35          dec  (hl)
4345: 28 CC       jr   z,$4313
4347: 01 CF FF    ld   bc,$FFCF
434A: 11 8A FF    ld   de,$FF8A
434D: CD 6B 43    call $436B
4350: 7C          ld   a,h
4351: FE 20       cp   $20
4353: 38 B9       jr   c,$430E
4355: C9          ret
4356: 11 9A 43    ld   de,$439A
4359: 18 C1       jr   $431C
435B: 3A 4F C2    ld   a,($C24F)
435E: ED 44       neg
4360: 47          ld   b,a
4361: 3A 52 C2    ld   a,($C252)
4364: 80          add  a,b
4365: E6 1F       and  $1F
4367: C6 20       add  a,$20
4369: 77          ld   (hl),a
436A: C9          ret
436B: DD 6E 01    ld   l,(ix+$01)
436E: DD 66 02    ld   h,(ix+$02)
4371: 09          add  hl,bc
4372: DD 75 01    ld   (ix+$01),l
4375: DD 74 02    ld   (ix+$02),h
4378: DD 6E 04    ld   l,(ix+$04)
437B: DD 66 05    ld   h,(ix+$05)
437E: 19          add  hl,de
437F: DD 75 04    ld   (ix+$04),l
4382: DD 74 05    ld   (ix+$05),h
4385: C9          ret
4386: A6          and  (hl)
4387: FF          rst  $38
4388: 5A          ld   e,d
4389: 00          nop
438A: 8A          adc  a,d
438B: FF          rst  $38
438C: 31 00 80    ld   sp,$8000
438F: FF          rst  $38
4390: 00          nop
4391: 00          nop
4392: 8A          adc  a,d
4393: FF          rst  $38
4394: CF          rst  $08
4395: FF          rst  $38
4396: A6          and  (hl)
4397: FF          rst  $38
4398: A6          and  (hl)
4399: FF          rst  $38
439A: A6          and  (hl)
439B: FF          rst  $38
439C: A6          and  (hl)
439D: FF          rst  $38
439E: 8A          adc  a,d
439F: FF          rst  $38
43A0: CF          rst  $08
43A1: FF          rst  $38
43A2: 80          add  a,b
43A3: FF          rst  $38
43A4: 00          nop
43A5: 00          nop
43A6: 8A          adc  a,d
43A7: FF          rst  $38
43A8: 31 00 A6    ld   sp,$A600
43AB: FF          rst  $38
43AC: 5A          ld   e,d
43AD: 00          nop
43AE: 3A 53 C2    ld   a,($C253)
43B1: 47          ld   b,a
43B2: E6 30       and  $30
43B4: 20 0E       jr   nz,$43C4
43B6: 11 00 03    ld   de,$0300
43B9: CD 93 03    call $0393
43BC: 3E 06       ld   a,$06
43BE: CD 15 08    call $0815
43C1: C3 88 3E    jp   $3E88
43C4: 3E 20       ld   a,$20
43C6: CB 68       bit  5,b
43C8: 20 01       jr   nz,$43CB
43CA: 0F          rrca
43CB: A8          xor  b
43CC: 32 53 C2    ld   ($C253),a
43CF: E6 30       and  $30
43D1: 32 6A C2    ld   ($C26A),a
43D4: 21 21 C2    ld   hl,$C221
43D7: 34          inc  (hl)
43D8: 3E 07       ld   a,$07
43DA: CD 15 08    call $0815
43DD: C3 88 3E    jp   $3E88
43E0: 3A 2F C2    ld   a,($C22F)
43E3: E6 0F       and  $0F
43E5: 3A 3D C0    ld   a,($C03D)
43E8: C2 CF 04    jp   nz,$04CF
43EB: 3A 44 C2    ld   a,($C244)
43EE: E6 08       and  $08
43F0: 3A 3D C0    ld   a,($C03D)
43F3: C2 CF 04    jp   nz,$04CF
43F6: AF          xor  a
43F7: 32 2F C2    ld   ($C22F),a
43FA: DD 36 00 9D ld   (ix+$00),$9D
43FE: DD 36 01 00 ld   (ix+$01),$00
4402: DD 36 02 3E ld   (ix+$02),$3E
4406: DD 36 03 48 ld   (ix+$03),$48
440A: DD CB 06 FE set  7,(ix+$06)
440E: DD 36 0B 04 ld   (ix+$0b),$04
4412: DD 36 0C 04 ld   (ix+$0c),$04
4416: DD 36 0D 04 ld   (ix+$0d),$04
441A: DD 36 0E 04 ld   (ix+$0e),$04
441E: DD 36 17 00 ld   (ix+$17),$00
4422: DD 36 1C FF ld   (ix+$1c),$FF
4426: DD 36 1D 00 ld   (ix+$1d),$00
442A: DD 36 1E 10 ld   (ix+$1e),$10
442E: DD 22 3F C0 ld   ($C03F),ix
4432: C3 02 04    jp   $0402
4435: CD E2 2A    call $2AE2
4438: DD 6E 04    ld   l,(ix+$04)
443B: DD 66 05    ld   h,(ix+$05)
443E: 11 80 FF    ld   de,$FF80
4441: 19          add  hl,de
4442: DD 75 04    ld   (ix+$04),l
4445: DD 74 05    ld   (ix+$05),h
4448: 7C          ld   a,h
4449: FE FC       cp   $FC
444B: C2 02 04    jp   nz,$0402
444E: CD 62 04    call $0462
4451: DD 36 06 00 ld   (ix+$06),$00
4455: 3A 3D C0    ld   a,($C03D)
4458: CD CF 04    call $04CF
445B: 3A 2F C2    ld   a,($C22F)
445E: FE 03       cp   $03
4460: C0          ret  nz
4461: 21 2A C2    ld   hl,$C22A
4464: 7E          ld   a,(hl)
4465: FE 05       cp   $05
4467: D0          ret  nc
4468: 34          inc  (hl)
4469: 3E 05       ld   a,$05
446B: CD 15 08    call $0815
446E: C3 F5 04    jp   $04F5
4471: DD 22 3F C0 ld   ($C03F),ix
4475: AF          xor  a
4476: DD 77 01    ld   (ix+$01),a
4479: DD 36 02 94 ld   (ix+$02),$94
447D: DD 77 04    ld   (ix+$04),a
4480: DD 36 06 80 ld   (ix+$06),$80
4484: DD 77 0A    ld   (ix+$0a),a
4487: 3E 04       ld   a,$04
4489: DD 77 0B    ld   (ix+$0b),a
448C: DD 77 0C    ld   (ix+$0c),a
448F: DD 77 0D    ld   (ix+$0d),a
4492: DD 77 0E    ld   (ix+$0e),a
4495: DD 36 1C FF ld   (ix+$1c),$FF
4499: DD 36 1D 10 ld   (ix+$1d),$10
449D: DD 36 1E 00 ld   (ix+$1e),$00
44A1: C3 9B 33    jp   $339B
44A4: DD 2A 3F C0 ld   ix,($C03F)
44A8: CD 9B 33    call $339B
44AB: DD 7E 02    ld   a,(ix+$02)
44AE: C6 08       add  a,$08
44B0: FE F8       cp   $F8
44B2: D2 88 3E    jp   nc,$3E88
44B5: DD CB 06 76 bit  6,(ix+$06)
44B9: DD 7E 0A    ld   a,(ix+$0a)
44BC: 20 2A       jr   nz,$44E8
44BE: 3C          inc  a
44BF: FE C0       cp   $C0
44C1: 38 01       jr   c,$44C4
44C3: AF          xor  a
44C4: DD 77 0A    ld   (ix+$0a),a
44C7: 4F          ld   c,a
44C8: 21 24 45    ld   hl,$4524
44CB: E6 C0       and  $C0
44CD: 07          rlca
44CE: 07          rlca
44CF: 07          rlca
44D0: 07          rlca
44D1: 5F          ld   e,a
44D2: 16 00       ld   d,$00
44D4: 19          add  hl,de
44D5: 79          ld   a,c
44D6: E6 08       and  $08
44D8: 0F          rrca
44D9: 0F          rrca
44DA: 5F          ld   e,a
44DB: 19          add  hl,de
44DC: 7E          ld   a,(hl)
44DD: 23          inc  hl
44DE: DD 77 00    ld   (ix+$00),a
44E1: 7E          ld   a,(hl)
44E2: DD 77 03    ld   (ix+$03),a
44E5: C3 02 04    jp   $0402
44E8: F5          push af
44E9: 3A 3D C0    ld   a,($C03D)
44EC: CD CF 04    call $04CF
44EF: F1          pop  af
44F0: 07          rlca
44F1: 38 1A       jr   c,$450D
44F3: 07          rlca
44F4: 38 0D       jr   c,$4503
44F6: 3E 03       ld   a,$03
44F8: 01 01 00    ld   bc,$0001
44FB: CD A9 04    call $04A9
44FE: DC 1E 45    call c,$451E
4501: 18 12       jr   $4515
4503: 3E 03       ld   a,$03
4505: CD A6 04    call $04A6
4508: DC 1E 45    call c,$451E
450B: 18 08       jr   $4515
450D: 3E 1C       ld   a,$1C
450F: 01 81 3C    ld   bc,$3C81
4512: CD A9 04    call $04A9
4515: DD 36 06 08 ld   (ix+$06),$08
4519: 3E 06       ld   a,$06
451B: C3 15 08    jp   $0815
451E: 11 00 03    ld   de,$0300
4521: C3 93 03    jp   $0393
4524: F8          ret  m
4525: 46          ld   b,(hl)
4526: F9          ld   sp,hl
4527: 46          ld   b,(hl)
4528: FE 42       cp   $42
452A: FF          rst  $38
452B: 42          ld   b,d
452C: FA 48 FB    jp   m,$FB48
452F: 48          ld   c,b
4530: CD 71 44    call $4471
4533: DD 36 09 00 ld   (ix+$09),$00
4537: DD 36 03 4E ld   (ix+$03),$4E
453B: C9          ret
453C: DD 2A 3F C0 ld   ix,($C03F)
4540: CD 9B 33    call $339B
4543: DD 4E 0A    ld   c,(ix+$0a)
4546: 0C          inc  c
4547: DD 71 0A    ld   (ix+$0a),c
454A: DD 7E 09    ld   a,(ix+$09)
454D: E6 03       and  $03
454F: 28 5D       jr   z,$45AE
4551: DD CB 06 76 bit  6,(ix+$06)
4555: 20 67       jr   nz,$45BE
4557: 3D          dec  a
4558: 20 18       jr   nz,$4572
455A: 79          ld   a,c
455B: FE 0F       cp   $0F
455D: 38 07       jr   c,$4566
455F: DD 34 09    inc  (ix+$09)
4562: DD 36 0A 00 ld   (ix+$0a),$00
4566: E6 0C       and  $0C
4568: 0F          rrca
4569: 0F          rrca
456A: C6 CE       add  a,$CE
456C: DD 77 00    ld   (ix+$00),a
456F: C3 02 04    jp   $0402
4572: 3D          dec  a
4573: 20 14       jr   nz,$4589
4575: 79          ld   a,c
4576: FE 60       cp   $60
4578: 38 07       jr   c,$4581
457A: DD 34 09    inc  (ix+$09)
457D: DD 36 0A 00 ld   (ix+$0a),$00
4581: E6 04       and  $04
4583: 0F          rrca
4584: 0F          rrca
4585: C6 D2       add  a,$D2
4587: 18 E3       jr   $456C
4589: 79          ld   a,c
458A: FE 0F       cp   $0F
458C: 38 16       jr   c,$45A4
458E: DD 7E 02    ld   a,(ix+$02)
4591: FE 40       cp   $40
4593: DA 88 3E    jp   c,$3E88
4596: DD CB 06 F6 set  6,(ix+$06)
459A: DD 34 09    inc  (ix+$09)
459D: DD 36 0A 00 ld   (ix+$0a),$00
45A1: C3 62 04    jp   $0462
45A4: E6 0C       and  $0C
45A6: 0F          rrca
45A7: 0F          rrca
45A8: ED 44       neg
45AA: C6 D1       add  a,$D1
45AC: 18 BE       jr   $456C
45AE: 79          ld   a,c
45AF: FE 40       cp   $40
45B1: D8          ret  c
45B2: DD 34 09    inc  (ix+$09)
45B5: DD 36 0A 00 ld   (ix+$0a),$00
45B9: DD CB 06 B6 res  6,(ix+$06)
45BD: C9          ret
45BE: 3A 30 C2    ld   a,($C230)
45C1: 3C          inc  a
45C2: FE 0A       cp   $0A
45C4: 38 0F       jr   c,$45D5
45C6: 21 2A C2    ld   hl,$C22A
45C9: 34          inc  (hl)
45CA: CD F5 04    call $04F5
45CD: 3E 05       ld   a,$05
45CF: CD 15 08    call $0815
45D2: AF          xor  a
45D3: 18 07       jr   $45DC
45D5: F5          push af
45D6: 3E 06       ld   a,$06
45D8: CD 15 08    call $0815
45DB: F1          pop  af
45DC: 32 30 C2    ld   ($C230),a
45DF: 21 4A C2    ld   hl,$C24A
45E2: CB CE       set  1,(hl)
45E4: DD 36 06 08 ld   (ix+$06),$08
45E8: 3A 3D C0    ld   a,($C03D)
45EB: C3 CF 04    jp   $04CF
