.class public final Landroid/icu/impl/UCharacterProperty;
.super Ljava/lang/Object;
.source "UCharacterProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCharacterProperty$IsAcceptable;,
        Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;,
        Landroid/icu/impl/UCharacterProperty$CombiningClassIntProperty;,
        Landroid/icu/impl/UCharacterProperty$BiDiIntProperty;,
        Landroid/icu/impl/UCharacterProperty$IntProperty;,
        Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;,
        Landroid/icu/impl/UCharacterProperty$BinaryProperty;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AGE_SHIFT_:I = 0x18

.field private static final ALPHABETIC_PROPERTY_:I = 0x8

.field private static final ASCII_HEX_DIGIT_PROPERTY_:I = 0x7

.field private static final BLOCK_MASK_:I = 0x1ff00

.field private static final BLOCK_SHIFT_:I = 0x8

.field private static final CGJ:I = 0x34f

.field private static final CR:I = 0xd

.field private static final DASH_PROPERTY_:I = 0x1

.field private static final DATA_FILE_NAME_:Ljava/lang/String; = "uprops.icu"

.field private static final DATA_FORMAT:I = 0x5550726f

.field private static final DECOMPOSITION_TYPE_MASK_:I = 0x1f

.field private static final DEFAULT_IGNORABLE_CODE_POINT_PROPERTY_:I = 0x13

.field private static final DEL:I = 0x7f

.field private static final DEPRECATED_PROPERTY_:I = 0x14

.field private static final DIACRITIC_PROPERTY_:I = 0xa

.field private static final EAST_ASIAN_MASK_:I = 0xe0000

.field private static final EAST_ASIAN_SHIFT_:I = 0x11

.field private static final EXTENDER_PROPERTY_:I = 0xb

.field private static final FIGURESP:I = 0x2007

.field private static final FIRST_NIBBLE_SHIFT_:I = 0x4

.field private static final GCB_MASK:I = 0x3e0

.field private static final GCB_SHIFT:I = 0x5

.field private static final GC_CC_MASK:I

.field private static final GC_CN_MASK:I

.field private static final GC_CS_MASK:I

.field private static final GC_ZL_MASK:I

.field private static final GC_ZP_MASK:I

.field private static final GC_ZS_MASK:I

.field private static final GC_Z_MASK:I

.field private static final GRAPHEME_BASE_PROPERTY_:I = 0x1a

.field private static final GRAPHEME_EXTEND_PROPERTY_:I = 0xd

.field private static final GRAPHEME_LINK_PROPERTY_:I = 0xe

.field private static final HAIRSP:I = 0x200a

.field private static final HEX_DIGIT_PROPERTY_:I = 0x6

.field private static final HYPHEN_PROPERTY_:I = 0x2

.field private static final IDEOGRAPHIC_PROPERTY_:I = 0x9

.field private static final IDS_BINARY_OPERATOR_PROPERTY_:I = 0xf

.field private static final IDS_TRINARY_OPERATOR_PROPERTY_:I = 0x10

.field private static final ID_CONTINUE_PROPERTY_:I = 0x19

.field private static final ID_START_PROPERTY_:I = 0x18

.field private static final INHSWAP:I = 0x206a

.field public static final INSTANCE:Landroid/icu/impl/UCharacterProperty;

.field private static final LAST_NIBBLE_MASK_:I = 0xf

.field public static final LATIN_CAPITAL_LETTER_I_WITH_DOT_ABOVE_:C = '\u0130'

.field public static final LATIN_SMALL_LETTER_DOTLESS_I_:C = '\u0131'

.field public static final LATIN_SMALL_LETTER_I_:C = 'i'

.field private static final LB_MASK:I = 0x3f00000

.field private static final LB_SHIFT:I = 0x14

.field private static final LOGICAL_ORDER_EXCEPTION_PROPERTY_:I = 0x15

.field private static final MATH_PROPERTY_:I = 0x5

.field static final MY_MASK:I = 0x1e

.field private static final NBSP:I = 0xa0

.field private static final NL:I = 0x85

.field private static final NNBSP:I = 0x202f

.field private static final NOMDIG:I = 0x206f

.field private static final NONCHARACTER_CODE_POINT_PROPERTY_:I = 0xc

.field private static final NTV_BASE60_START_:I = 0x300

.field private static final NTV_DECIMAL_START_:I = 0x1

.field private static final NTV_DIGIT_START_:I = 0xb

.field private static final NTV_FRACTION20_START_:I = 0x324

.field private static final NTV_FRACTION_START_:I = 0xb0

.field private static final NTV_LARGE_START_:I = 0x1e0

.field private static final NTV_NONE_:I = 0x0

.field private static final NTV_NUMERIC_START_:I = 0x15

.field private static final NTV_RESERVED_START_:I = 0x33c

.field private static final NUMERIC_TYPE_VALUE_SHIFT_:I = 0x6

.field private static final PATTERN_SYNTAX:I = 0x1d

.field private static final PATTERN_WHITE_SPACE:I = 0x1e

.field private static final PREPENDED_CONCATENATION_MARK:I = 0x1f

.field private static final PROPS_2_EMOJI:I = 0x1c

.field private static final PROPS_2_EMOJI_COMPONENT:I = 0x1b

.field private static final PROPS_2_EMOJI_MODIFIER:I = 0x1e

.field private static final PROPS_2_EMOJI_MODIFIER_BASE:I = 0x1f

.field private static final PROPS_2_EMOJI_PRESENTATION:I = 0x1d

.field private static final QUOTATION_MARK_PROPERTY_:I = 0x3

.field private static final RADICAL_PROPERTY_:I = 0x11

.field private static final RLM:I = 0x200f

.field private static final SB_MASK:I = 0xf8000

.field private static final SB_SHIFT:I = 0xf

.field public static final SCRIPT_MASK_:I = 0xff

.field public static final SCRIPT_X_MASK:I = 0xc000ff

.field public static final SCRIPT_X_WITH_COMMON:I = 0x400000

.field public static final SCRIPT_X_WITH_INHERITED:I = 0x800000

.field public static final SCRIPT_X_WITH_OTHER:I = 0xc00000

.field public static final SRC_BIDI:I = 0x5

.field public static final SRC_CASE:I = 0x4

.field public static final SRC_CASE_AND_NORM:I = 0x7

.field public static final SRC_CHAR:I = 0x1

.field public static final SRC_CHAR_AND_PROPSVEC:I = 0x6

.field public static final SRC_COUNT:I = 0xc

.field public static final SRC_NAMES:I = 0x3

.field public static final SRC_NFC:I = 0x8

.field public static final SRC_NFC_CANON_ITER:I = 0xb

.field public static final SRC_NFKC:I = 0x9

.field public static final SRC_NFKC_CF:I = 0xa

.field public static final SRC_NONE:I = 0x0

.field public static final SRC_PROPSVEC:I = 0x2

.field private static final S_TERM_PROPERTY_:I = 0x1b

.field private static final TAB:I = 0x9

.field private static final TERMINAL_PUNCTUATION_PROPERTY_:I = 0x4

.field public static final TYPE_MASK:I = 0x1f

.field private static final UNIFIED_IDEOGRAPH_PROPERTY_:I = 0x12

.field private static final U_A:I = 0x41

.field private static final U_F:I = 0x46

.field private static final U_FW_A:I = 0xff21

.field private static final U_FW_F:I = 0xff26

.field private static final U_FW_Z:I = 0xff3a

.field private static final U_FW_a:I = 0xff41

.field private static final U_FW_f:I = 0xff46

.field private static final U_FW_z:I = 0xff5a

.field private static final U_Z:I = 0x5a

.field private static final U_a:I = 0x61

.field private static final U_f:I = 0x66

.field private static final U_z:I = 0x7a

.field private static final VARIATION_SELECTOR_PROPERTY_:I = 0x1c

.field private static final WB_MASK:I = 0x7c00

.field private static final WB_SHIFT:I = 0xa

.field private static final WHITE_SPACE_PROPERTY_:I = 0x0

.field private static final WJ:I = 0x2060

.field private static final XID_CONTINUE_PROPERTY_:I = 0x17

.field private static final XID_START_PROPERTY_:I = 0x16

.field private static final ZWNBSP:I = 0xfeff

.field private static final gcbToHst:[I


# instance fields
.field binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

.field intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

.field m_additionalColumnsCount_:I

.field m_additionalTrie_:Landroid/icu/impl/Trie2_16;

.field m_additionalVectors_:[I

.field m_maxBlockScriptValue_:I

.field m_maxJTGValue_:I

.field public m_scriptExtensions_:[C

.field public m_trie_:Landroid/icu/impl/Trie2_16;

.field public m_unicodeVersion_:Landroid/icu/util/VersionInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 164
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    const/16 v0, 0xf

    .line 165
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    const/16 v0, 0x12

    .line 166
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    const/16 v0, 0xc

    .line 167
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    const/16 v0, 0xd

    .line 168
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    const/16 v0, 0xe

    .line 169
    invoke-static {v0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result v0

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    .line 171
    sget v0, Landroid/icu/impl/UCharacterProperty;->GC_ZS_MASK:I

    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_ZL_MASK:I

    or-int/2addr v0, v1

    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_ZP_MASK:I

    or-int/2addr v0, v1

    sput v0, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 438
    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    .line 1448
    :try_start_0
    new-instance v0, Landroid/icu/impl/UCharacterProperty;

    invoke-direct {v0}, Landroid/icu/impl/UCharacterProperty;-><init>()V

    sput-object v0, Landroid/icu/impl/UCharacterProperty;->INSTANCE:Landroid/icu/impl/UCharacterProperty;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1451
    new-instance v1, Ljava/util/MissingResourceException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-direct {v1, v0, v2, v2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x4
        0x5
        0x3
        0x2
    .end array-data
.end method

.method private constructor <init>()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x40

    new-array v2, v1, [Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    .line 234
    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/4 v4, 0x1

    const/16 v5, 0x100

    invoke-direct {v3, v0, v4, v5}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v6, 0x80

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$1;

    const/4 v6, 0x5

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$1;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v7, 0x2

    aput-object v3, v2, v7

    new-instance v3, Landroid/icu/impl/UCharacterProperty$2;

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$2;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v8, 0x3

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v7}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v8, 0x4

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v9, 0x80000

    invoke-direct {v3, v0, v4, v9}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v9, 0x100000

    invoke-direct {v3, v0, v4, v9}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v9, 0x6

    aput-object v3, v2, v9

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v10, 0x400

    invoke-direct {v3, v0, v4, v10}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/4 v10, 0x7

    aput-object v3, v2, v10

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v11, 0x800

    invoke-direct {v3, v0, v4, v11}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v11, 0x8

    aput-object v3, v2, v11

    new-instance v3, Landroid/icu/impl/UCharacterProperty$3;

    invoke-direct {v3, v0, v11}, Landroid/icu/impl/UCharacterProperty$3;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v12, 0x9

    aput-object v3, v2, v12

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v13, 0x4000000

    invoke-direct {v3, v0, v4, v13}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v13, 0xa

    aput-object v3, v2, v13

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v14, 0x2000

    invoke-direct {v3, v0, v4, v14}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v14, 0xb

    aput-object v3, v2, v14

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v15, 0x4000

    invoke-direct {v3, v0, v4, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0xc

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0xd

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v8}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0xe

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v15, 0x2000000

    invoke-direct {v3, v0, v4, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0xf

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v1, 0x1000000

    invoke-direct {v3, v0, v4, v1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v1, 0x10

    aput-object v3, v2, v1

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v15, 0x200

    invoke-direct {v3, v0, v4, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0x11

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const v15, 0x8000

    invoke-direct {v3, v0, v4, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0x12

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v15, 0x10000

    invoke-direct {v3, v0, v4, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0x13

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$4;

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$4;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v15, 0x14

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v15, 0x200000

    invoke-direct {v3, v0, v4, v15}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v15, 0x15

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v15, 0x16

    invoke-direct {v3, v0, v15}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v15

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v6, 0x20

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x17

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/16 v6, 0x1000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x18

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v11}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x19

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x20000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1a

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x1b

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1c

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x40000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1d

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x1e

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    invoke-direct {v3, v0, v4, v4}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x1f

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x800000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x20

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x400000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x21

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x22

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x8000000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x23

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x10000000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x24

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x25

    invoke-direct {v3, v0, v11, v6}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x26

    invoke-direct {v3, v0, v12, v6}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x27

    invoke-direct {v3, v0, v11, v6}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;

    const/16 v6, 0x28

    invoke-direct {v3, v0, v12, v6}, Landroid/icu/impl/UCharacterProperty$NormInertBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$5;

    invoke-direct {v3, v0, v14}, Landroid/icu/impl/UCharacterProperty$5;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x29

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x20000000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x2a

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x2b

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$6;

    invoke-direct {v3, v0, v9}, Landroid/icu/impl/UCharacterProperty$6;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2c

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$7;

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$7;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2d

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$8;

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$8;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2e

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$9;

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$9;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x2f

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$10;

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$10;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x30

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x31

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x32

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x33

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x34

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x35

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$11;

    invoke-direct {v3, v0, v10}, Landroid/icu/impl/UCharacterProperty$11;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x36

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;

    const/16 v6, 0x37

    invoke-direct {v3, v0, v6}, Landroid/icu/impl/UCharacterProperty$CaseBinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$12;

    invoke-direct {v3, v0, v13}, Landroid/icu/impl/UCharacterProperty$12;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x38

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x10000000

    invoke-direct {v3, v0, v7, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x39

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x20000000

    invoke-direct {v3, v0, v7, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3a

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v3, v0, v7, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3b

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, -0x80000000

    invoke-direct {v3, v0, v7, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3c

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, 0x8000000

    invoke-direct {v3, v0, v7, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3d

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$13;

    invoke-direct {v3, v0, v7}, Landroid/icu/impl/UCharacterProperty$13;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v6, 0x3e

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    const/high16 v6, -0x80000000

    invoke-direct {v3, v0, v4, v6}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;-><init>(Landroid/icu/impl/UCharacterProperty;II)V

    const/16 v6, 0x3f

    aput-object v3, v2, v6

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    new-array v2, v15, [Landroid/icu/impl/UCharacterProperty$IntProperty;

    .line 518
    new-instance v3, Landroid/icu/impl/UCharacterProperty$14;

    invoke-direct {v3, v0}, Landroid/icu/impl/UCharacterProperty$14;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    aput-object v3, v2, v5

    new-instance v3, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const v6, 0x1ff00

    invoke-direct {v3, v0, v5, v6, v11}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$15;

    invoke-direct {v3, v0, v11}, Landroid/icu/impl/UCharacterProperty$15;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/16 v6, 0x1f

    invoke-direct {v3, v0, v7, v6, v5}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/4 v6, 0x3

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/high16 v6, 0xe0000

    const/16 v15, 0x11

    invoke-direct {v3, v0, v5, v6, v15}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v3, v2, v8

    new-instance v3, Landroid/icu/impl/UCharacterProperty$16;

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$16;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/4 v6, 0x5

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$17;

    invoke-direct {v3, v0}, Landroid/icu/impl/UCharacterProperty$17;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    aput-object v3, v2, v9

    new-instance v3, Landroid/icu/impl/UCharacterProperty$18;

    invoke-direct {v3, v0}, Landroid/icu/impl/UCharacterProperty$18;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    aput-object v3, v2, v10

    new-instance v3, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/high16 v6, 0x3f00000

    const/16 v9, 0x14

    invoke-direct {v3, v0, v7, v6, v9}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v3, v2, v11

    new-instance v3, Landroid/icu/impl/UCharacterProperty$19;

    invoke-direct {v3, v0, v4}, Landroid/icu/impl/UCharacterProperty$19;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v12

    new-instance v3, Landroid/icu/impl/UCharacterProperty$20;

    const/16 v6, 0xff

    invoke-direct {v3, v0, v5, v6, v5}, Landroid/icu/impl/UCharacterProperty$20;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    aput-object v3, v2, v13

    new-instance v3, Landroid/icu/impl/UCharacterProperty$21;

    invoke-direct {v3, v0, v7}, Landroid/icu/impl/UCharacterProperty$21;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v14

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v6, 0x100c

    invoke-direct {v3, v0, v11, v6, v4}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v6, 0xc

    aput-object v3, v2, v6

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v6, 0x100d

    invoke-direct {v3, v0, v12, v6, v4}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0xd

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v4, 0x100e

    invoke-direct {v3, v0, v11, v4, v7}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0xe

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;

    const/16 v4, 0x100f

    invoke-direct {v3, v0, v12, v4, v7}, Landroid/icu/impl/UCharacterProperty$NormQuickCheckIntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0xf

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$22;

    invoke-direct {v3, v0, v11}, Landroid/icu/impl/UCharacterProperty$22;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    aput-object v3, v2, v1

    new-instance v3, Landroid/icu/impl/UCharacterProperty$23;

    invoke-direct {v3, v0, v11}, Landroid/icu/impl/UCharacterProperty$23;-><init>(Landroid/icu/impl/UCharacterProperty;I)V

    const/16 v4, 0x11

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/16 v4, 0x3e0

    const/4 v6, 0x5

    invoke-direct {v3, v0, v7, v4, v6}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0x12

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const v4, 0xf8000

    const/16 v6, 0xf

    invoke-direct {v3, v0, v7, v4, v6}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0x13

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$IntProperty;

    const/16 v4, 0x7c00

    invoke-direct {v3, v0, v7, v4, v13}, Landroid/icu/impl/UCharacterProperty$IntProperty;-><init>(Landroid/icu/impl/UCharacterProperty;III)V

    const/16 v4, 0x14

    aput-object v3, v2, v4

    new-instance v3, Landroid/icu/impl/UCharacterProperty$24;

    invoke-direct {v3, v0}, Landroid/icu/impl/UCharacterProperty$24;-><init>(Landroid/icu/impl/UCharacterProperty;)V

    const/16 v4, 0x15

    aput-object v3, v2, v4

    iput-object v2, v0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    .line 1224
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    array-length v2, v2

    const/16 v3, 0x40

    if-ne v2, v3, :cond_5

    .line 1227
    iget-object v2, v0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    array-length v2, v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_4

    const-string/jumbo v2, "uprops.icu"

    .line 1232
    invoke-static {v2}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    const v3, 0x5550726f

    .line 1233
    new-instance v4, Landroid/icu/impl/UCharacterProperty$IsAcceptable;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/icu/impl/UCharacterProperty$IsAcceptable;-><init>(Landroid/icu/impl/UCharacterProperty$1;)V

    invoke-static {v2, v3, v4}, Landroid/icu/impl/ICUBinary;->readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)Landroid/icu/util/VersionInfo;

    move-result-object v3

    iput-object v3, v0, Landroid/icu/impl/UCharacterProperty;->m_unicodeVersion_:Landroid/icu/util/VersionInfo;

    .line 1235
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 1236
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1237
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1238
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 1239
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    .line 1240
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    iput v9, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    .line 1241
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    .line 1242
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    .line 1243
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1244
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    .line 1245
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    .line 1246
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v11

    iput v11, v0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    .line 1247
    invoke-static {v2, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1250
    invoke-static {v2}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    add-int/lit8 v1, v3, -0x10

    mul-int/2addr v1, v8

    .line 1252
    iget-object v11, v0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v11}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v11

    if-gt v11, v1, :cond_3

    sub-int/2addr v1, v11

    .line 1257
    invoke-static {v2, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    sub-int v1, v4, v3

    mul-int/2addr v1, v8

    .line 1260
    invoke-static {v2, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 1262
    iget v1, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v1, :cond_1

    .line 1264
    invoke-static {v2}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    sub-int v1, v6, v4

    mul-int/2addr v1, v8

    .line 1266
    iget-object v3, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v3}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v3

    if-gt v3, v1, :cond_0

    sub-int/2addr v1, v3

    .line 1271
    invoke-static {v2, v1}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    sub-int v1, v9, v6

    .line 1275
    invoke-static {v2, v1, v5}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    goto :goto_0

    .line 1268
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "uprops.icu: not enough bytes for additional-properties trie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    sub-int/2addr v10, v9

    mul-int/2addr v10, v7

    if-lez v10, :cond_2

    .line 1281
    invoke-static {v2, v10, v5}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/UCharacterProperty;->m_scriptExtensions_:[C

    :cond_2
    return-void

    .line 1254
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "uprops.icu: not enough bytes for main trie"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1228
    :cond_4
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "intProps.length!=(UProperty.INT_LIMIT-UProperty.INT_START)"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1225
    :cond_5
    new-instance v0, Landroid/icu/util/ICUException;

    const-string v1, "binProps.length!=UProperty.BINARY_LIMIT"

    invoke-direct {v0, v1}, Landroid/icu/util/ICUException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(I)Z
    .locals 0

    .line 45
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->isgraphPOSIX(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(I)I
    .locals 0

    .line 45
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 45
    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->ntvGetType(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300()[I
    .locals 1

    .line 45
    sget-object v0, Landroid/icu/impl/UCharacterProperty;->gcbToHst:[I

    return-object v0
.end method

.method public static getEuropeanDigit(I)I
    .locals 7

    const v0, 0xff21

    const/16 v1, 0x7a

    if-le p0, v1, :cond_0

    if-lt p0, v0, :cond_6

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_6

    const/16 v3, 0x61

    const/16 v4, 0x5a

    if-le p0, v4, :cond_1

    if-lt p0, v3, :cond_6

    :cond_1
    const v5, 0xff5a

    if-gt p0, v5, :cond_6

    const v5, 0xff41

    const v6, 0xff3a

    if-le p0, v6, :cond_2

    if-ge p0, v5, :cond_2

    goto :goto_1

    :cond_2
    if-gt p0, v1, :cond_4

    add-int/lit8 v0, p0, 0xa

    if-gt p0, v4, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    :goto_0
    sub-int/2addr v0, v2

    return v0

    :cond_4
    if-gt p0, v6, :cond_5

    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v0

    return p0

    :cond_5
    add-int/lit8 p0, p0, 0xa

    sub-int/2addr p0, v5

    return p0

    :cond_6
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final getMask(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method private static final getNumericTypeValue(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x6

    return p0
.end method

.method private static final isgraphPOSIX(I)Z
    .locals 2

    .line 183
    invoke-static {p0}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result p0

    sget v0, Landroid/icu/impl/UCharacterProperty;->GC_CC_MASK:I

    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_CS_MASK:I

    or-int/2addr v0, v1

    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_CN_MASK:I

    or-int/2addr v0, v1

    sget v1, Landroid/icu/impl/UCharacterProperty;->GC_Z_MASK:I

    or-int/2addr v0, v1

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final ntvGetType(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x15

    if-ge p0, v0, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0
.end method


# virtual methods
.method public addPropertyStarts(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 2

    .line 1342
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1344
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_0

    .line 1345
    iget v0, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    const/16 p0, 0x9

    .line 1351
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0xa

    .line 1352
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0xe

    .line 1355
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x1c

    .line 1356
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x20

    .line 1357
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x85

    .line 1358
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x86

    .line 1359
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x7f

    .line 1362
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x200a

    .line 1363
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x2010

    .line 1364
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x206a

    .line 1365
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x2070

    .line 1366
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xfeff

    .line 1367
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xff00

    .line 1368
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0xa0

    .line 1371
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0xa1

    .line 1372
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x2007

    .line 1373
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x2008

    .line 1374
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x202f

    .line 1375
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x2030

    .line 1376
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x3007

    .line 1381
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x3008

    .line 1382
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e00

    .line 1383
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e01

    .line 1384
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e8c

    .line 1385
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e8d

    .line 1386
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e09

    .line 1387
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e0a

    .line 1388
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x56db

    .line 1389
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x56dc

    .line 1390
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e94

    .line 1391
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e95

    .line 1392
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x516d

    .line 1393
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x516e

    .line 1394
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e03

    .line 1395
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e04

    .line 1396
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x516b

    .line 1397
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x516c

    .line 1398
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e5d

    .line 1399
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x4e5e

    .line 1400
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x61

    .line 1403
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x7b

    .line 1404
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x41

    .line 1405
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x5b

    .line 1406
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xff41

    .line 1407
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xff5b

    .line 1408
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xff21

    .line 1409
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xff3b

    .line 1410
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x67

    .line 1413
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x47

    .line 1414
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xff47

    .line 1415
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xff27

    .line 1416
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x2060

    .line 1419
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xfff0

    .line 1420
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xfffc

    .line 1421
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/high16 p0, 0xe0000

    .line 1422
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const p0, 0xe1000

    .line 1423
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x34f

    .line 1426
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    const/16 p0, 0x350

    .line 1427
    invoke-virtual {p1, p0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-object p1
.end method

.method public digit(I)I
    .locals 0

    .line 825
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/16 p1, 0x9

    if-gt p0, p1, :cond_0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getAdditional(II)I
    .locals 1

    .line 130
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lt p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalVectors_:[I

    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    add-int/2addr p0, p2

    aget p0, v0, p0

    return p0
.end method

.method public getAge(I)Landroid/icu/util/VersionInfo;
    .locals 1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/UCharacterProperty;->getAdditional(II)I

    move-result p0

    shr-int/lit8 p0, p0, 0x18

    shr-int/lit8 p1, p0, 0x4

    and-int/lit8 p1, p1, 0xf

    and-int/lit8 p0, p0, 0xf

    .line 159
    invoke-static {p1, p0, v0, v0}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public getIntPropertyMaxValue(I)I
    .locals 1

    const/16 v0, 0x1000

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_1

    const/16 p0, 0x40

    if-ge p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 v0, 0x1016

    if-ge p1, v0, :cond_1

    .line 637
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    add-int/lit16 v0, p1, -0x1000

    aget-object p0, p0, v0

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getMaxValue(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIntPropertyValue(II)I
    .locals 2

    const/16 v0, 0x1000

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_2

    const/16 v0, 0x40

    if-ge p2, v0, :cond_2

    .line 621
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object p0, p0, p2

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result p0

    return p0

    :cond_0
    const/16 v1, 0x1016

    if-ge p2, v1, :cond_1

    .line 624
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    sub-int/2addr p2, v0

    aget-object p0, p0, p2

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getValue(I)I

    move-result p0

    return p0

    :cond_1
    const/16 v0, 0x2000

    if-ne p2, v0, :cond_2

    .line 626
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getType(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getMask(I)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public getMaxValues(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 781
    :cond_0
    iget p0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxJTGValue_:I

    return p0

    .line 779
    :cond_1
    iget p0, p0, Landroid/icu/impl/UCharacterProperty;->m_maxBlockScriptValue_:I

    return p0
.end method

.method public getNumericValue(I)I
    .locals 3

    .line 835
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p0

    if-nez p0, :cond_0

    .line 838
    invoke-static {p1}, Landroid/icu/impl/UCharacterProperty;->getEuropeanDigit(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p1, 0xb

    const/4 v0, 0x1

    if-ge p0, p1, :cond_1

    sub-int/2addr p0, v0

    return p0

    :cond_1
    const/16 v1, 0x15

    if-ge p0, v1, :cond_2

    sub-int/2addr p0, p1

    return p0

    :cond_2
    const/16 p1, 0xb0

    if-ge p0, p1, :cond_3

    sub-int/2addr p0, v1

    return p0

    :cond_3
    const/16 p1, 0x1e0

    const/4 v1, -0x2

    if-ge p0, p1, :cond_4

    return v1

    :cond_4
    const/16 p1, 0x300

    const/4 v2, 0x2

    if-ge p0, p1, :cond_7

    shr-int/lit8 p1, p0, 0x5

    add-int/lit8 p1, p1, -0xe

    and-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v2

    const/16 v0, 0x9

    if-lt p0, v0, :cond_6

    if-ne p0, v0, :cond_5

    if-gt p1, v2, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p0, p0, -0x1

    if-gtz p0, :cond_6

    return p1

    :cond_7
    const/16 p1, 0x324

    if-ge p0, p1, :cond_c

    shr-int/lit8 p1, p0, 0x2

    add-int/lit16 p1, p1, -0xbf

    const/4 v1, 0x3

    and-int/2addr p0, v1

    add-int/2addr p0, v0

    if-eq p0, v0, :cond_b

    if-eq p0, v2, :cond_a

    if-eq p0, v1, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_8

    goto :goto_2

    :cond_8
    const p0, 0xc5c100

    goto :goto_1

    :cond_9
    const p0, 0x34bc0

    :goto_1
    mul-int/2addr p1, p0

    goto :goto_2

    :cond_a
    mul-int/lit16 p1, p1, 0xe10

    goto :goto_2

    :cond_b
    mul-int/lit8 p1, p1, 0x3c

    :goto_2
    return p1

    :cond_c
    const/16 p1, 0x33c

    if-ge p0, p1, :cond_d

    :cond_d
    return v1
.end method

.method public final getProperty(I)I
    .locals 0

    .line 117
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->m_trie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result p0

    return p0
.end method

.method public final getSource(I)I
    .locals 3

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x40

    if-ge p1, v1, :cond_1

    .line 646
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->getSource()I

    move-result p0

    return p0

    :cond_1
    const/16 v1, 0x1000

    if-ge p1, v1, :cond_2

    return v0

    :cond_2
    const/16 v2, 0x1016

    if-ge p1, v2, :cond_3

    .line 650
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->intProps:[Landroid/icu/impl/UCharacterProperty$IntProperty;

    sub-int/2addr p1, v1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Landroid/icu/impl/UCharacterProperty$IntProperty;->getSource()I

    move-result p0

    return p0

    :cond_3
    const/16 p0, 0x4000

    if-ge p1, p0, :cond_5

    const/16 p0, 0x2000

    if-eq p1, p0, :cond_4

    const/16 p0, 0x3000

    if-eq p1, p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    const/16 p0, 0x400e

    const/4 v1, 0x2

    if-ge p1, p0, :cond_6

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x4

    return p0

    :pswitch_2
    const/4 p0, 0x5

    return p0

    :pswitch_3
    return v1

    :cond_6
    const/16 p0, 0x7000

    if-eq p1, p0, :cond_7

    return v0

    :cond_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(I)I
    .locals 0

    .line 431
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result p0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method public getUnicodeNumericValue(I)D
    .locals 8

    .line 899
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty;->getProperty(I)I

    move-result p0

    invoke-static {p0}, Landroid/icu/impl/UCharacterProperty;->getNumericTypeValue(I)I

    move-result p0

    const-wide v0, -0x3e6290cbac000000L    # -1.23456789E8

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    const/16 p1, 0xb

    const/4 v2, 0x1

    if-ge p0, p1, :cond_1

    sub-int/2addr p0, v2

    :goto_0
    int-to-double p0, p0

    return-wide p0

    :cond_1
    const/16 v3, 0x15

    if-ge p0, v3, :cond_2

    sub-int/2addr p0, p1

    goto :goto_0

    :cond_2
    const/16 p1, 0xb0

    if-ge p0, p1, :cond_3

    sub-int/2addr p0, v3

    goto :goto_0

    :cond_3
    const/16 p1, 0x1e0

    if-ge p0, p1, :cond_4

    shr-int/lit8 p1, p0, 0x4

    add-int/lit8 p1, p1, -0xc

    and-int/lit8 p0, p0, 0xf

    add-int/2addr p0, v2

    :goto_1
    int-to-double v0, p1

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0

    :cond_4
    const/16 p1, 0x300

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ge p0, p1, :cond_9

    shr-int/lit8 p1, p0, 0x5

    add-int/lit8 p1, p1, -0xe

    and-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v5

    int-to-double v0, p1

    :goto_2
    if-lt p0, v3, :cond_5

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v6

    add-int/lit8 p0, p0, -0x4

    goto :goto_2

    :cond_5
    if-eq p0, v2, :cond_8

    if-eq p0, v5, :cond_7

    if-eq p0, v4, :cond_6

    goto :goto_4

    :cond_6
    const-wide p0, 0x408f400000000000L    # 1000.0

    goto :goto_3

    :cond_7
    const-wide/high16 p0, 0x4059000000000000L    # 100.0

    goto :goto_3

    :cond_8
    const-wide/high16 p0, 0x4024000000000000L    # 10.0

    :goto_3
    mul-double/2addr v0, p0

    :goto_4
    return-wide v0

    :cond_9
    const/16 p1, 0x324

    if-ge p0, p1, :cond_e

    shr-int/lit8 p1, p0, 0x2

    add-int/lit16 p1, p1, -0xbf

    and-int/2addr p0, v4

    add-int/2addr p0, v2

    if-eq p0, v2, :cond_d

    if-eq p0, v5, :cond_c

    if-eq p0, v4, :cond_b

    if-eq p0, v3, :cond_a

    goto :goto_6

    :cond_a
    const p0, 0xc5c100

    goto :goto_5

    :cond_b
    const p0, 0x34bc0

    :goto_5
    mul-int/2addr p1, p0

    goto :goto_6

    :cond_c
    mul-int/lit16 p1, p1, 0xe10

    goto :goto_6

    :cond_d
    mul-int/lit8 p1, p1, 0x3c

    :goto_6
    int-to-double p0, p1

    return-wide p0

    :cond_e
    const/16 v3, 0x33c

    if-ge p0, v3, :cond_f

    sub-int/2addr p0, p1

    and-int/lit8 p1, p0, 0x3

    mul-int/2addr p1, v5

    add-int/2addr p1, v2

    const/16 v0, 0x14

    shr-int/2addr p0, v5

    shl-int p0, v0, p0

    goto :goto_1

    :cond_f
    return-wide v0
.end method

.method public hasBinaryProperty(II)Z
    .locals 1

    if-ltz p2, :cond_1

    const/16 v0, 0x40

    if-gt v0, p2, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->binProps:[Landroid/icu/impl/UCharacterProperty$BinaryProperty;

    aget-object p0, p0, p2

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCharacterProperty$BinaryProperty;->contains(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public upropsvec_addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 2

    .line 1434
    iget v0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalColumnsCount_:I

    if-lez v0, :cond_0

    .line 1436
    iget-object p0, p0, Landroid/icu/impl/UCharacterProperty;->m_additionalTrie_:Landroid/icu/impl/Trie2_16;

    invoke-virtual {p0}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 1438
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v1, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-nez v1, :cond_0

    .line 1439
    iget v0, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_0
    return-void
.end method
