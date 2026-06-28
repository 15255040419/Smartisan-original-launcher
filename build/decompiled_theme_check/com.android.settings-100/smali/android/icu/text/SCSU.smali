.class interface abstract Landroid/icu/text/SCSU;
.super Ljava/lang/Object;
.source "SCSU.java"


# static fields
.field public static final ARMENIANINDEX:I = 0xfc

.field public static final COMPRESSIONOFFSET:I = 0x80

.field public static final GREEKINDEX:I = 0xfb

.field public static final HALFWIDTHKATAKANAINDEX:I = 0xff

.field public static final HIRAGANAINDEX:I = 0xfd

.field public static final INVALIDCHAR:I = -0x1

.field public static final INVALIDWINDOW:I = -0x1

.field public static final IPAEXTENSIONINDEX:I = 0xfa

.field public static final KATAKANAINDEX:I = 0xfe

.field public static final LATININDEX:I = 0xf9

.field public static final MAXINDEX:I = 0xff

.field public static final NUMSTATICWINDOWS:I = 0x8

.field public static final NUMWINDOWS:I = 0x8

.field public static final RESERVEDINDEX:I = 0x0

.field public static final SCHANGE0:I = 0x10

.field public static final SCHANGE1:I = 0x11

.field public static final SCHANGE2:I = 0x12

.field public static final SCHANGE3:I = 0x13

.field public static final SCHANGE4:I = 0x14

.field public static final SCHANGE5:I = 0x15

.field public static final SCHANGE6:I = 0x16

.field public static final SCHANGE7:I = 0x17

.field public static final SCHANGEU:I = 0xf

.field public static final SDEFINE0:I = 0x18

.field public static final SDEFINE1:I = 0x19

.field public static final SDEFINE2:I = 0x1a

.field public static final SDEFINE3:I = 0x1b

.field public static final SDEFINE4:I = 0x1c

.field public static final SDEFINE5:I = 0x1d

.field public static final SDEFINE6:I = 0x1e

.field public static final SDEFINE7:I = 0x1f

.field public static final SDEFINEX:I = 0xb

.field public static final SINGLEBYTEMODE:I = 0x0

.field public static final SQUOTE0:I = 0x1

.field public static final SQUOTE1:I = 0x2

.field public static final SQUOTE2:I = 0x3

.field public static final SQUOTE3:I = 0x4

.field public static final SQUOTE4:I = 0x5

.field public static final SQUOTE5:I = 0x6

.field public static final SQUOTE6:I = 0x7

.field public static final SQUOTE7:I = 0x8

.field public static final SQUOTEU:I = 0xe

.field public static final SRESERVED:I = 0xc

.field public static final UCHANGE0:I = 0xe0

.field public static final UCHANGE1:I = 0xe1

.field public static final UCHANGE2:I = 0xe2

.field public static final UCHANGE3:I = 0xe3

.field public static final UCHANGE4:I = 0xe4

.field public static final UCHANGE5:I = 0xe5

.field public static final UCHANGE6:I = 0xe6

.field public static final UCHANGE7:I = 0xe7

.field public static final UDEFINE0:I = 0xe8

.field public static final UDEFINE1:I = 0xe9

.field public static final UDEFINE2:I = 0xea

.field public static final UDEFINE3:I = 0xeb

.field public static final UDEFINE4:I = 0xec

.field public static final UDEFINE5:I = 0xed

.field public static final UDEFINE6:I = 0xee

.field public static final UDEFINE7:I = 0xef

.field public static final UDEFINEX:I = 0xf1

.field public static final UNICODEMODE:I = 0x1

.field public static final UQUOTEU:I = 0xf0

.field public static final URESERVED:I = 0xf2

.field public static final sOffsetTable:[I

.field public static final sOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 139
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/SCSU;->sOffsetTable:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 175
    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/SCSU;->sOffsets:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x80
        0x100
        0x180
        0x200
        0x280
        0x300
        0x380
        0x400
        0x480
        0x500
        0x580
        0x600
        0x680
        0x700
        0x780
        0x800
        0x880
        0x900
        0x980
        0xa00
        0xa80
        0xb00
        0xb80
        0xc00
        0xc80
        0xd00
        0xd80
        0xe00
        0xe80
        0xf00
        0xf80
        0x1000
        0x1080
        0x1100
        0x1180
        0x1200
        0x1280
        0x1300
        0x1380
        0x1400
        0x1480
        0x1500
        0x1580
        0x1600
        0x1680
        0x1700
        0x1780
        0x1800
        0x1880
        0x1900
        0x1980
        0x1a00
        0x1a80
        0x1b00
        0x1b80
        0x1c00
        0x1c80
        0x1d00
        0x1d80
        0x1e00
        0x1e80
        0x1f00
        0x1f80
        0x2000
        0x2080
        0x2100
        0x2180
        0x2200
        0x2280
        0x2300
        0x2380
        0x2400
        0x2480
        0x2500
        0x2580
        0x2600
        0x2680
        0x2700
        0x2780
        0x2800
        0x2880
        0x2900
        0x2980
        0x2a00
        0x2a80
        0x2b00
        0x2b80
        0x2c00
        0x2c80
        0x2d00
        0x2d80
        0x2e00
        0x2e80
        0x2f00
        0x2f80
        0x3000
        0x3080
        0x3100
        0x3180
        0x3200
        0x3280
        0x3300
        0x3380
        0xe000
        0xe080
        0xe100
        0xe180
        0xe200
        0xe280
        0xe300
        0xe380
        0xe400
        0xe480
        0xe500
        0xe580
        0xe600
        0xe680
        0xe700
        0xe780
        0xe800
        0xe880
        0xe900
        0xe980
        0xea00
        0xea80
        0xeb00
        0xeb80
        0xec00
        0xec80
        0xed00
        0xed80
        0xee00
        0xee80
        0xef00
        0xef80
        0xf000
        0xf080
        0xf100
        0xf180
        0xf200
        0xf280
        0xf300
        0xf380
        0xf400
        0xf480
        0xf500
        0xf580
        0xf600
        0xf680
        0xf700
        0xf780
        0xf800
        0xf880
        0xf900
        0xf980
        0xfa00
        0xfa80
        0xfb00
        0xfb80
        0xfc00
        0xfc80
        0xfd00
        0xfd80
        0xfe00
        0xfe80
        0xff00
        0xff80
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xc0
        0x250
        0x370
        0x530
        0x3040
        0x30a0
        0xff60
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x80
        0x100
        0x300
        0x2000
        0x2080
        0x2100
        0x3000
    .end array-data
.end method
