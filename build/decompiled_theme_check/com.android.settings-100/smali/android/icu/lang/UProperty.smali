.class public interface abstract Landroid/icu/lang/UProperty;
.super Ljava/lang/Object;
.source "UProperty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/lang/UProperty$NameChoice;
    }
.end annotation


# static fields
.field public static final AGE:I = 0x4000

.field public static final ALPHABETIC:I = 0x0

.field public static final ASCII_HEX_DIGIT:I = 0x1

.field public static final BIDI_CLASS:I = 0x1000

.field public static final BIDI_CONTROL:I = 0x2

.field public static final BIDI_MIRRORED:I = 0x3

.field public static final BIDI_MIRRORING_GLYPH:I = 0x4001

.field public static final BIDI_PAIRED_BRACKET:I = 0x400d

.field public static final BIDI_PAIRED_BRACKET_TYPE:I = 0x1015

.field public static final BINARY_LIMIT:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BINARY_START:I = 0x0

.field public static final BLOCK:I = 0x1001

.field public static final CANONICAL_COMBINING_CLASS:I = 0x1002

.field public static final CASED:I = 0x31

.field public static final CASE_FOLDING:I = 0x4002

.field public static final CASE_IGNORABLE:I = 0x32

.field public static final CASE_SENSITIVE:I = 0x22

.field public static final CHANGES_WHEN_CASEFOLDED:I = 0x36

.field public static final CHANGES_WHEN_CASEMAPPED:I = 0x37

.field public static final CHANGES_WHEN_LOWERCASED:I = 0x33

.field public static final CHANGES_WHEN_NFKC_CASEFOLDED:I = 0x38

.field public static final CHANGES_WHEN_TITLECASED:I = 0x35

.field public static final CHANGES_WHEN_UPPERCASED:I = 0x34

.field public static final DASH:I = 0x4

.field public static final DECOMPOSITION_TYPE:I = 0x1003

.field public static final DEFAULT_IGNORABLE_CODE_POINT:I = 0x5

.field public static final DEPRECATED:I = 0x6

.field public static final DIACRITIC:I = 0x7

.field public static final DOUBLE_LIMIT:I = 0x3001
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DOUBLE_START:I = 0x3000

.field public static final EAST_ASIAN_WIDTH:I = 0x1004

.field public static final EMOJI:I = 0x39

.field public static final EMOJI_COMPONENT:I = 0x3d

.field public static final EMOJI_MODIFIER:I = 0x3b

.field public static final EMOJI_MODIFIER_BASE:I = 0x3c

.field public static final EMOJI_PRESENTATION:I = 0x3a

.field public static final EXTENDER:I = 0x8

.field public static final FULL_COMPOSITION_EXCLUSION:I = 0x9

.field public static final GENERAL_CATEGORY:I = 0x1005

.field public static final GENERAL_CATEGORY_MASK:I = 0x2000

.field public static final GRAPHEME_BASE:I = 0xa

.field public static final GRAPHEME_CLUSTER_BREAK:I = 0x1012

.field public static final GRAPHEME_EXTEND:I = 0xb

.field public static final GRAPHEME_LINK:I = 0xc

.field public static final HANGUL_SYLLABLE_TYPE:I = 0x100b

.field public static final HEX_DIGIT:I = 0xd

.field public static final HYPHEN:I = 0xe

.field public static final IDEOGRAPHIC:I = 0x11

.field public static final IDS_BINARY_OPERATOR:I = 0x12

.field public static final IDS_TRINARY_OPERATOR:I = 0x13

.field public static final ID_CONTINUE:I = 0xf

.field public static final ID_START:I = 0x10

.field public static final INT_LIMIT:I = 0x1016
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INT_START:I = 0x1000

.field public static final ISO_COMMENT:I = 0x4003
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final JOINING_GROUP:I = 0x1006

.field public static final JOINING_TYPE:I = 0x1007

.field public static final JOIN_CONTROL:I = 0x14

.field public static final LEAD_CANONICAL_COMBINING_CLASS:I = 0x1010

.field public static final LINE_BREAK:I = 0x1008

.field public static final LOGICAL_ORDER_EXCEPTION:I = 0x15

.field public static final LOWERCASE:I = 0x16

.field public static final LOWERCASE_MAPPING:I = 0x4004

.field public static final MASK_LIMIT:I = 0x2001
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MASK_START:I = 0x2000

.field public static final MATH:I = 0x17

.field public static final NAME:I = 0x4005

.field public static final NFC_INERT:I = 0x27

.field public static final NFC_QUICK_CHECK:I = 0x100e

.field public static final NFD_INERT:I = 0x25

.field public static final NFD_QUICK_CHECK:I = 0x100c

.field public static final NFKC_INERT:I = 0x28

.field public static final NFKC_QUICK_CHECK:I = 0x100f

.field public static final NFKD_INERT:I = 0x26

.field public static final NFKD_QUICK_CHECK:I = 0x100d

.field public static final NONCHARACTER_CODE_POINT:I = 0x18

.field public static final NUMERIC_TYPE:I = 0x1009

.field public static final NUMERIC_VALUE:I = 0x3000

.field public static final OTHER_PROPERTY_LIMIT:I = 0x7001
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OTHER_PROPERTY_START:I = 0x7000

.field public static final PATTERN_SYNTAX:I = 0x2a

.field public static final PATTERN_WHITE_SPACE:I = 0x2b

.field public static final POSIX_ALNUM:I = 0x2c

.field public static final POSIX_BLANK:I = 0x2d

.field public static final POSIX_GRAPH:I = 0x2e

.field public static final POSIX_PRINT:I = 0x2f

.field public static final POSIX_XDIGIT:I = 0x30

.field public static final PREPENDED_CONCATENATION_MARK:I = 0x3f

.field public static final QUOTATION_MARK:I = 0x19

.field public static final RADICAL:I = 0x1a

.field public static final REGIONAL_INDICATOR:I = 0x3e

.field public static final SCRIPT:I = 0x100a

.field public static final SCRIPT_EXTENSIONS:I = 0x7000

.field public static final SEGMENT_STARTER:I = 0x29

.field public static final SENTENCE_BREAK:I = 0x1013

.field public static final SIMPLE_CASE_FOLDING:I = 0x4006

.field public static final SIMPLE_LOWERCASE_MAPPING:I = 0x4007

.field public static final SIMPLE_TITLECASE_MAPPING:I = 0x4008

.field public static final SIMPLE_UPPERCASE_MAPPING:I = 0x4009

.field public static final SOFT_DOTTED:I = 0x1b

.field public static final STRING_LIMIT:I = 0x400e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_START:I = 0x4000

.field public static final S_TERM:I = 0x23

.field public static final TERMINAL_PUNCTUATION:I = 0x1c

.field public static final TITLECASE_MAPPING:I = 0x400a

.field public static final TRAIL_CANONICAL_COMBINING_CLASS:I = 0x1011

.field public static final UNDEFINED:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNICODE_1_NAME:I = 0x400b
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final UNIFIED_IDEOGRAPH:I = 0x1d

.field public static final UPPERCASE:I = 0x1e

.field public static final UPPERCASE_MAPPING:I = 0x400c

.field public static final VARIATION_SELECTOR:I = 0x24

.field public static final WHITE_SPACE:I = 0x1f

.field public static final WORD_BREAK:I = 0x1014

.field public static final XID_CONTINUE:I = 0x20

.field public static final XID_START:I = 0x21
