.class public final Landroid/icu/text/ArabicShaping;
.super Ljava/lang/Object;
.source "ArabicShaping.java"


# static fields
.field private static final ALEFTYPE:I = 0x20

.field private static final DESHAPE_MODE:I = 0x1

.field public static final DIGITS_AN2EN:I = 0x40

.field public static final DIGITS_EN2AN:I = 0x20

.field public static final DIGITS_EN2AN_INIT_AL:I = 0x80

.field public static final DIGITS_EN2AN_INIT_LR:I = 0x60

.field public static final DIGITS_MASK:I = 0xe0

.field public static final DIGITS_NOOP:I = 0x0

.field public static final DIGIT_TYPE_AN:I = 0x0

.field public static final DIGIT_TYPE_AN_EXTENDED:I = 0x100

.field public static final DIGIT_TYPE_MASK:I = 0x100

.field private static final HAMZA06_CHAR:C = '\u0621'

.field private static final HAMZAFE_CHAR:C = '\ufe80'

.field private static final IRRELEVANT:I = 0x4

.field public static final LAMALEF_AUTO:I = 0x10000

.field public static final LAMALEF_BEGIN:I = 0x3

.field public static final LAMALEF_END:I = 0x2

.field public static final LAMALEF_MASK:I = 0x10003

.field public static final LAMALEF_NEAR:I = 0x1

.field public static final LAMALEF_RESIZE:I = 0x0

.field private static final LAMALEF_SPACE_SUB:C = '\uffff'

.field private static final LAMTYPE:I = 0x10

.field private static final LAM_CHAR:C = '\u0644'

.field public static final LENGTH_FIXED_SPACES_AT_BEGINNING:I = 0x3

.field public static final LENGTH_FIXED_SPACES_AT_END:I = 0x2

.field public static final LENGTH_FIXED_SPACES_NEAR:I = 0x1

.field public static final LENGTH_GROW_SHRINK:I = 0x0

.field public static final LENGTH_MASK:I = 0x10003

.field public static final LETTERS_MASK:I = 0x18

.field public static final LETTERS_NOOP:I = 0x0

.field public static final LETTERS_SHAPE:I = 0x8

.field public static final LETTERS_SHAPE_TASHKEEL_ISOLATED:I = 0x18

.field public static final LETTERS_UNSHAPE:I = 0x10

.field private static final LINKL:I = 0x2

.field private static final LINKR:I = 0x1

.field private static final LINK_MASK:I = 0x3

.field private static final NEW_TAIL_CHAR:C = '\ufe73'

.field private static final OLD_TAIL_CHAR:C = '\u200b'

.field public static final SEEN_MASK:I = 0x700000

.field public static final SEEN_TWOCELL_NEAR:I = 0x200000

.field private static final SHADDA06_CHAR:C = '\u0651'

.field private static final SHADDA_CHAR:C = '\ufe7c'

.field private static final SHADDA_TATWEEL_CHAR:C = '\ufe7d'

.field private static final SHAPE_MODE:I = 0x0

.field public static final SHAPE_TAIL_NEW_UNICODE:I = 0x8000000

.field public static final SHAPE_TAIL_TYPE_MASK:I = 0x8000000

.field public static final SPACES_RELATIVE_TO_TEXT_BEGIN_END:I = 0x4000000

.field public static final SPACES_RELATIVE_TO_TEXT_MASK:I = 0x4000000

.field private static final SPACE_CHAR:C = ' '

.field public static final TASHKEEL_BEGIN:I = 0x40000

.field public static final TASHKEEL_END:I = 0x60000

.field public static final TASHKEEL_MASK:I = 0xe0000

.field public static final TASHKEEL_REPLACE_BY_TATWEEL:I = 0xc0000

.field public static final TASHKEEL_RESIZE:I = 0x80000

.field private static final TASHKEEL_SPACE_SUB:C = '\ufffe'

.field private static final TATWEEL_CHAR:C = '\u0640'

.field public static final TEXT_DIRECTION_LOGICAL:I = 0x0

.field public static final TEXT_DIRECTION_MASK:I = 0x4

.field public static final TEXT_DIRECTION_VISUAL_LTR:I = 0x4

.field public static final TEXT_DIRECTION_VISUAL_RTL:I = 0x0

.field public static final YEHHAMZA_MASK:I = 0x3800000

.field public static final YEHHAMZA_TWOCELL_NEAR:I = 0x1000000

.field private static final YEH_HAMZAFE_CHAR:C = '\ufe89'

.field private static final YEH_HAMZA_CHAR:C = '\u0626'

.field private static final araLink:[I

.field private static convertFEto06:[I

.field private static final convertNormalizedLamAlef:[C

.field private static final irrelevantPos:[I

.field private static final presLink:[I

.field private static final shapeTable:[[[I

.field private static final tailFamilyIsolatedFinal:[I

.field private static final tashkeelMedial:[I

.field private static final yehHamzaToYeh:[C


# instance fields
.field private isLogical:Z

.field private final options:I

.field private spacesRelativeToTextBeginEnd:Z

.field private tailChar:C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 620
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    const/16 v0, 0xe

    new-array v0, v0, [I

    .line 637
    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 654
    fill-array-data v0, :array_2

    sput-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    const/4 v0, 0x2

    new-array v1, v0, [C

    .line 673
    fill-array-data v1, :array_3

    sput-object v1, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    const/4 v1, 0x4

    new-array v2, v1, [C

    .line 679
    fill-array-data v2, :array_4

    sput-object v2, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    const/16 v2, 0xb2

    new-array v2, v2, [I

    .line 686
    fill-array-data v2, :array_5

    sput-object v2, Landroid/icu/text/ArabicShaping;->araLink:[I

    const/16 v2, 0x8d

    new-array v3, v2, [I

    .line 764
    fill-array-data v3, :array_6

    sput-object v3, Landroid/icu/text/ArabicShaping;->presLink:[I

    new-array v2, v2, [I

    .line 805
    fill-array-data v2, :array_7

    sput-object v2, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    new-array v2, v1, [[[I

    new-array v3, v1, [[I

    new-array v4, v1, [I

    .line 818
    fill-array-data v4, :array_8

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_9

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v4, v1, [I

    fill-array-data v4, :array_a

    aput-object v4, v3, v0

    new-array v4, v1, [I

    fill-array-data v4, :array_b

    const/4 v7, 0x3

    aput-object v4, v3, v7

    aput-object v3, v2, v5

    new-array v3, v1, [[I

    new-array v4, v1, [I

    fill-array-data v4, :array_c

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_d

    aput-object v4, v3, v6

    new-array v4, v1, [I

    fill-array-data v4, :array_e

    aput-object v4, v3, v0

    new-array v4, v1, [I

    fill-array-data v4, :array_f

    aput-object v4, v3, v7

    aput-object v3, v2, v6

    new-array v3, v1, [[I

    new-array v4, v1, [I

    fill-array-data v4, :array_10

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_11

    aput-object v4, v3, v6

    new-array v4, v1, [I

    fill-array-data v4, :array_12

    aput-object v4, v3, v0

    new-array v4, v1, [I

    fill-array-data v4, :array_13

    aput-object v4, v3, v7

    aput-object v3, v2, v0

    new-array v3, v1, [[I

    new-array v4, v1, [I

    fill-array-data v4, :array_14

    aput-object v4, v3, v5

    new-array v4, v1, [I

    fill-array-data v4, :array_15

    aput-object v4, v3, v6

    new-array v4, v1, [I

    fill-array-data v4, :array_16

    aput-object v4, v3, v0

    new-array v0, v1, [I

    fill-array-data v0, :array_17

    aput-object v0, v3, v7

    aput-object v3, v2, v7

    sput-object v2, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
        0x4
        0x6
        0x8
        0xa
        0xc
        0xe
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 2
        -0x111s
        -0x110s
    .end array-data

    :array_4
    .array-data 2
        0x622s
        0x623s
        0x625s
        0x627s
    .end array-data

    :array_5
    .array-data 4
        0x1121
        0x1321
        0x1501
        0x1721
        0x1903
        0x1d21
        0x1f03
        0x2301
        0x2503
        0x2903
        0x2d03
        0x3103
        0x3503
        0x3901
        0x3b01
        0x3d01
        0x3f01
        0x4103
        0x4503
        0x4903
        0x4d03
        0x5103
        0x5503
        0x5903
        0x5d03
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x6103
        0x6503
        0x6903
        0x6d13
        0x7103
        0x7503
        0x7903
        0x7d01
        0x7f01
        0x8103
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x8501
        0x8701
        0x8901
        0x8b01
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
        0x4
        0x0
        0x21
        0x21
        0x0
        0x21
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
        0x1
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x3
        0x0
        0x3
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x0
        0x20
        0x21
        0x20
        0x21
        0x0
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x20
        0x21
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x10
        0x12
        0x13
        0x11
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x2
        0x3
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x64b
        0x64b
        0x64c
        0x64c
        0x64d
        0x64d
        0x64e
        0x64e
        0x64f
        0x64f
        0x650
        0x650
        0x651
        0x651
        0x652
        0x652
        0x621
        0x622
        0x622
        0x623
        0x623
        0x624
        0x624
        0x625
        0x625
        0x626
        0x626
        0x626
        0x626
        0x627
        0x627
        0x628
        0x628
        0x628
        0x628
        0x629
        0x629
        0x62a
        0x62a
        0x62a
        0x62a
        0x62b
        0x62b
        0x62b
        0x62b
        0x62c
        0x62c
        0x62c
        0x62c
        0x62d
        0x62d
        0x62d
        0x62d
        0x62e
        0x62e
        0x62e
        0x62e
        0x62f
        0x62f
        0x630
        0x630
        0x631
        0x631
        0x632
        0x632
        0x633
        0x633
        0x633
        0x633
        0x634
        0x634
        0x634
        0x634
        0x635
        0x635
        0x635
        0x635
        0x636
        0x636
        0x636
        0x636
        0x637
        0x637
        0x637
        0x637
        0x638
        0x638
        0x638
        0x638
        0x639
        0x639
        0x639
        0x639
        0x63a
        0x63a
        0x63a
        0x63a
        0x641
        0x641
        0x641
        0x641
        0x642
        0x642
        0x642
        0x642
        0x643
        0x643
        0x643
        0x643
        0x644
        0x644
        0x644
        0x644
        0x645
        0x645
        0x645
        0x645
        0x646
        0x646
        0x646
        0x646
        0x647
        0x647
        0x647
        0x647
        0x648
        0x648
        0x649
        0x649
        0x64a
        0x64a
        0x64a
        0x64a
        0x65c
        0x65c
        0x65d
        0x65d
        0x65e
        0x65e
        0x65f
        0x65f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x1
        0x0
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x2
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x1
        0x1
        0x3
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x1
        0x0
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x1
        0x0
        0x3
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x1
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x1
        0x1
        0x3
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v0, p1, 0xe0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_3

    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 192
    :goto_0
    iput-boolean v0, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    const/high16 v0, 0x4000000

    and-int v3, p1, v0

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 194
    :goto_1
    iput-boolean v1, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    const/high16 v0, 0x8000000

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_2

    const p1, 0xfe73

    .line 196
    iput-char p1, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    goto :goto_2

    :cond_2
    const/16 p1, 0x200b

    .line 198
    iput-char p1, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    :goto_2
    return-void

    .line 189
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bad DIGITS options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private calculateSize([CII)I
    .locals 3

    .line 1111
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/16 v1, 0x18

    and-int/2addr v0, v1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_2

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_2

    goto :goto_3

    :cond_0
    add-int p0, p2, p3

    :goto_0
    if-ge p2, p0, :cond_a

    .line 1131
    aget-char v0, p1, p2

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1114
    :cond_2
    iget-boolean p0, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    const/16 v0, 0x644

    if-eqz p0, :cond_6

    add-int p0, p2, p3

    add-int/lit8 p0, p0, -0x1

    :goto_1
    if-ge p2, p0, :cond_a

    .line 1116
    aget-char v1, p1, p2

    if-ne v1, v0, :cond_3

    add-int/lit8 v1, p2, 0x1

    aget-char v1, p1, v1

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    aget-char v1, p1, p2

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    add-int/lit8 p3, p3, -0x1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 p0, p2, 0x1

    add-int/2addr p2, p3

    :goto_2
    if-ge p0, p2, :cond_a

    .line 1122
    aget-char v1, p1, p0

    if-ne v1, v0, :cond_7

    add-int/lit8 v1, p0, -0x1

    aget-char v1, p1, v1

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isAlefChar(C)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    aget-char v1, p1, p0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelCharFE(C)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    add-int/lit8 p3, p3, -0x1

    :cond_9
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    return p3
.end method

.method private static changeLamAlef(C)C
    .locals 1

    const/16 v0, 0x622

    if-eq p0, v0, :cond_3

    const/16 v0, 0x623

    if-eq p0, v0, :cond_2

    const/16 v0, 0x625

    if-eq p0, v0, :cond_1

    const/16 v0, 0x627

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x65f

    return p0

    :cond_1
    const/16 p0, 0x65e

    return p0

    :cond_2
    const/16 p0, 0x65d

    return p0

    :cond_3
    const/16 p0, 0x65c

    return p0
.end method

.method private static countSpaceSub([CIC)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 1153
    aget-char v2, p0, v0

    if-ne v2, p2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static countSpacesLeft([CII)I
    .locals 4

    add-int v0, p1, p2

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 946
    aget-char v2, p0, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    sub-int/2addr v1, p1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static countSpacesRight([CII)I
    .locals 4

    add-int v0, p1, p2

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-lt v1, p1, :cond_1

    .line 958
    aget-char v2, p0, v1

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, v1

    return v0

    :cond_1
    return p2
.end method

.method private deShapeUnicode([CIII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    .line 1779
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/ArabicShaping;->deshapeNormalize([CII)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 1784
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    move-result p3

    :cond_0
    return p3
.end method

.method private deshapeNormalize([CII)I
    .locals 8

    .line 1592
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v1, 0x3800000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, 0x1000000

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1593
    :goto_0
    iget p0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v3, 0x700000

    and-int/2addr p0, v3

    const/high16 v3, 0x200000

    if-ne p0, v3, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    add-int v3, p2, p3

    :goto_2
    if-ge p2, v3, :cond_7

    .line 1596
    aget-char v4, p1, p2

    const/16 v5, 0x20

    if-ne v0, v2, :cond_3

    const/16 v6, 0x621

    if-eq v4, v6, :cond_2

    const v6, 0xfe80

    if-ne v4, v6, :cond_3

    :cond_2
    add-int/lit8 v6, p3, -0x1

    if-ge p2, v6, :cond_3

    add-int/lit8 v6, p2, 0x1

    .line 1598
    aget-char v7, p1, v6

    .line 1599
    invoke-static {v7}, Landroid/icu/text/ArabicShaping;->isAlefMaksouraChar(C)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1600
    aput-char v5, p1, p2

    const/16 v4, 0x626

    .line 1601
    aput-char v4, p1, v6

    goto :goto_3

    :cond_3
    if-ne p0, v2, :cond_4

    .line 1602
    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isTailChar(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v6, p3, -0x1

    if-ge p2, v6, :cond_4

    add-int/lit8 v6, p2, 0x1

    aget-char v6, p1, v6

    .line 1603
    invoke-static {v6}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    move-result v6

    if-ne v6, v2, :cond_4

    .line 1604
    aput-char v5, p1, p2

    goto :goto_3

    :cond_4
    const v5, 0xfe70

    if-lt v4, v5, :cond_6

    const v6, 0xfefc

    if-gt v4, v6, :cond_6

    .line 1607
    invoke-static {v4}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 1610
    :cond_5
    sget-object v6, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    sub-int/2addr v4, v5

    aget v4, v6, v4

    int-to-char v4, v4

    aput-char v4, p1, p2

    :cond_6
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    return v1
.end method

.method private expandCompositChar([CIIII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    .line 1476
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v1, 0x10003

    and-int/2addr v1, v0

    const/high16 v2, 0x700000

    and-int/2addr v2, v0

    const/high16 v3, 0x3800000

    and-int/2addr v0, v3

    .line 1481
    iget-boolean v3, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez v3, :cond_2

    iget-boolean v3, p0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    if-nez v3, :cond_2

    if-eq v1, v5, :cond_1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    :goto_0
    const/4 v3, 0x1

    if-ne p5, v3, :cond_13

    const/high16 p5, 0x10000

    const-string v0, "No spacefor lamalef"

    if-ne v1, p5, :cond_a

    .line 1491
    iget-boolean p5, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz p5, :cond_6

    .line 1492
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 1494
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result p5

    :cond_3
    if-eqz p5, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 1497
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result p5

    :cond_4
    if-nez p5, :cond_5

    goto/16 :goto_3

    .line 1500
    :cond_5
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {p0, v0}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1503
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result p5

    if-eqz p5, :cond_7

    .line 1505
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result p5

    :cond_7
    if-eqz p5, :cond_8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 1508
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result p5

    :cond_8
    if-nez p5, :cond_9

    goto/16 :goto_3

    .line 1511
    :cond_9
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {p0, v0}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-ne v1, v5, :cond_c

    .line 1515
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtEnd([CIII)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_3

    .line 1517
    :cond_b
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {p0, v0}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    if-ne v1, v4, :cond_e

    .line 1520
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtBegin([CIII)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_3

    .line 1522
    :cond_d
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {p0, v0}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-ne v1, v3, :cond_10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 1525
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result p0

    if-nez p0, :cond_f

    goto/16 :goto_3

    .line 1527
    :cond_f
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    invoke-direct {p0, v0}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    if-nez v1, :cond_17

    add-int p0, p2, p3

    add-int p5, p0, p4

    :goto_1
    add-int/lit8 p0, p0, -0x1

    if-lt p0, p2, :cond_12

    .line 1531
    aget-char v0, p1, p0

    .line 1532
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/lit8 p5, p5, -0x1

    const/16 v1, 0x644

    .line 1533
    aput-char v1, p1, p5

    add-int/lit8 p5, p5, -0x1

    .line 1534
    sget-object v1, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v0, v0, -0x65c

    aget-char v0, v1, v0

    aput-char v0, p1, p5

    goto :goto_1

    :cond_11
    add-int/lit8 p5, p5, -0x1

    .line 1536
    aput-char v0, p1, p5

    goto :goto_1

    :cond_12
    add-int/2addr p3, p4

    goto :goto_3

    :cond_13
    const/high16 p4, 0x200000

    if-ne v2, p4, :cond_15

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 1543
    invoke-direct/range {v3 .. v9}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result p4

    if-nez p4, :cond_14

    goto :goto_2

    .line 1545
    :cond_14
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    const-string p1, "No space for Seen tail expansion"

    invoke-direct {p0, p1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_2
    const/high16 p4, 0x1000000

    if-ne v0, p4, :cond_17

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 1549
    invoke-direct/range {v1 .. v7}, Landroid/icu/text/ArabicShaping;->expandCompositCharAtNear([CIIIII)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_3

    .line 1551
    :cond_16
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    const-string p1, "No space for YehHamza expansion"

    invoke-direct {p0, p1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    :goto_3
    return p3
.end method

.method private expandCompositCharAtBegin([CIII)Z
    .locals 1

    .line 1362
    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesRight([CII)I

    move-result p0

    if-le p4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/2addr p3, p2

    sub-int p0, p3, p4

    :goto_0
    add-int/lit8 p0, p0, -0x1

    if-lt p0, p2, :cond_2

    .line 1367
    aget-char p4, p1, p0

    .line 1368
    invoke-static {p4}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 p3, p3, -0x1

    const/16 v0, 0x644

    .line 1369
    aput-char v0, p1, p3

    add-int/lit8 p3, p3, -0x1

    .line 1370
    sget-object v0, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 p4, p4, -0x65c

    aget-char p4, v0, p4

    aput-char p4, p1, p3

    goto :goto_0

    :cond_1
    add-int/lit8 p3, p3, -0x1

    .line 1372
    aput-char p4, p1, p3

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private expandCompositCharAtEnd([CIII)Z
    .locals 2

    .line 1392
    invoke-static {p1, p2, p3}, Landroid/icu/text/ArabicShaping;->countSpacesLeft([CII)I

    move-result p0

    if-le p4, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/2addr p4, p2

    add-int/2addr p3, p2

    :goto_0
    if-ge p4, p3, :cond_2

    .line 1397
    aget-char p0, p1, p4

    .line 1398
    invoke-static {p0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    .line 1399
    sget-object v1, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 p0, p0, -0x65c

    aget-char p0, v1, p0

    aput-char p0, p1, p2

    add-int/lit8 p0, v0, 0x1

    const/16 p2, 0x644

    .line 1400
    aput-char p2, p1, v0

    move p2, p0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p2, 0x1

    .line 1402
    aput-char p0, p1, p2

    move p2, v0

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private expandCompositCharAtNear([CIIIII)Z
    .locals 5

    .line 1422
    aget-char v0, p1, p2

    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/2addr p3, p2

    :cond_1
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p2, :cond_7

    .line 1427
    aget-char v0, p1, p3

    const/16 v2, 0x20

    if-ne p6, v1, :cond_3

    .line 1428
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isNormalizedLamAlefChar(C)Z

    move-result v3

    if-eqz v3, :cond_3

    if-le p3, p2, :cond_2

    add-int/lit8 v3, p3, -0x1

    .line 1429
    aget-char v3, p1, v3

    if-ne v3, v2, :cond_2

    const/16 v2, 0x644

    .line 1430
    aput-char v2, p1, p3

    add-int/lit8 p3, p3, -0x1

    .line 1431
    sget-object v2, Landroid/icu/text/ArabicShaping;->convertNormalizedLamAlef:[C

    add-int/lit16 v0, v0, -0x65c

    aget-char v0, v2, v0

    aput-char v0, p1, p3

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    if-ne p5, v1, :cond_5

    .line 1436
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isSeenTailFamilyChar(C)I

    move-result v3

    if-ne v3, v1, :cond_5

    if-le p3, p2, :cond_4

    add-int/lit8 v0, p3, -0x1

    .line 1437
    aget-char v3, p1, v0

    if-ne v3, v2, :cond_4

    .line 1438
    iget-char v2, p0, Landroid/icu/text/ArabicShaping;->tailChar:C

    aput-char v2, p1, v0

    goto :goto_0

    :cond_4
    return v1

    :cond_5
    if-ne p4, v1, :cond_1

    .line 1443
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isYehHamzaChar(C)Z

    move-result v3

    if-eqz v3, :cond_1

    if-le p3, p2, :cond_6

    add-int/lit8 v3, p3, -0x1

    .line 1445
    aget-char v4, p1, v3

    if-ne v4, v2, :cond_6

    .line 1446
    sget-object v2, Landroid/icu/text/ArabicShaping;->yehHamzaToYeh:[C

    const v4, 0xfe89

    sub-int/2addr v0, v4

    aget-char v0, v2, v0

    aput-char v0, p1, p3

    const v0, 0xfe80

    .line 1447
    aput-char v0, p1, v3

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method private static flipArray([CIII)I
    .locals 2

    if-le p3, p1, :cond_0

    :goto_0
    if-ge p3, p2, :cond_1

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    .line 1190
    aget-char p3, p0, p3

    aput-char p3, p0, p1

    move p1, v0

    move p3, v1

    goto :goto_0

    :cond_0
    move p1, p2

    :cond_1
    return p1
.end method

.method private static getLink(C)I
    .locals 2

    const/16 v0, 0x622

    if-lt p0, v0, :cond_0

    const/16 v1, 0x6d3

    if-gt p0, v1, :cond_0

    .line 925
    sget-object v1, Landroid/icu/text/ArabicShaping;->araLink:[I

    sub-int/2addr p0, v0

    aget p0, v1, p0

    return p0

    :cond_0
    const/16 v0, 0x200d

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/16 v0, 0x206d

    if-lt p0, v0, :cond_2

    const/16 v0, 0x206f

    if-gt p0, v0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const v0, 0xfe70

    if-lt p0, v0, :cond_3

    const v1, 0xfefc

    if-gt p0, v1, :cond_3

    .line 931
    sget-object v1, Landroid/icu/text/ArabicShaping;->presLink:[I

    sub-int/2addr p0, v0

    aget p0, v1, p0

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private handleGeneratedSpaces([CII)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1243
    iget v4, v0, Landroid/icu/text/ArabicShaping;->options:I

    const v5, 0x10003

    and-int/2addr v5, v4

    const/high16 v6, 0xe0000

    and-int/2addr v4, v6

    .line 1248
    iget-boolean v6, v0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    const/4 v7, 0x1

    xor-int/2addr v6, v7

    iget-boolean v0, v0, Landroid/icu/text/ArabicShaping;->spacesRelativeToTextBeginEnd:Z

    xor-int/2addr v0, v7

    and-int/2addr v0, v6

    const/high16 v6, 0x60000

    const/high16 v8, 0x40000

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v0, :cond_4

    if-eq v5, v10, :cond_1

    if-eq v5, v9, :cond_0

    goto :goto_0

    :cond_0
    move v5, v10

    goto :goto_0

    :cond_1
    move v5, v9

    :goto_0
    if-eq v4, v8, :cond_3

    if-eq v4, v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v8

    goto :goto_1

    :cond_3
    move v4, v6

    :cond_4
    :goto_1
    const/16 v0, 0x20

    const v11, 0xffff

    if-ne v5, v7, :cond_6

    add-int v4, v2, v3

    :goto_2
    if-ge v2, v4, :cond_14

    .line 1264
    aget-char v5, v1, v2

    if-ne v5, v11, :cond_5

    .line 1265
    aput-char v0, v1, v2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    add-int v12, v2, v3

    .line 1272
    invoke-static {v1, v3, v11}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    move-result v13

    const v14, 0xfffe

    .line 1273
    invoke-static {v1, v3, v14}, Landroid/icu/text/ArabicShaping;->countSpaceSub([CIC)I

    move-result v15

    const/16 v16, 0x0

    if-ne v5, v10, :cond_7

    move/from16 v17, v7

    goto :goto_3

    :cond_7
    move/from16 v17, v16

    :goto_3
    if-ne v4, v6, :cond_8

    move/from16 v18, v7

    goto :goto_4

    :cond_8
    move/from16 v18, v16

    :goto_4
    if-eqz v17, :cond_9

    if-ne v5, v10, :cond_9

    .line 1284
    invoke-static {v1, v2, v12, v11}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    :goto_5
    if-le v13, v2, :cond_9

    add-int/lit8 v13, v13, -0x1

    .line 1286
    aput-char v0, v1, v13

    goto :goto_5

    :cond_9
    if-eqz v18, :cond_a

    if-ne v4, v6, :cond_a

    .line 1291
    invoke-static {v1, v2, v12, v14}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    :goto_6
    if-le v15, v2, :cond_a

    add-int/lit8 v15, v15, -0x1

    .line 1293
    aput-char v0, v1, v15

    goto :goto_6

    :cond_a
    if-nez v5, :cond_b

    move v6, v7

    goto :goto_7

    :cond_b
    move/from16 v6, v16

    :goto_7
    const/high16 v10, 0x80000

    if-ne v4, v10, :cond_c

    move/from16 v17, v7

    goto :goto_8

    :cond_c
    move/from16 v17, v16

    :goto_8
    if-eqz v6, :cond_d

    if-nez v5, :cond_d

    .line 1308
    invoke-static {v1, v2, v12, v11}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1309
    invoke-static {v1, v2, v12, v13}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v13

    sub-int v3, v13, v2

    :cond_d
    if-eqz v17, :cond_e

    if-ne v4, v10, :cond_e

    .line 1313
    invoke-static {v1, v2, v12, v14}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1314
    invoke-static {v1, v2, v12, v15}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v15

    sub-int v3, v15, v2

    :cond_e
    const/high16 v6, 0x10000

    if-eq v5, v9, :cond_10

    if-ne v5, v6, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v10, v16

    goto :goto_a

    :cond_10
    :goto_9
    move v10, v7

    :goto_a
    if-ne v4, v8, :cond_11

    move/from16 v16, v7

    :cond_11
    if-eqz v10, :cond_13

    if-eq v5, v9, :cond_12

    if-ne v5, v6, :cond_13

    .line 1331
    :cond_12
    invoke-static {v1, v2, v12, v11}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1332
    invoke-static {v1, v2, v12, v13}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v5

    :goto_b
    if-ge v5, v12, :cond_13

    add-int/lit8 v6, v5, 0x1

    .line 1334
    aput-char v0, v1, v5

    move v5, v6

    goto :goto_b

    :cond_13
    if-eqz v16, :cond_14

    if-ne v4, v8, :cond_14

    .line 1338
    invoke-static {v1, v2, v12, v14}, Landroid/icu/text/ArabicShaping;->shiftArray([CIIC)V

    .line 1339
    invoke-static {v1, v2, v12, v15}, Landroid/icu/text/ArabicShaping;->flipArray([CIII)I

    move-result v2

    :goto_c
    if-ge v2, v12, :cond_14

    add-int/lit8 v4, v2, 0x1

    .line 1341
    aput-char v0, v1, v2

    move v2, v4

    goto :goto_c

    :cond_14
    return v3
.end method

.method private static handleTashkeelWithTatweel([CI)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 1210
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x640

    .line 1211
    aput-char v1, p0, v0

    goto :goto_1

    .line 1212
    :cond_0
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isTashkeelOnTatweelChar(C)I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const v1, 0xfe7d

    .line 1213
    aput-char v1, p0, v0

    goto :goto_1

    .line 1214
    :cond_1
    aget-char v1, p0, v0

    invoke-static {v1}, Landroid/icu/text/ArabicShaping;->isIsolatedTashkeelChar(C)I

    move-result v1

    if-ne v1, v2, :cond_2

    aget-char v1, p0, v0

    const v2, 0xfe7c

    if-eq v1, v2, :cond_2

    const/16 v1, 0x20

    .line 1215
    aput-char v1, p0, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private internalShape([CII[CII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    if-nez p6, :cond_2

    .line 1804
    iget p4, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 p5, p4, 0x18

    if-eqz p5, :cond_1

    const p5, 0x10003

    and-int/2addr p4, p5

    if-nez p4, :cond_1

    .line 1807
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/ArabicShaping;->calculateSize([CII)I

    move-result p0

    return p0

    :cond_1
    return p3

    :cond_2
    mul-int/lit8 v1, p3, 0x2

    .line 1814
    new-array v1, v1, [C

    .line 1815
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1817
    iget-boolean p1, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz p1, :cond_3

    .line 1818
    invoke-static {v1, v0, p3}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    .line 1823
    :cond_3
    iget p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit8 p2, p1, 0x18

    const/16 v2, 0x8

    if-eq p2, v2, :cond_6

    const/16 p1, 0x10

    if-eq p2, p1, :cond_5

    const/16 p1, 0x18

    if-eq p2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v1

    move v5, p3

    move v6, p6

    .line 1825
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result p3

    goto :goto_0

    .line 1845
    :cond_5
    invoke-direct {p0, v1, v0, p3, p6}, Landroid/icu/text/ArabicShaping;->deShapeUnicode([CIII)I

    move-result p3

    goto :goto_0

    :cond_6
    const/high16 p2, 0xe0000

    and-int v2, p1, p2

    const/high16 v8, 0xc0000

    if-eqz v2, :cond_7

    and-int/2addr p1, p2

    if-eq p1, v8, :cond_7

    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v2, p0

    move-object v3, v1

    move v5, p3

    move v6, p6

    .line 1832
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result p3

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v5, p3

    move v6, p6

    .line 1835
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/ArabicShaping;->shapeUnicode([CIIII)I

    move-result p1

    .line 1838
    iget v2, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr p2, v2

    if-ne p2, v8, :cond_8

    .line 1839
    invoke-static {v1, p3}, Landroid/icu/text/ArabicShaping;->handleTashkeelWithTatweel([CI)I

    move-result p3

    goto :goto_0

    :cond_8
    move p3, p1

    :goto_0
    if-gt p3, p6, :cond_13

    .line 1856
    iget p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 p2, p1, 0xe0

    if-eqz p2, :cond_11

    const/16 p2, 0x100

    and-int/2addr p1, p2

    const/16 p6, 0x30

    if-eqz p1, :cond_a

    if-eq p1, p2, :cond_9

    move v6, p6

    goto :goto_2

    :cond_9
    const/16 p1, 0x6f0

    goto :goto_1

    :cond_a
    const/16 p1, 0x660

    :goto_1
    move v6, p1

    .line 1871
    :goto_2
    iget p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 p1, p1, 0xe0

    const/16 p2, 0x20

    if-eq p1, p2, :cond_f

    const/16 p2, 0x40

    if-eq p1, p2, :cond_d

    const/16 p2, 0x60

    if-eq p1, p2, :cond_c

    const/16 p2, 0x80

    if-eq p1, p2, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, v1

    move v5, p3

    .line 1902
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    goto :goto_5

    :cond_c
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v1

    move v5, p3

    .line 1898
    invoke-direct/range {v2 .. v7}, Landroid/icu/text/ArabicShaping;->shapeToArabicDigitsWithContext([CIICZ)V

    goto :goto_5

    :cond_d
    add-int/lit8 p1, v6, 0x9

    int-to-char p1, p1

    sub-int/2addr p6, v6

    move p2, v0

    :goto_3
    if-ge p2, p3, :cond_11

    .line 1889
    aget-char v2, v1, p2

    if-gt v2, p1, :cond_e

    if-lt v2, v6, :cond_e

    .line 1891
    aget-char v2, v1, p2

    add-int/2addr v2, p6

    int-to-char v2, v2

    aput-char v2, v1, p2

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_f
    sub-int/2addr v6, p6

    move p1, v0

    :goto_4
    if-ge p1, p3, :cond_11

    .line 1876
    aget-char p2, v1, p1

    const/16 v2, 0x39

    if-gt p2, v2, :cond_10

    if-lt p2, p6, :cond_10

    .line 1878
    aget-char p2, v1, p1

    add-int/2addr p2, v6

    int-to-char p2, p2

    aput-char p2, v1, p1

    :cond_10
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 1910
    :cond_11
    :goto_5
    iget-boolean p0, p0, Landroid/icu/text/ArabicShaping;->isLogical:Z

    if-eqz p0, :cond_12

    .line 1911
    invoke-static {v1, v0, p3}, Landroid/icu/text/ArabicShaping;->invertBuffer([CII)V

    .line 1914
    :cond_12
    invoke-static {v1, v0, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p3

    .line 1853
    :cond_13
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    const-string p1, "not enough room for result data"

    invoke-direct {p0, p1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static invertBuffer([CII)V
    .locals 2

    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_0

    .line 870
    aget-char v0, p0, p1

    .line 871
    aget-char v1, p0, p2

    aput-char v1, p0, p1

    .line 872
    aput-char v0, p0, p2

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static isAlefChar(C)Z
    .locals 1

    const/16 v0, 0x622

    if-eq p0, v0, :cond_1

    const/16 v0, 0x623

    if-eq p0, v0, :cond_1

    const/16 v0, 0x625

    if-eq p0, v0, :cond_1

    const/16 v0, 0x627

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isAlefMaksouraChar(C)Z
    .locals 1

    const v0, 0xfeef

    if-eq p0, v0, :cond_1

    const v0, 0xfef0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x649

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isIsolatedTashkeelChar(C)I
    .locals 3

    const/4 v0, 0x1

    const v1, 0xfe70

    if-lt p0, v1, :cond_0

    const v2, 0xfe7f

    if-gt p0, v2, :cond_0

    const v2, 0xfe73

    if-eq p0, v2, :cond_0

    const v2, 0xfe75

    if-eq p0, v2, :cond_0

    .line 1072
    sget-object v2, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    sub-int/2addr p0, v1

    aget p0, v2, p0

    sub-int/2addr v0, p0

    return v0

    :cond_0
    const v1, 0xfc5e

    if-lt p0, v1, :cond_1

    const v1, 0xfc63

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static isLamAlefChar(C)Z
    .locals 1

    const v0, 0xfef5

    if-lt p0, v0, :cond_0

    const v0, 0xfefc

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNormalizedLamAlefChar(C)Z
    .locals 1

    const/16 v0, 0x65c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x65f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSeenFamilyChar(C)I
    .locals 1

    const/16 v0, 0x633

    if-lt p0, v0, :cond_0

    const/16 v0, 0x636

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isSeenTailFamilyChar(C)I
    .locals 2

    const v0, 0xfeb1

    if-lt p0, v0, :cond_0

    const v1, 0xfebf

    if-ge p0, v1, :cond_0

    .line 981
    sget-object v1, Landroid/icu/text/ArabicShaping;->tailFamilyIsolatedFinal:[I

    sub-int/2addr p0, v0

    aget p0, v1, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isTailChar(C)Z
    .locals 1

    const/16 v0, 0x200b

    if-eq p0, v0, :cond_1

    const v0, 0xfe73

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static isTashkeelChar(C)Z
    .locals 1

    const/16 v0, 0x64b

    if-lt p0, v0, :cond_0

    const/16 v0, 0x652

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTashkeelCharFE(C)Z
    .locals 1

    const v0, 0xfe75

    if-eq p0, v0, :cond_0

    const v0, 0xfe70

    if-lt p0, v0, :cond_0

    const v0, 0xfe7f

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isTashkeelOnTatweelChar(C)I
    .locals 3

    const v0, 0xfe7d

    const v1, 0xfe70

    if-lt p0, v1, :cond_0

    const v2, 0xfe7f

    if-gt p0, v2, :cond_0

    const v2, 0xfe73

    if-eq p0, v2, :cond_0

    const v2, 0xfe75

    if-eq p0, v2, :cond_0

    if-eq p0, v0, :cond_0

    .line 1055
    sget-object v0, Landroid/icu/text/ArabicShaping;->tashkeelMedial:[I

    sub-int/2addr p0, v1

    aget p0, v0, p0

    return p0

    :cond_0
    const v1, 0xfcf2

    if-lt p0, v1, :cond_1

    const v1, 0xfcf4

    if-le p0, v1, :cond_2

    :cond_1
    if-ne p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static isYehHamzaChar(C)Z
    .locals 1

    const v0, 0xfe89

    if-eq p0, v0, :cond_1

    const v0, 0xfe8a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private normalize([CII)I
    .locals 3

    add-int/2addr p3, p2

    const/4 p0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 1567
    aget-char v0, p1, p2

    const v1, 0xfe70

    if-lt v0, v1, :cond_1

    const v2, 0xfefc

    if-gt v0, v2, :cond_1

    .line 1569
    invoke-static {v0}, Landroid/icu/text/ArabicShaping;->isLamAlefChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 1572
    :cond_0
    sget-object v2, Landroid/icu/text/ArabicShaping;->convertFEto06:[I

    sub-int/2addr v0, v1

    aget v0, v2, v0

    int-to-char v0, v0

    aput-char v0, p1, p2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method private shapeToArabicDigitsWithContext([CIICZ)V
    .locals 4

    .line 835
    sget-object p0, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    add-int/lit8 p4, p4, -0x30

    int-to-char p4, p4

    add-int/2addr p3, p2

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lt p3, p2, :cond_4

    .line 839
    aget-char v0, p1, p3

    .line 840
    invoke-virtual {p0, v0}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/16 v0, 0xd

    if-eq v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move p5, v2

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_0

    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    add-int/2addr v0, p4

    int-to-char v0, v0

    .line 850
    aput-char v0, p1, p3

    goto :goto_0

    :cond_3
    const/4 p5, 0x0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private shapeUnicode([CIIII)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    move/from16 v0, p5

    .line 1627
    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->normalize([CII)I

    move-result v4

    add-int v1, p2, p3

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1637
    aget-char v3, p1, v1

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v3

    move v12, v1

    move v7, v3

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    const/4 v15, -0x2

    :goto_1
    if-ltz v1, :cond_16

    const v16, 0xff00

    and-int v16, v7, v16

    const/4 v5, -0x1

    if-nez v16, :cond_0

    .line 1648
    aget-char v16, p1, v1

    invoke-static/range {v16 .. v16}, Landroid/icu/text/ArabicShaping;->isTashkeelChar(C)Z

    move-result v16

    if-eqz v16, :cond_12

    :cond_0
    add-int/lit8 v15, v1, -0x1

    move/from16 v16, v14

    const/4 v14, -0x2

    :goto_2
    if-gez v14, :cond_3

    if-ne v15, v5, :cond_1

    const v14, 0x7fffffff

    const/16 v16, 0x0

    goto :goto_2

    .line 1656
    :cond_1
    aget-char v16, p1, v15

    invoke-static/range {v16 .. v16}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v16

    and-int/lit8 v17, v16, 0x4

    if-nez v17, :cond_2

    move v14, v15

    goto :goto_2

    :cond_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_2

    :cond_3
    and-int/lit8 v15, v7, 0x20

    if-lez v15, :cond_5

    and-int/lit8 v15, v11, 0x10

    if-lez v15, :cond_5

    .line 1667
    aget-char v3, p1, v1

    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->changeLamAlef(C)C

    move-result v3

    if-eqz v3, :cond_4

    const v7, 0xffff

    .line 1670
    aput-char v7, p1, v1

    .line 1671
    aput-char v3, p1, v12

    move v1, v12

    .line 1676
    :cond_4
    invoke-static {v3}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v7

    move v3, v2

    move v11, v13

    :cond_5
    const/16 v15, 0x626

    const/16 v6, 0x20

    if-lez v1, :cond_7

    add-int/lit8 v18, v1, -0x1

    .line 1678
    aget-char v5, p1, v18

    if-ne v5, v6, :cond_7

    .line 1680
    aget-char v5, p1, v1

    invoke-static {v5}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    move-result v5

    if-ne v5, v2, :cond_6

    goto :goto_3

    .line 1682
    :cond_6
    aget-char v5, p1, v1

    if-ne v5, v15, :cond_9

    goto :goto_4

    :cond_7
    if-nez v1, :cond_9

    .line 1687
    aget-char v5, p1, v1

    invoke-static {v5}, Landroid/icu/text/ArabicShaping;->isSeenFamilyChar(C)I

    move-result v5

    if-ne v5, v2, :cond_8

    :goto_3
    move v9, v2

    goto :goto_5

    .line 1689
    :cond_8
    aget-char v5, p1, v1

    if-ne v5, v15, :cond_9

    :goto_4
    move v10, v2

    .line 1699
    :cond_9
    :goto_5
    aget-char v5, p1, v1

    invoke-static {v5}, Landroid/icu/text/ArabicShaping;->specialChar(C)I

    move-result v5

    .line 1701
    sget-object v15, Landroid/icu/text/ArabicShaping;->shapeTable:[[[I

    and-int/lit8 v18, v16, 0x3

    aget-object v15, v15, v18

    and-int/lit8 v18, v11, 0x3

    aget-object v15, v15, v18

    and-int/lit8 v18, v7, 0x3

    aget v15, v15, v18

    const/4 v6, 0x2

    if-ne v5, v2, :cond_a

    and-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_a
    if-ne v5, v6, :cond_f

    if-nez v0, :cond_c

    and-int/lit8 v15, v11, 0x2

    if-eqz v15, :cond_c

    and-int/lit8 v15, v16, 0x1

    if-eqz v15, :cond_c

    .line 1708
    aget-char v15, p1, v1

    const/16 v2, 0x64c

    if-eq v15, v2, :cond_c

    aget-char v2, p1, v1

    const/16 v15, 0x64d

    if-eq v2, v15, :cond_c

    and-int/lit8 v2, v16, 0x20

    const/16 v15, 0x20

    if-ne v2, v15, :cond_b

    and-int/lit8 v2, v11, 0x10

    const/16 v15, 0x10

    if-eq v2, v15, :cond_c

    :cond_b
    const/16 v2, 0x651

    goto :goto_6

    :cond_c
    if-ne v0, v6, :cond_d

    .line 1718
    aget-char v2, p1, v1

    const/16 v15, 0x651

    if-ne v2, v15, :cond_e

    move v2, v15

    :goto_6
    const/4 v15, 0x1

    goto :goto_8

    :cond_d
    const/16 v15, 0x651

    :cond_e
    move v2, v15

    const/4 v15, 0x0

    goto :goto_8

    :cond_f
    :goto_7
    const/16 v2, 0x651

    :goto_8
    const v18, 0xfe70

    if-ne v5, v6, :cond_11

    if-ne v0, v6, :cond_10

    .line 1726
    aget-char v5, p1, v1

    if-eq v5, v2, :cond_10

    const v2, 0xfffe

    .line 1727
    aput-char v2, p1, v1

    move v15, v14

    move/from16 v14, v16

    const/4 v8, 0x1

    goto :goto_a

    .line 1731
    :cond_10
    sget-object v2, Landroid/icu/text/ArabicShaping;->irrelevantPos:[I

    aget-char v5, p1, v1

    add-int/lit16 v5, v5, -0x64b

    aget v2, v2, v5

    add-int v2, v2, v18

    add-int/2addr v2, v15

    int-to-char v2, v2

    aput-char v2, p1, v1

    goto :goto_9

    :cond_11
    shr-int/lit8 v2, v7, 0x8

    add-int v2, v2, v18

    add-int/2addr v2, v15

    int-to-char v2, v2

    .line 1735
    aput-char v2, p1, v1

    :goto_9
    move v15, v14

    move/from16 v14, v16

    :cond_12
    :goto_a
    and-int/lit8 v2, v7, 0x4

    if-nez v2, :cond_13

    move v12, v1

    move v13, v11

    move v11, v7

    :cond_13
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v15, :cond_14

    move v7, v14

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_14
    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    .line 1752
    aget-char v2, p1, v1

    invoke-static {v2}, Landroid/icu/text/ArabicShaping;->getLink(C)I

    move-result v7

    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_16
    if-nez v3, :cond_18

    if-eqz v8, :cond_17

    goto :goto_b

    :cond_17
    move/from16 v3, p3

    goto :goto_c

    .line 1761
    :cond_18
    :goto_b
    invoke-direct/range {p0 .. p3}, Landroid/icu/text/ArabicShaping;->handleGeneratedSpaces([CII)I

    move-result v0

    move v3, v0

    :goto_c
    if-nez v9, :cond_19

    if-eqz v10, :cond_1a

    :cond_19
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1764
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ArabicShaping;->expandCompositChar([CIIII)I

    move-result v3

    :cond_1a
    return v3
.end method

.method private static shiftArray([CIIC)V
    .locals 2

    move v0, p2

    :cond_0
    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lt p2, p1, :cond_1

    .line 1169
    aget-char v1, p0, p2

    if-eq v1, p3, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-eq v0, p2, :cond_0

    .line 1173
    aput-char v1, p0, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static specialChar(C)I
    .locals 1

    const/16 v0, 0x621

    if-le p0, v0, :cond_0

    const/16 v0, 0x626

    if-lt p0, v0, :cond_8

    :cond_0
    const/16 v0, 0x627

    if-eq p0, v0, :cond_8

    const/16 v0, 0x62e

    if-le p0, v0, :cond_1

    const/16 v0, 0x633

    if-lt p0, v0, :cond_8

    :cond_1
    const/16 v0, 0x647

    if-le p0, v0, :cond_2

    const/16 v0, 0x64a

    if-lt p0, v0, :cond_8

    :cond_2
    const/16 v0, 0x629

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/16 v0, 0x64b

    if-lt p0, v0, :cond_4

    const/16 v0, 0x652

    if-gt p0, v0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/16 v0, 0x653

    if-lt p0, v0, :cond_5

    const/16 v0, 0x655

    if-le p0, v0, :cond_7

    :cond_5
    const/16 v0, 0x670

    if-eq p0, v0, :cond_7

    const v0, 0xfe70

    if-lt p0, v0, :cond_6

    const v0, 0xfe7f

    if-gt p0, v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_0
    const/4 p0, 0x3

    return p0

    :cond_8
    :goto_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/icu/text/ArabicShaping;

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/icu/text/ArabicShaping;->options:I

    check-cast p1, Landroid/icu/text/ArabicShaping;

    iget p1, p1, Landroid/icu/text/ArabicShaping;->options:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 551
    iget p0, p0, Landroid/icu/text/ArabicShaping;->options:I

    return p0
.end method

.method public shape([CII[CII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    if-eqz p1, :cond_b

    const-string v0, ") for buffer of length "

    if-ltz p2, :cond_a

    if-ltz p3, :cond_a

    add-int v1, p2, p3

    .line 93
    array-length v2, p1

    if-gt v1, v2, :cond_a

    if-nez p4, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null dest requires destSize == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p6, :cond_3

    if-ltz p5, :cond_2

    if-ltz p6, :cond_2

    add-int v1, p5, p6

    .line 101
    array-length v2, p4

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 103
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bad dest start ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") or size ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_3
    :goto_1
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v1, 0xe0000

    and-int v2, v0, v1

    if-eqz v2, :cond_5

    and-int v2, v0, v1

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_5

    and-int v2, v0, v1

    const/high16 v3, 0x60000

    if-eq v2, v3, :cond_5

    and-int v2, v0, v1

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_5

    and-int/2addr v0, v1

    const/high16 v2, 0xc0000

    if-ne v0, v2, :cond_4

    goto :goto_2

    .line 113
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Tashkeel argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 118
    :cond_5
    :goto_2
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v2, 0x10003

    and-int v3, v0, v2

    if-eqz v3, :cond_7

    and-int v3, v0, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_7

    and-int v3, v0, v2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    and-int v3, v0, v2

    if-eqz v3, :cond_7

    and-int v3, v0, v2

    const/high16 v4, 0x10000

    if-eq v3, v4, :cond_7

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    goto :goto_3

    .line 124
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Lam Alef argument"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 129
    :cond_7
    :goto_3
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    and-int/lit8 v0, v0, 0x18

    const/16 v1, 0x10

    if-eq v0, v1, :cond_8

    goto :goto_4

    .line 130
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tashkeel replacement should not be enabled in deshaping mode "

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_9
    :goto_4
    invoke-direct/range {p0 .. p6}, Landroid/icu/text/ArabicShaping;->internalShape([CII[CII)I

    move-result p0

    return p0

    .line 94
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "bad source start ("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") or length ("

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "source can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 161
    iget p1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v0, 0x10003

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    and-int/lit8 p1, p1, 0x18

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 164
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [C

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    const/4 v2, 0x0

    .line 166
    array-length v3, v1

    const/4 v5, 0x0

    array-length v6, p1

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    move-result p0

    .line 168
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public shape([CII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/ArabicShapingException;
        }
    .end annotation

    .line 145
    iget v0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v1, 0x10003

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 148
    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/ArabicShaping;->shape([CII[CII)I

    return-void

    .line 146
    :cond_0
    new-instance p0, Landroid/icu/text/ArabicShapingException;

    const-string p1, "Cannot shape in place with length option resize."

    invoke-direct {p0, p1}, Landroid/icu/text/ArabicShapingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    .line 559
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const v2, 0x10003

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "lamAlef auto"

    .line 566
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "LamAlef spaces at begin"

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "LamAlef spaces at end"

    .line 565
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v1, "LamAlef spaces at near"

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string v1, "LamAlef resize"

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :goto_0
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, ", visual"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string v1, ", logical"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    :goto_1
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/16 v2, 0x18

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    const/16 v3, 0x8

    if-eq v1, v3, :cond_9

    const/16 v3, 0x10

    if-eq v1, v3, :cond_8

    if-eq v1, v2, :cond_7

    goto :goto_2

    :cond_7
    const-string v1, ", shape letters tashkeel isolated"

    .line 575
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v1, ", unshape letters"

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_9
    const-string v1, ", shape letters"

    .line 574
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    const-string v1, ", no letter shaping"

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    :goto_2
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x700000

    and-int/2addr v1, v2

    const/high16 v2, 0x200000

    if-eq v1, v2, :cond_b

    goto :goto_3

    :cond_b
    const-string v1, ", Seen at near"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    :goto_3
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0x3800000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000000

    if-eq v1, v2, :cond_c

    goto :goto_4

    :cond_c
    const-string v1, ", Yeh Hamza at near"

    .line 582
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_4
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/high16 v2, 0xe0000

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_10

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_f

    const/high16 v2, 0x80000

    if-eq v1, v2, :cond_e

    const/high16 v2, 0xc0000

    if-eq v1, v2, :cond_d

    goto :goto_5

    :cond_d
    const-string v1, ", Tashkeel replace with tatweel"

    .line 587
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_e
    const-string v1, ", Tashkeel resize"

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_f
    const-string v1, ", Tashkeel at end"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_10
    const-string v1, ", Tashkeel at begin"

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :goto_5
    iget v1, p0, Landroid/icu/text/ArabicShaping;->options:I

    and-int/lit16 v1, v1, 0xe0

    if-eqz v1, :cond_15

    const/16 v2, 0x20

    if-eq v1, v2, :cond_14

    const/16 v2, 0x40

    if-eq v1, v2, :cond_13

    const/16 v2, 0x60

    if-eq v1, v2, :cond_12

    const/16 v2, 0x80

    if-eq v1, v2, :cond_11

    goto :goto_6

    :cond_11
    const-string v1, ", shape digits to AN contextually: default AL"

    .line 596
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_12
    const-string v1, ", shape digits to AN contextually: default EN"

    .line 595
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_13
    const-string v1, ", shape digits to EN"

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_14
    const-string v1, ", shape digits to AN"

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_15
    const-string v1, ", no digit shaping"

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    :goto_6
    iget p0, p0, Landroid/icu/text/ArabicShaping;->options:I

    const/16 v1, 0x100

    and-int/2addr p0, v1

    if-eqz p0, :cond_17

    if-eq p0, v1, :cond_16

    goto :goto_7

    :cond_16
    const-string p0, ", extended Arabic-Indic digits"

    .line 600
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_17
    const-string p0, ", standard Arabic-Indic digits"

    .line 599
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string p0, "]"

    .line 602
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
