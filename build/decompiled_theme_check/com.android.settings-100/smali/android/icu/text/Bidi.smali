.class public Landroid/icu/text/Bidi;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/Bidi$LevState;,
        Landroid/icu/text/Bidi$ImpTabPair;,
        Landroid/icu/text/Bidi$Isolate;,
        Landroid/icu/text/Bidi$BracketData;,
        Landroid/icu/text/Bidi$IsoRun;,
        Landroid/icu/text/Bidi$Opening;,
        Landroid/icu/text/Bidi$InsertPoints;,
        Landroid/icu/text/Bidi$Point;
    }
.end annotation


# static fields
.field static final AL:B = 0xdt

.field static final AN:B = 0x5t

.field static final B:B = 0x7t

.field static final BN:B = 0x12t

.field public static final CLASS_DEFAULT:I = 0x17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CR:C = '\r'

.field static final CS:B = 0x6t

.field public static final DIRECTION_DEFAULT_LEFT_TO_RIGHT:I = 0x7e

.field public static final DIRECTION_DEFAULT_RIGHT_TO_LEFT:I = 0x7f

.field public static final DIRECTION_LEFT_TO_RIGHT:I = 0x0

.field public static final DIRECTION_RIGHT_TO_LEFT:I = 0x1

.field public static final DO_MIRRORING:S = 0x2s

.field static final DirPropFlagE:[I

.field static final DirPropFlagLR:[I

.field static final DirPropFlagMultiRuns:I

.field static final DirPropFlagO:[I

.field static final EN:B = 0x2t

.field static final ENL:B = 0x17t

.field static final ENR:B = 0x18t

.field static final ES:B = 0x3t

.field static final ET:B = 0x4t

.field static final FIRSTALLOC:I = 0xa

.field static final FOUND_L:B

.field static final FOUND_R:B

.field static final FSI:B = 0x13t

.field private static final IMPTABLEVELS_COLUMNS:I = 0x8

.field private static final IMPTABLEVELS_RES:I = 0x7

.field private static final IMPTABPROPS_COLUMNS:I = 0x10

.field private static final IMPTABPROPS_RES:I = 0xf

.field public static final INSERT_LRM_FOR_NUMERIC:S = 0x4s

.field static final ISOLATE:I = 0x100

.field public static final KEEP_BASE_COMBINING:S = 0x1s

.field static final L:B = 0x0t

.field public static final LEVEL_DEFAULT_LTR:B = 0x7et

.field public static final LEVEL_DEFAULT_RTL:B = 0x7ft

.field public static final LEVEL_OVERRIDE:B = -0x80t

.field private static final LF:C = '\n'

.field static final LOOKING_FOR_PDI:I = 0x3

.field static final LRE:B = 0xbt

.field static final LRI:B = 0x14t

.field static final LRM_AFTER:I = 0x2

.field static final LRM_BEFORE:I = 0x1

.field static final LRO:B = 0xct

.field public static final LTR:B = 0x0t

.field public static final MAP_NOWHERE:I = -0x1

.field static final MASK_BN_EXPLICIT:I

.field static final MASK_B_S:I

.field static final MASK_EMBEDDING:I

.field static final MASK_EXPLICIT:I

.field static final MASK_ISO:I

.field static final MASK_LTR:I

.field static final MASK_POSSIBLE_N:I

.field static final MASK_RTL:I

.field static final MASK_R_AL:I

.field static final MASK_STRONG_EN_AN:I

.field static final MASK_WS:I

.field public static final MAX_EXPLICIT_LEVEL:B = 0x7dt

.field public static final MIXED:B = 0x2t

.field public static final NEUTRAL:B = 0x3t

.field static final NOT_SEEKING_STRONG:I = 0x0

.field static final NSM:B = 0x11t

.field static final ON:B = 0xat

.field public static final OPTION_DEFAULT:I = 0x0

.field public static final OPTION_INSERT_MARKS:I = 0x1

.field public static final OPTION_REMOVE_CONTROLS:I = 0x2

.field public static final OPTION_STREAMING:I = 0x4

.field public static final OUTPUT_REVERSE:S = 0x10s

.field static final PDF:B = 0x10t

.field static final PDI:B = 0x16t

.field static final R:B = 0x1t

.field public static final REMOVE_BIDI_CONTROLS:S = 0x8s

.field static final REORDER_COUNT:S = 0x7s

.field public static final REORDER_DEFAULT:S = 0x0s

.field public static final REORDER_GROUP_NUMBERS_WITH_R:S = 0x2s

.field public static final REORDER_INVERSE_FOR_NUMBERS_SPECIAL:S = 0x6s

.field public static final REORDER_INVERSE_LIKE_DIRECT:S = 0x5s

.field public static final REORDER_INVERSE_NUMBERS_AS_L:S = 0x4s

.field static final REORDER_LAST_LOGICAL_TO_VISUAL:S = 0x1s

.field public static final REORDER_NUMBERS_SPECIAL:S = 0x1s

.field public static final REORDER_RUNS_ONLY:S = 0x3s

.field static final RLE:B = 0xet

.field static final RLI:B = 0x15t

.field static final RLM_AFTER:I = 0x8

.field static final RLM_BEFORE:I = 0x4

.field static final RLO:B = 0xft

.field public static final RTL:B = 0x1t

.field static final S:B = 0x8t

.field static final SEEKING_STRONG_FOR_FSI:I = 0x2

.field static final SEEKING_STRONG_FOR_PARA:I = 0x1

.field static final SIMPLE_OPENINGS_COUNT:I = 0x14

.field static final SIMPLE_PARAS_COUNT:I = 0xa

.field static final WS:B = 0x9t

.field private static final _AN:S = 0x3s

.field private static final _B:S = 0x6s

.field private static final _EN:S = 0x2s

.field private static final _L:S = 0x0s

.field private static final _ON:S = 0x4s

.field private static final _R:S = 0x1s

.field private static final _S:S = 0x5s

.field private static final groupProp:[S

.field private static final impAct0:[S

.field private static final impAct1:[S

.field private static final impAct2:[S

.field private static final impAct3:[S

.field private static final impTabL_DEFAULT:[[B

.field private static final impTabL_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabL_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTabL_NUMBERS_SPECIAL:[[B

.field private static final impTabProps:[[S

.field private static final impTabR_DEFAULT:[[B

.field private static final impTabR_GROUP_NUMBERS_WITH_R:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT:[[B

.field private static final impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

.field private static final impTabR_INVERSE_NUMBERS_AS_L:[[B

.field private static final impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

.field private static final impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;


# instance fields
.field final bdp:Landroid/icu/impl/UBiDiProps;

.field controlCount:I

.field customClassifier:Landroid/icu/text/BidiClassifier;

.field defaultParaLevel:B

.field dirProps:[B

.field dirPropsMemory:[B

.field direction:B

.field epilogue:Ljava/lang/String;

.field flags:I

.field impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

.field insertPoints:Landroid/icu/text/Bidi$InsertPoints;

.field isGoodLogicalToVisualRunsMap:Z

.field isInverse:Z

.field isolateCount:I

.field isolates:[Landroid/icu/text/Bidi$Isolate;

.field lastArabicPos:I

.field length:I

.field levels:[B

.field levelsMemory:[B

.field logicalToVisualRunsMap:[I

.field mayAllocateRuns:Z

.field mayAllocateText:Z

.field orderParagraphsLTR:Z

.field originalLength:I

.field paraBidi:Landroid/icu/text/Bidi;

.field paraCount:I

.field paraLevel:B

.field paras_level:[B

.field paras_limit:[I

.field prologue:Ljava/lang/String;

.field reorderingMode:I

.field reorderingOptions:I

.field resultLength:I

.field runCount:I

.field runs:[Landroid/icu/text/BidiRun;

.field runsMemory:[Landroid/icu/text/BidiRun;

.field simpleRuns:[Landroid/icu/text/BidiRun;

.field text:[C

.field trailingWSStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x0

    .line 980
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Landroid/icu/text/Bidi;->FOUND_L:B

    const/4 v1, 0x1

    .line 981
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    int-to-byte v2, v2

    sput-byte v2, Landroid/icu/text/Bidi;->FOUND_R:B

    const/16 v2, 0x1f

    .line 1116
    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    sput v2, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 1119
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    aput v4, v3, v0

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    aput v4, v3, v1

    sput-object v3, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    new-array v3, v2, [I

    const/16 v4, 0xb

    .line 1120
    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    aput v5, v3, v0

    const/16 v5, 0xe

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    aput v6, v3, v1

    sput-object v3, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    new-array v3, v2, [I

    const/16 v6, 0xc

    .line 1121
    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    aput v7, v3, v0

    const/16 v7, 0xf

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    aput v8, v3, v1

    sput-object v3, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    .line 1131
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    or-int/2addr v3, v8

    const/16 v8, 0x17

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    or-int/2addr v3, v8

    const/16 v8, 0x18

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    or-int/2addr v3, v8

    const/4 v8, 0x5

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v3, v9

    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v3, v9

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v3, v9

    const/16 v9, 0x14

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    or-int/2addr v3, v9

    sput v3, Landroid/icu/text/Bidi;->MASK_LTR:I

    .line 1132
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    const/16 v9, 0xd

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    const/16 v10, 0x15

    invoke-static {v10}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    sput v3, Landroid/icu/text/Bidi;->MASK_RTL:I

    .line 1134
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    sput v3, Landroid/icu/text/Bidi;->MASK_R_AL:I

    .line 1135
    invoke-static {v0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    sput v3, Landroid/icu/text/Bidi;->MASK_STRONG_EN_AN:I

    .line 1137
    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v10

    or-int/2addr v3, v10

    const/16 v10, 0x10

    invoke-static {v10}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v3, v11

    sput v3, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    const/16 v3, 0x12

    .line 1138
    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    sget v11, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    or-int/2addr v3, v11

    sput v3, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    const/16 v3, 0x14

    .line 1141
    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    const/16 v11, 0x15

    invoke-static {v11}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v3, v11

    const/16 v11, 0x13

    invoke-static {v11}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v3, v11

    const/16 v11, 0x16

    invoke-static {v11}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    or-int/2addr v3, v11

    sput v3, Landroid/icu/text/Bidi;->MASK_ISO:I

    const/4 v3, 0x7

    .line 1144
    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v12}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v13

    or-int/2addr v11, v13

    sput v11, Landroid/icu/text/Bidi;->MASK_B_S:I

    .line 1147
    sget v11, Landroid/icu/text/Bidi;->MASK_B_S:I

    const/16 v13, 0x9

    invoke-static {v13}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v13

    or-int/2addr v11, v13

    sget v13, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    or-int/2addr v11, v13

    sget v13, Landroid/icu/text/Bidi;->MASK_ISO:I

    or-int/2addr v11, v13

    sput v11, Landroid/icu/text/Bidi;->MASK_WS:I

    const/16 v11, 0xa

    .line 1150
    invoke-static {v11}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    const/4 v13, 0x6

    invoke-static {v13}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v14

    or-int/2addr v11, v14

    const/4 v14, 0x3

    invoke-static {v14}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v15

    or-int/2addr v11, v15

    const/4 v15, 0x4

    invoke-static {v15}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v16

    or-int v11, v11, v16

    sget v16, Landroid/icu/text/Bidi;->MASK_WS:I

    or-int v11, v11, v16

    sput v11, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    const/16 v11, 0x11

    .line 1157
    invoke-static {v11}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v11

    sget v16, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    or-int v11, v11, v16

    sput v11, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    const/16 v11, 0x19

    new-array v11, v11, [S

    .line 2741
    fill-array-data v11, :array_0

    sput-object v11, Landroid/icu/text/Bidi;->groupProp:[S

    const/16 v11, 0x18

    new-array v11, v11, [[S

    new-array v7, v10, [S

    .line 2788
    fill-array-data v7, :array_1

    aput-object v7, v11, v0

    new-array v7, v10, [S

    fill-array-data v7, :array_2

    aput-object v7, v11, v1

    new-array v7, v10, [S

    fill-array-data v7, :array_3

    aput-object v7, v11, v2

    new-array v7, v10, [S

    fill-array-data v7, :array_4

    aput-object v7, v11, v14

    new-array v7, v10, [S

    fill-array-data v7, :array_5

    aput-object v7, v11, v15

    new-array v7, v10, [S

    fill-array-data v7, :array_6

    aput-object v7, v11, v8

    new-array v7, v10, [S

    fill-array-data v7, :array_7

    aput-object v7, v11, v13

    new-array v7, v10, [S

    fill-array-data v7, :array_8

    aput-object v7, v11, v3

    new-array v7, v10, [S

    fill-array-data v7, :array_9

    aput-object v7, v11, v12

    new-array v7, v10, [S

    fill-array-data v7, :array_a

    const/16 v17, 0x9

    aput-object v7, v11, v17

    new-array v7, v10, [S

    fill-array-data v7, :array_b

    const/16 v17, 0xa

    aput-object v7, v11, v17

    new-array v7, v10, [S

    fill-array-data v7, :array_c

    aput-object v7, v11, v4

    new-array v4, v10, [S

    fill-array-data v4, :array_d

    aput-object v4, v11, v6

    new-array v4, v10, [S

    fill-array-data v4, :array_e

    aput-object v4, v11, v9

    new-array v4, v10, [S

    fill-array-data v4, :array_f

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_10

    const/16 v5, 0xf

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_11

    aput-object v4, v11, v10

    new-array v4, v10, [S

    fill-array-data v4, :array_12

    const/16 v5, 0x11

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_13

    const/16 v5, 0x12

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_14

    const/16 v5, 0x13

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_15

    const/16 v5, 0x14

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_16

    const/16 v5, 0x15

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_17

    const/16 v5, 0x16

    aput-object v4, v11, v5

    new-array v4, v10, [S

    fill-array-data v4, :array_18

    const/16 v5, 0x17

    aput-object v4, v11, v5

    sput-object v11, Landroid/icu/text/Bidi;->impTabProps:[[S

    new-array v4, v13, [[B

    new-array v5, v12, [B

    .line 2887
    fill-array-data v5, :array_19

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_1a

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_1b

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_1c

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_1d

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_1e

    aput-object v5, v4, v8

    sput-object v4, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    new-array v4, v13, [[B

    new-array v5, v12, [B

    .line 2901
    fill-array-data v5, :array_1f

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_20

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_21

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_22

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_23

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_24

    aput-object v5, v4, v8

    sput-object v4, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    new-array v4, v8, [S

    .line 2915
    fill-array-data v4, :array_25

    sput-object v4, Landroid/icu/text/Bidi;->impAct0:[S

    .line 2917
    new-instance v4, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v5, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    sget-object v6, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    sget-object v7, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v4, v5, v6, v7, v7}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v4, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    new-array v4, v8, [[B

    new-array v5, v12, [B

    .line 2920
    fill-array-data v5, :array_26

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_27

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_28

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_29

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_2a

    aput-object v5, v4, v15

    sput-object v4, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    .line 2931
    new-instance v4, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v5, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    sget-object v6, Landroid/icu/text/Bidi;->impTabR_DEFAULT:[[B

    sget-object v7, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v4, v5, v6, v7, v7}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v4, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    new-array v4, v13, [[B

    new-array v5, v12, [B

    .line 2934
    fill-array-data v5, :array_2b

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_2c

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_2d

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_2e

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_2f

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_30

    aput-object v5, v4, v8

    sput-object v4, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    new-array v4, v8, [[B

    new-array v5, v12, [B

    .line 2946
    fill-array-data v5, :array_31

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_32

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_33

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_34

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_35

    aput-object v5, v4, v15

    sput-object v4, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    .line 2957
    new-instance v4, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v5, Landroid/icu/text/Bidi;->impTabL_GROUP_NUMBERS_WITH_R:[[B

    sget-object v6, Landroid/icu/text/Bidi;->impTabR_GROUP_NUMBERS_WITH_R:[[B

    sget-object v7, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v4, v5, v6, v7, v7}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v4, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    new-array v4, v13, [[B

    new-array v5, v12, [B

    .line 2961
    fill-array-data v5, :array_36

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_37

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_38

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_39

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_3a

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_3b

    aput-object v5, v4, v8

    sput-object v4, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    new-array v4, v13, [[B

    new-array v5, v12, [B

    .line 2973
    fill-array-data v5, :array_3c

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_3d

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_3e

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_3f

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_40

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_41

    aput-object v5, v4, v8

    sput-object v4, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    .line 2985
    new-instance v4, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v5, Landroid/icu/text/Bidi;->impTabL_INVERSE_NUMBERS_AS_L:[[B

    sget-object v6, Landroid/icu/text/Bidi;->impTabR_INVERSE_NUMBERS_AS_L:[[B

    sget-object v7, Landroid/icu/text/Bidi;->impAct0:[S

    invoke-direct {v4, v5, v6, v7, v7}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v4, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    new-array v4, v3, [[B

    new-array v5, v12, [B

    .line 2989
    fill-array-data v5, :array_42

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_43

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_44

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_45

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_46

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_47

    aput-object v5, v4, v8

    new-array v5, v12, [B

    fill-array-data v5, :array_48

    aput-object v5, v4, v13

    sput-object v4, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    new-array v4, v15, [S

    .line 3002
    fill-array-data v4, :array_49

    sput-object v4, Landroid/icu/text/Bidi;->impAct1:[S

    .line 3003
    new-instance v4, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v5, Landroid/icu/text/Bidi;->impTabL_DEFAULT:[[B

    sget-object v6, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    sget-object v7, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v9, Landroid/icu/text/Bidi;->impAct1:[S

    invoke-direct {v4, v5, v6, v7, v9}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v4, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    new-array v4, v3, [[B

    new-array v5, v12, [B

    .line 3006
    fill-array-data v5, :array_4a

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_4b

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_4c

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_4d

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_4e

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_4f

    aput-object v5, v4, v8

    new-array v5, v12, [B

    fill-array-data v5, :array_50

    aput-object v5, v4, v13

    sput-object v4, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    new-array v4, v3, [[B

    new-array v5, v12, [B

    .line 3018
    fill-array-data v5, :array_51

    aput-object v5, v4, v0

    new-array v5, v12, [B

    fill-array-data v5, :array_52

    aput-object v5, v4, v1

    new-array v5, v12, [B

    fill-array-data v5, :array_53

    aput-object v5, v4, v2

    new-array v5, v12, [B

    fill-array-data v5, :array_54

    aput-object v5, v4, v14

    new-array v5, v12, [B

    fill-array-data v5, :array_55

    aput-object v5, v4, v15

    new-array v5, v12, [B

    fill-array-data v5, :array_56

    aput-object v5, v4, v8

    new-array v5, v12, [B

    fill-array-data v5, :array_57

    aput-object v5, v4, v13

    sput-object v4, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    new-array v3, v3, [S

    .line 3031
    fill-array-data v3, :array_58

    sput-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    new-array v3, v13, [S

    .line 3032
    fill-array-data v3, :array_59

    sput-object v3, Landroid/icu/text/Bidi;->impAct3:[S

    .line 3033
    new-instance v3, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v4, Landroid/icu/text/Bidi;->impTabL_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v5, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v6, Landroid/icu/text/Bidi;->impAct2:[S

    sget-object v7, Landroid/icu/text/Bidi;->impAct3:[S

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v3, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    .line 3037
    new-instance v3, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v4, Landroid/icu/text/Bidi;->impTabL_NUMBERS_SPECIAL:[[B

    sget-object v5, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT:[[B

    sget-object v6, Landroid/icu/text/Bidi;->impAct0:[S

    sget-object v7, Landroid/icu/text/Bidi;->impAct1:[S

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v3, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    new-array v3, v8, [[B

    new-array v4, v12, [B

    .line 3040
    fill-array-data v4, :array_5a

    aput-object v4, v3, v0

    new-array v0, v12, [B

    fill-array-data v0, :array_5b

    aput-object v0, v3, v1

    new-array v0, v12, [B

    fill-array-data v0, :array_5c

    aput-object v0, v3, v2

    new-array v0, v12, [B

    fill-array-data v0, :array_5d

    aput-object v0, v3, v14

    new-array v0, v12, [B

    fill-array-data v0, :array_5e

    aput-object v0, v3, v15

    sput-object v3, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    .line 3050
    new-instance v0, Landroid/icu/text/Bidi$ImpTabPair;

    sget-object v1, Landroid/icu/text/Bidi;->impTabL_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:[[B

    sget-object v2, Landroid/icu/text/Bidi;->impTabR_INVERSE_LIKE_DIRECT_WITH_MARKS:[[B

    sget-object v3, Landroid/icu/text/Bidi;->impAct2:[S

    sget-object v4, Landroid/icu/text/Bidi;->impAct3:[S

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/Bidi$ImpTabPair;-><init>([[B[[B[S[S)V

    sput-object v0, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x7s
        0x8s
        0x3s
        0x9s
        0x6s
        0x5s
        0x4s
        0x4s
        0xas
        0xas
        0xcs
        0xas
        0xas
        0xas
        0xbs
        0xas
        0x4s
        0x4s
        0x4s
        0x4s
        0xds
        0xes
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1s
        0x2s
        0x4s
        0x5s
        0x7s
        0xfs
        0x11s
        0x7s
        0x9s
        0x7s
        0x0s
        0x7s
        0x3s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_2
    .array-data 2
        0x1s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x1s
        0x1s
        0x23s
        0x32s
        0x35s
        0x0s
    .end array-data

    :array_3
    .array-data 2
        0x21s
        0x2s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x27s
        0x2s
        0x2s
        0x23s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_4
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x28s
        0x3s
        0x3s
        0x3s
        0x32s
        0x35s
        0x1s
    .end array-data

    :array_5
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x4as
        0xbs
        0x4as
        0x4s
        0x4s
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_6
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x5s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x29s
        0x4cs
        0x5s
        0x5s
        0x23s
        0x32s
        0x35s
        0x3s
    .end array-data

    :array_7
    .array-data 2
        0x21s
        0x22s
        0x6s
        0x6s
        0x28s
        0x30s
        0x31s
        0x28s
        0x28s
        0x4ds
        0x6s
        0x6s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_8
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x4es
        0x7s
        0x7s
        0x7s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_9
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x8s
        0x30s
        0x31s
        0x8s
        0x8s
        0x8s
        0x8s
        0x8s
        0x23s
        0x32s
        0x35s
        0x4s
    .end array-data

    :array_a
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0x9s
        0x7s
        0x9s
        0x9s
        0x23s
        0x12s
        0x15s
        0x4s
    .end array-data

    :array_b
    .array-data 2
        0x61s
        0x62s
        0x4s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xas
        0x87s
        0x63s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_c
    .array-data 2
        0x21s
        0x22s
        0x4s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0xbs
        0x27s
        0xbs
        0xbs
        0x23s
        0x12s
        0x15s
        0x2s
    .end array-data

    :array_d
    .array-data 2
        0x61s
        0x62s
        0x64s
        0x5s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0xcs
        0x87s
        0x63s
        0x72s
        0x75s
        0x3s
    .end array-data

    :array_e
    .array-data 2
        0x61s
        0x62s
        0x6s
        0x6s
        0x88s
        0x70s
        0x71s
        0x88s
        0x88s
        0x88s
        0xds
        0x88s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_f
    .array-data 2
        0x21s
        0x22s
        0x84s
        0x25s
        0x7s
        0x2fs
        0x31s
        0x7s
        0xes
        0x7s
        0xes
        0xes
        0x23s
        0x92s
        0x95s
        0x4s
    .end array-data

    :array_10
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0xfs
        0x31s
        0x27s
        0x29s
        0x27s
        0xfs
        0x27s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_11
    .array-data 2
        0x21s
        0x22s
        0x26s
        0x26s
        0x28s
        0x10s
        0x31s
        0x28s
        0x28s
        0x28s
        0x10s
        0x28s
        0x23s
        0x32s
        0x35s
        0x5s
    .end array-data

    :array_12
    .array-data 2
        0x21s
        0x22s
        0x24s
        0x25s
        0x27s
        0x2fs
        0x11s
        0x27s
        0x29s
        0x27s
        0x11s
        0x27s
        0x23s
        0x32s
        0x35s
        0x6s
    .end array-data

    :array_13
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x53s
        0x14s
        0x53s
        0x12s
        0x12s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_14
    .array-data 2
        0x61s
        0x62s
        0x12s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x13s
        0x87s
        0x63s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_15
    .array-data 2
        0x21s
        0x22s
        0x12s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x14s
        0x27s
        0x14s
        0x14s
        0x23s
        0x12s
        0x15s
        0x0s
    .end array-data

    :array_16
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x56s
        0x17s
        0x56s
        0x15s
        0x15s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_17
    .array-data 2
        0x61s
        0x62s
        0x15s
        0x65s
        0x87s
        0x6fs
        0x71s
        0x87s
        0x8es
        0x87s
        0x16s
        0x87s
        0x63s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_18
    .array-data 2
        0x21s
        0x22s
        0x15s
        0x25s
        0x27s
        0x2fs
        0x31s
        0x27s
        0x17s
        0x27s
        0x17s
        0x17s
        0x23s
        0x12s
        0x15s
        0x3s
    .end array-data

    :array_19
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1a
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_1b
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x2t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_1c
    .array-data 1
        0x0t
        0x1t
        0x3t
        0x3t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_1d
    .array-data 1
        0x0t
        0x21t
        0x33t
        0x33t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_1e
    .array-data 1
        0x0t
        0x21t
        0x0t
        0x32t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_1f
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_20
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_21
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_22
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_23
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x3t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_24
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_25
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
    .end array-data

    nop

    :array_26
    .array-data 1
        0x0t
        0x2t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_27
    .array-data 1
        0x0t
        0x42t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_28
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_29
    .array-data 1
        0x0t
        0x22t
        0x34t
        0x34t
        0x3t
        0x3t
        0x0t
        0x0t
    .end array-data

    :array_2a
    .array-data 1
        0x0t
        0x2t
        0x4t
        0x4t
        0x13t
        0x13t
        0x0t
        0x2t
    .end array-data

    :array_2b
    .array-data 1
        0x0t
        0x3t
        0x11t
        0x11t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2c
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x2t
    .end array-data

    :array_2d
    .array-data 1
        0x20t
        0x3t
        0x1t
        0x1t
        0x2t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_2e
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_2f
    .array-data 1
        0x20t
        0x3t
        0x5t
        0x5t
        0x4t
        0x20t
        0x20t
        0x1t
    .end array-data

    :array_30
    .array-data 1
        0x0t
        0x3t
        0x5t
        0x5t
        0x14t
        0x0t
        0x0t
        0x2t
    .end array-data

    :array_31
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_32
    .array-data 1
        0x2t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_33
    .array-data 1
        0x2t
        0x0t
        0x14t
        0x14t
        0x13t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_34
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_35
    .array-data 1
        0x22t
        0x0t
        0x4t
        0x4t
        0x3t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_36
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_37
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_38
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x15t
        0x15t
        0x0t
        0x2t
    .end array-data

    :array_39
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x0t
        0x14t
        0x14t
        0x0t
        0x2t
    .end array-data

    :array_3a
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x4t
        0x4t
        0x20t
        0x1t
    .end array-data

    :array_3b
    .array-data 1
        0x20t
        0x1t
        0x20t
        0x20t
        0x5t
        0x5t
        0x20t
        0x1t
    .end array-data

    :array_3c
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3d
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x14t
        0x14t
        0x0t
        0x1t
    .end array-data

    :array_3e
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_3f
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x1t
    .end array-data

    :array_40
    .array-data 1
        0x21t
        0x0t
        0x21t
        0x21t
        0x4t
        0x4t
        0x0t
        0x0t
    .end array-data

    :array_41
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x1t
        0x5t
        0x5t
        0x0t
        0x0t
    .end array-data

    :array_42
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_43
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x2t
        0x13t
        0x13t
        0x0t
        0x1t
    .end array-data

    :array_44
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x2t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_45
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x0t
    .end array-data

    :array_46
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x3t
    .end array-data

    :array_47
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x5t
        0x5t
        0x30t
        0x2t
    .end array-data

    :array_48
    .array-data 1
        0x21t
        0x30t
        0x6t
        0x4t
        0x3t
        0x3t
        0x30t
        0x1t
    .end array-data

    :array_49
    .array-data 2
        0x0s
        0x1s
        0xds
        0xes
    .end array-data

    :array_4a
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4b
    .array-data 1
        0x0t
        0x63t
        0x0t
        0x1t
        0x12t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_4c
    .array-data 1
        0x20t
        0x63t
        0x20t
        0x1t
        0x2t
        0x30t
        0x20t
        0x3t
    .end array-data

    :array_4d
    .array-data 1
        0x0t
        0x63t
        0x55t
        0x56t
        0x14t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_4e
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x56t
        0x4t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_4f
    .array-data 1
        0x30t
        0x43t
        0x5t
        0x56t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_50
    .array-data 1
        0x30t
        0x43t
        0x55t
        0x6t
        0x14t
        0x30t
        0x30t
        0x4t
    .end array-data

    :array_51
    .array-data 1
        0x13t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_52
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_53
    .array-data 1
        0x23t
        0x0t
        0x1t
        0x1t
        0x2t
        0x40t
        0x0t
        0x0t
    .end array-data

    :array_54
    .array-data 1
        0x3t
        0x0t
        0x3t
        0x36t
        0x14t
        0x40t
        0x0t
        0x1t
    .end array-data

    :array_55
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x0t
    .end array-data

    :array_56
    .array-data 1
        0x53t
        0x40t
        0x5t
        0x36t
        0x4t
        0x40t
        0x40t
        0x1t
    .end array-data

    :array_57
    .array-data 1
        0x53t
        0x40t
        0x6t
        0x6t
        0x4t
        0x40t
        0x40t
        0x3t
    .end array-data

    :array_58
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x5s
        0x6s
        0x7s
        0x8s
    .end array-data

    nop

    :array_59
    .array-data 2
        0x0s
        0x1s
        0x9s
        0xas
        0xbs
        0xcs
    .end array-data

    :array_5a
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5b
    .array-data 1
        0x0t
        0x62t
        0x1t
        0x1t
        0x0t
        0x30t
        0x0t
        0x4t
    .end array-data

    :array_5c
    .array-data 1
        0x0t
        0x62t
        0x54t
        0x54t
        0x13t
        0x30t
        0x0t
        0x3t
    .end array-data

    :array_5d
    .array-data 1
        0x30t
        0x42t
        0x54t
        0x54t
        0x3t
        0x30t
        0x30t
        0x3t
    .end array-data

    :array_5e
    .array-data 1
        0x30t
        0x42t
        0x4t
        0x4t
        0x13t
        0x30t
        0x30t
        0x4t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1221
    invoke-direct {p0, v0, v0}, Landroid/icu/text/Bidi;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 1254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 1023
    iput-object v1, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    new-array v1, v0, [B

    .line 1024
    iput-object v1, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 1068
    iput-object v2, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    new-array v1, v1, [B

    .line 1069
    iput-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/icu/text/BidiRun;

    .line 1073
    iput-object v2, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    new-array v2, v0, [Landroid/icu/text/BidiRun;

    .line 1077
    new-instance v3, Landroid/icu/text/BidiRun;

    invoke-direct {v3}, Landroid/icu/text/BidiRun;-><init>()V

    aput-object v3, v2, v1

    iput-object v2, p0, Landroid/icu/text/Bidi;->simpleRuns:[Landroid/icu/text/BidiRun;

    const/4 v1, 0x0

    .line 1094
    iput-object v1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    .line 1097
    new-instance v1, Landroid/icu/text/Bidi$InsertPoints;

    invoke-direct {v1}, Landroid/icu/text/Bidi$InsertPoints;-><init>()V

    iput-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    .line 1278
    sget-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;

    iput-object v1, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    if-lez p1, :cond_0

    .line 1282
    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialDirPropsMemory(I)V

    .line 1283
    invoke-direct {p0, p1}, Landroid/icu/text/Bidi;->getInitialLevelsMemory(I)V

    goto :goto_0

    .line 1285
    :cond_0
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    :goto_0
    if-lez p2, :cond_1

    if-le p2, v0, :cond_2

    .line 1291
    invoke-direct {p0, p2}, Landroid/icu/text/Bidi;->getInitialRunsMemory(I)V

    goto :goto_1

    .line 1294
    :cond_1
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    :cond_2
    :goto_1
    return-void

    .line 1257
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 7

    .line 5206
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    return-void
.end method

.method public constructor <init>(Ljava/text/AttributedCharacterIterator;)V
    .locals 0

    .line 5236
    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    .line 5237
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->setPara(Ljava/text/AttributedCharacterIterator;)V

    return-void
.end method

.method public constructor <init>([CI[BIII)V
    .locals 4

    .line 5286
    invoke-direct {p0}, Landroid/icu/text/Bidi;-><init>()V

    const/16 v0, 0x7f

    const/16 v1, 0x7e

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p6, v3, :cond_1

    if-eq p6, v1, :cond_0

    if-eq p6, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    .line 5312
    :cond_3
    new-array p6, p5, [B

    move v1, v2

    :goto_1
    if-ge v1, p5, :cond_5

    add-int v3, v1, p4

    .line 5315
    aget-byte v3, p3, v3

    if-gez v3, :cond_4

    neg-int v3, v3

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    .line 5320
    :cond_4
    aput-byte v3, p6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move-object p3, p6

    :goto_2
    if-nez p2, :cond_6

    .line 5323
    array-length p4, p1

    if-ne p5, p4, :cond_6

    .line 5324
    invoke-virtual {p0, p1, v0, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_3

    .line 5326
    :cond_6
    new-array p4, p5, [C

    .line 5327
    invoke-static {p1, p2, p4, v2, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5328
    invoke-virtual {p0, p4, v0, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    :goto_3
    return-void
.end method

.method static final DirFromStrong(B)B
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method static DirPropFlag(B)I
    .locals 1

    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method static final DirPropFlagE(B)I
    .locals 1

    .line 1124
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagE:[I

    and-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method static final DirPropFlagLR(B)I
    .locals 1

    .line 1123
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagLR:[I

    and-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method static final DirPropFlagO(B)I
    .locals 1

    .line 1125
    sget-object v0, Landroid/icu/text/Bidi;->DirPropFlagO:[I

    and-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method private static GetAction(B)S
    .locals 0

    shr-int/lit8 p0, p0, 0x4

    int-to-short p0, p0

    return p0
.end method

.method private static GetActionProps(S)S
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    int-to-short p0, p0

    return p0
.end method

.method static GetLRFromLevel(B)B
    .locals 0

    and-int/lit8 p0, p0, 0x1

    int-to-byte p0, p0

    return p0
.end method

.method private static GetState(B)S
    .locals 0

    and-int/lit8 p0, p0, 0xf

    int-to-short p0, p0

    return p0
.end method

.method private static GetStateProps(S)S
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    int-to-short p0, p0

    return p0
.end method

.method static IsBidiControlChar(I)Z
    .locals 2

    and-int/lit8 v0, p0, -0x4

    const/16 v1, 0x200c

    if-eq v0, v1, :cond_2

    const/16 v0, 0x202a

    if-lt p0, v0, :cond_0

    const/16 v0, 0x202e

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x2066

    if-lt p0, v0, :cond_1

    const/16 v0, 0x2069

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static IsDefaultLevel(B)Z
    .locals 1

    const/16 v0, 0x7e

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static final NoOverride(B)B
    .locals 0

    and-int/lit8 p0, p0, 0x7f

    int-to-byte p0, p0

    return p0
.end method

.method private addPoint(II)V
    .locals 5

    .line 3074
    new-instance v0, Landroid/icu/text/Bidi$Point;

    invoke-direct {v0}, Landroid/icu/text/Bidi$Point;-><init>()V

    .line 3076
    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v1, v1, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v1, v1

    const/16 v2, 0xa

    if-nez v1, :cond_0

    .line 3078
    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    new-array v3, v2, [Landroid/icu/text/Bidi$Point;

    iput-object v3, v1, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    move v1, v2

    .line 3081
    :cond_0
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v2, v2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-lt v2, v1, :cond_1

    .line 3082
    iget-object v2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v2, v2, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    .line 3083
    iget-object v3, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    mul-int/lit8 v4, v1, 0x2

    new-array v4, v4, [Landroid/icu/text/Bidi$Point;

    iput-object v4, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    .line 3084
    iget-object v3, v3, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3086
    :cond_1
    iput p1, v0, Landroid/icu/text/Bidi$Point;->pos:I

    .line 3087
    iput p2, v0, Landroid/icu/text/Bidi$Point;->flag:I

    .line 3088
    iget-object p1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object p1, p1, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget p2, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    aput-object v0, p1, p2

    .line 3089
    iget-object p0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget p1, p0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    return-void
.end method

.method private adjustWSLevels()V
    .locals 5

    .line 3532
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 3534
    iget v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    :cond_0
    :goto_0
    if-lez v0, :cond_5

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x7

    if-lez v0, :cond_2

    .line 3537
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v3, v0

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    sget v4, Landroid/icu/text/Bidi;->MASK_WS:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_2

    .line 3538
    iget-boolean v4, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v4, :cond_1

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    .line 3539
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v1, v2, v0

    goto :goto_1

    .line 3541
    :cond_1
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v0, :cond_0

    .line 3548
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v0, v0, -0x1

    aget-byte v3, v3, v0

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    .line 3549
    sget v4, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_3

    .line 3550
    iget-object v3, p0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v3, v4

    aput-byte v4, v3, v0

    goto :goto_2

    .line 3551
    :cond_3
    iget-boolean v4, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v4, :cond_4

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_4

    .line 3552
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v1, v2, v0

    goto :goto_0

    .line 3554
    :cond_4
    sget v4, Landroid/icu/text/Bidi;->MASK_B_S:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 3555
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    aput-byte v2, v1, v0

    goto :goto_0

    :cond_5
    return-void
.end method

.method private bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V
    .locals 4

    .line 2073
    iget-object p0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object p0, p0, v0

    .line 2075
    iget-short v0, p0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    array-length v1, v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 2076
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    .line 2079
    :try_start_0
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    array-length v1, v1

    mul-int/lit8 v3, v1, 0x2

    .line 2080
    new-array v3, v3, [Landroid/icu/text/Bidi$Opening;

    iput-object v3, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2084
    iget-object v3, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    invoke-static {v0, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 2082
    :catch_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string p1, "Failed to allocate memory for openings"

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2086
    :cond_0
    :goto_0
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v1, p0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 2088
    iget-object p1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short v0, p0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    new-instance v1, Landroid/icu/text/Bidi$Opening;

    invoke-direct {v1}, Landroid/icu/text/Bidi$Opening;-><init>()V

    aput-object v1, p1, v0

    move-object v0, v1

    .line 2089
    :cond_1
    iput p3, v0, Landroid/icu/text/Bidi$Opening;->position:I

    .line 2090
    iput p2, v0, Landroid/icu/text/Bidi$Opening;->match:I

    .line 2091
    iget-byte p1, p0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p1, v0, Landroid/icu/text/Bidi$Opening;->contextDir:B

    .line 2092
    iget p1, p0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    iput p1, v0, Landroid/icu/text/Bidi$Opening;->contextPos:I

    .line 2093
    iput-short v2, v0, Landroid/icu/text/Bidi$Opening;->flags:S

    .line 2094
    iget-short p1, p0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    iput-short p1, p0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    return-void
.end method

.method private bracketInit(Landroid/icu/text/Bidi$BracketData;)V
    .locals 6

    const/4 v0, 0x0

    .line 2012
    iput v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2013
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    new-instance v2, Landroid/icu/text/Bidi$IsoRun;

    invoke-direct {v2}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    aput-object v2, v1, v0

    .line 2014
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->start:S

    .line 2015
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput-short v0, v1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2016
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    iput-byte v2, v1, Landroid/icu/text/Bidi$IsoRun;->level:B

    .line 2017
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, v0

    iget-object v3, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v3, v3, v0

    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    int-to-byte v4, v4

    iput-byte v4, v3, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte v4, v2, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte v4, v1, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2018
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, v0

    iput v0, v1, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    const/16 v1, 0x14

    new-array v1, v1, [Landroid/icu/text/Bidi$Opening;

    .line 2019
    iput-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    .line 2020
    iget p0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    if-eq p0, v5, :cond_0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_1

    :cond_0
    move v0, v5

    :cond_1
    iput-boolean v0, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    return-void
.end method

.method private bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V
    .locals 3

    const/4 p0, 0x0

    .line 2026
    iput p0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2027
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v0, v0, p0

    iput-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2028
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v0, v0, p0

    iput-byte p2, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    .line 2029
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v0, v0, p0

    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v1, v1, p0

    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object v2, v2, p0

    and-int/lit8 p2, p2, 0x1

    int-to-byte p2, p2

    iput-byte p2, v2, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p2, v1, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte p2, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2030
    iget-object p1, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    aget-object p1, p1, p0

    iput p0, p1, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V
    .locals 1

    .line 2036
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget p1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object p1, v0, p1

    .line 2037
    iget-object p0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte p0, p0, p2

    invoke-static {p0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result p0

    sget v0, Landroid/icu/text/Bidi;->MASK_ISO:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return-void

    .line 2039
    :cond_0
    invoke-static {p4}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result p0

    invoke-static {p3}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v0

    if-le p0, v0, :cond_1

    move p3, p4

    .line 2041
    :cond_1
    iget-short p0, p1, Landroid/icu/text/Bidi$IsoRun;->start:S

    iput-short p0, p1, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2042
    iput-byte p4, p1, Landroid/icu/text/Bidi$IsoRun;->level:B

    and-int/lit8 p0, p3, 0x1

    int-to-byte p0, p0

    .line 2043
    iput-byte p0, p1, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p0, p1, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte p0, p1, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2044
    iput p2, p1, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V
    .locals 8

    .line 2202
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2205
    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p2

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-ne v1, v3, :cond_8

    .line 2211
    iget-object v5, p0, Landroid/icu/text/Bidi;->text:[C

    aget-char v5, v5, p2

    .line 2212
    iget-short v6, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr v6, v4

    :goto_0
    iget-short v7, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-lt v6, v7, :cond_4

    .line 2213
    iget-object v7, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v7, v7, v6

    iget v7, v7, Landroid/icu/text/Bidi$Opening;->match:I

    if-eq v7, v5, :cond_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 2216
    :cond_0
    invoke-direct {p0, p1, v6, p2}, Landroid/icu/text/Bidi;->bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B

    move-result v5

    if-ne v5, v3, :cond_1

    move v5, v2

    goto :goto_2

    .line 2221
    :cond_1
    iput-byte v3, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2222
    iput-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2223
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    .line 2224
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v1, v1, p2

    and-int/lit8 v2, v1, -0x80

    if-eqz v2, :cond_3

    and-int/2addr v1, v4

    int-to-byte v1, v1

    .line 2229
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2230
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    int-to-short v1, v1

    .line 2231
    iget-short v0, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    :goto_1
    if-ge v0, v6, :cond_2

    .line 2232
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v2, v2, v0

    iget-short v3, v2, Landroid/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v3, v1

    int-to-short v3, v3

    iput-short v3, v2, Landroid/icu/text/Bidi$Opening;->flags:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2234
    :cond_2
    iget-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v1, v0, p2

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, v0, p2

    .line 2237
    :cond_3
    iget-object p0, p0, Landroid/icu/text/Bidi;->levels:[B

    iget-object p1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object p1, p1, v6

    iget p1, p1, Landroid/icu/text/Bidi$Opening;->position:I

    aget-byte p2, p0, p1

    and-int/lit8 p2, p2, 0x7f

    int-to-byte p2, p2

    aput-byte p2, p0, p1

    return-void

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 2244
    invoke-static {v5}, Landroid/icu/lang/UCharacter;->getBidiPairedBracket(I)I

    move-result v6

    int-to-char v6, v6

    goto :goto_3

    :cond_5
    move v6, v2

    :goto_3
    if-eq v6, v5, :cond_8

    const/16 v7, 0x1015

    .line 2248
    invoke-static {v5, v7}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v5

    if-ne v5, v4, :cond_8

    const/16 v5, 0x3009

    const/16 v7, 0x232a

    if-ne v6, v7, :cond_6

    .line 2253
    invoke-direct {p0, p1, v5, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    goto :goto_4

    :cond_6
    if-ne v6, v5, :cond_7

    .line 2256
    invoke-direct {p0, p1, v7, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    .line 2258
    :cond_7
    :goto_4
    invoke-direct {p0, p1, v6, p2}, Landroid/icu/text/Bidi;->bracketAddOpening(Landroid/icu/text/Bidi$BracketData;CI)V

    .line 2261
    :cond_8
    iget-object v5, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v5, v5, p2

    and-int/lit8 v6, v5, -0x80

    const/16 v7, 0xd

    if-eqz v6, :cond_a

    and-int/lit8 v2, v5, 0x1

    int-to-byte v2, v2

    const/16 v5, 0x8

    if-eq v1, v5, :cond_9

    const/16 v5, 0x9

    if-eq v1, v5, :cond_9

    if-eq v1, v3, :cond_9

    .line 2265
    iget-object p0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v2, p0, p2

    .line 2266
    :cond_9
    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2267
    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2268
    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2269
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    :goto_5
    move v1, v2

    goto :goto_9

    :cond_a
    if-le v1, v4, :cond_12

    if-ne v1, v7, :cond_b

    goto :goto_8

    :cond_b
    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v1, v5, :cond_f

    .line 2279
    iput-byte v5, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2280
    iget-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    if-nez v1, :cond_d

    .line 2282
    iget-boolean v1, p1, Landroid/icu/text/Bidi$BracketData;->isNumbersSpecial:Z

    if-nez v1, :cond_c

    .line 2283
    iget-object p0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/16 v1, 0x17

    aput-byte v1, p0, p2

    .line 2284
    :cond_c
    iput-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2285
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_5

    .line 2289
    :cond_d
    iget-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    if-ne v1, v7, :cond_e

    .line 2290
    iget-object p0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v6, p0, p2

    goto :goto_6

    .line 2292
    :cond_e
    iget-object p0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    const/16 v1, 0x18

    aput-byte v1, p0, p2

    .line 2293
    :goto_6
    iput-byte v4, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2294
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    goto :goto_7

    :cond_f
    if-ne v1, v6, :cond_10

    .line 2299
    iput-byte v6, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2300
    iput-byte v4, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2301
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    :goto_7
    move v1, v4

    goto :goto_9

    :cond_10
    const/16 v2, 0x11

    if-ne v1, v2, :cond_11

    .line 2307
    iget-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    if-ne v1, v3, :cond_13

    .line 2309
    iget-object p0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v1, p0, p2

    goto :goto_9

    .line 2313
    :cond_11
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    goto :goto_9

    .line 2272
    :cond_12
    :goto_8
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    move-result p0

    .line 2273
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2274
    iput-byte v1, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    .line 2275
    iput-byte p0, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    .line 2276
    iput p2, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    move v1, p0

    :cond_13
    :goto_9
    if-le v1, v4, :cond_14

    if-ne v1, v7, :cond_16

    .line 2317
    :cond_14
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirFromStrong(B)B

    move-result p0

    invoke-static {p0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result p0

    int-to-short p0, p0

    .line 2318
    iget-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    :goto_a
    iget-short v2, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge v1, v2, :cond_16

    .line 2319
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/icu/text/Bidi$Opening;->position:I

    if-le p2, v2, :cond_15

    .line 2320
    iget-object v2, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v2, v2, v1

    iget-short v3, v2, Landroid/icu/text/Bidi$Opening;->flags:S

    or-int/2addr v3, p0

    int-to-short v3, v3

    iput-short v3, v2, Landroid/icu/text/Bidi$Opening;->flags:S

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_16
    return-void
.end method

.method private bracketProcessClosing(Landroid/icu/text/Bidi$BracketData;II)B
    .locals 8

    .line 2125
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    .line 2130
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v1, v1, p2

    .line 2131
    iget-byte v2, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    const/4 v3, 0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2152
    iget-short v5, v1, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v6, Landroid/icu/text/Bidi;->FOUND_L:B

    and-int/2addr v5, v6

    if-gtz v5, :cond_1

    :cond_0
    if-ne v2, v3, :cond_2

    iget-short v5, v1, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v6, Landroid/icu/text/Bidi;->FOUND_R:B

    and-int/2addr v5, v6

    if-lez v5, :cond_2

    :cond_1
    move v5, v3

    goto :goto_1

    .line 2156
    :cond_2
    iget-short v5, v1, Landroid/icu/text/Bidi$Opening;->flags:S

    sget-byte v6, Landroid/icu/text/Bidi;->FOUND_L:B

    sget-byte v7, Landroid/icu/text/Bidi;->FOUND_R:B

    or-int/2addr v6, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_a

    .line 2159
    iget-short v5, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-ne p2, v5, :cond_3

    move v5, v3

    goto :goto_0

    :cond_3
    move v5, v4

    .line 2160
    :goto_0
    iget-byte v6, v1, Landroid/icu/text/Bidi$Opening;->contextDir:B

    if-eq v2, v6, :cond_4

    .line 2161
    iget-byte v2, v1, Landroid/icu/text/Bidi$Opening;->contextDir:B

    .line 2169
    :cond_4
    :goto_1
    iget-object v6, p0, Landroid/icu/text/Bidi;->dirProps:[B

    iget v7, v1, Landroid/icu/text/Bidi$Opening;->position:I

    aput-byte v2, v6, v7

    .line 2170
    iget-object v6, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v2, v6, p3

    .line 2172
    iget v6, v1, Landroid/icu/text/Bidi$Opening;->position:I

    invoke-direct {p0, p1, p2, v6, v2}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    if-eqz v5, :cond_5

    int-to-short p0, p2

    .line 2174
    iput-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2176
    :goto_2
    iget-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iget-short p2, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-le p0, p2, :cond_9

    iget-object p0, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    iget-short p2, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr p2, v3

    aget-object p0, p0, p2

    iget p0, p0, Landroid/icu/text/Bidi$Opening;->position:I

    iget p2, v1, Landroid/icu/text/Bidi$Opening;->position:I

    if-ne p0, p2, :cond_9

    .line 2178
    iget-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    sub-int/2addr p0, v3

    int-to-short p0, p0

    iput-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    goto :goto_2

    :cond_5
    neg-int p0, p3

    .line 2181
    iput p0, v1, Landroid/icu/text/Bidi$Opening;->match:I

    add-int/lit8 p0, p2, -0x1

    .line 2184
    :goto_3
    iget-short v5, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    if-lt p0, v5, :cond_6

    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v5, v5, p0

    iget v5, v5, Landroid/icu/text/Bidi$Opening;->position:I

    iget v6, v1, Landroid/icu/text/Bidi$Opening;->position:I

    if-ne v5, v6, :cond_6

    .line 2186
    iget-object v5, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    add-int/lit8 v6, p0, -0x1

    aget-object p0, v5, p0

    iput v4, p0, Landroid/icu/text/Bidi$Opening;->match:I

    move p0, v6

    goto :goto_3

    :cond_6
    add-int/2addr p2, v3

    .line 2189
    :goto_4
    iget-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge p2, p0, :cond_9

    .line 2190
    iget-object p0, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object p0, p0, p2

    .line 2191
    iget v1, p0, Landroid/icu/text/Bidi$Opening;->position:I

    if-lt v1, p3, :cond_7

    goto :goto_5

    .line 2193
    :cond_7
    iget v1, p0, Landroid/icu/text/Bidi$Opening;->match:I

    if-lez v1, :cond_8

    .line 2194
    iput v4, p0, Landroid/icu/text/Bidi$Opening;->match:I

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_9
    :goto_5
    return v2

    :cond_a
    int-to-short p0, p2

    .line 2166
    iput-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    const/16 p0, 0xa

    return p0
.end method

.method private bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V
    .locals 2

    .line 2049
    iget-object p0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object p0, p0, v0

    const/16 v0, 0xa

    .line 2051
    iput-byte v0, p0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    .line 2052
    iget-short p0, p0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    .line 2053
    iget v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2054
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 2056
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget p1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    new-instance v1, Landroid/icu/text/Bidi$IsoRun;

    invoke-direct {v1}, Landroid/icu/text/Bidi$IsoRun;-><init>()V

    aput-object v1, v0, p1

    move-object v0, v1

    .line 2057
    :cond_0
    iput-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    iput-short p0, v0, Landroid/icu/text/Bidi$IsoRun;->start:S

    .line 2058
    iput-byte p2, v0, Landroid/icu/text/Bidi$IsoRun;->level:B

    and-int/lit8 p0, p2, 0x1

    int-to-byte p0, p0

    .line 2059
    iput-byte p0, v0, Landroid/icu/text/Bidi$IsoRun;->contextDir:B

    iput-byte p0, v0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    iput-byte p0, v0, Landroid/icu/text/Bidi$IsoRun;->lastStrong:B

    const/4 p0, 0x0

    .line 2060
    iput p0, v0, Landroid/icu/text/Bidi$IsoRun;->contextPos:I

    return-void
.end method

.method private bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V
    .locals 0

    .line 2066
    iget p0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    .line 2067
    iget-object p0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget p1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object p0, p0, p1

    const/16 p1, 0xa

    .line 2068
    iput-byte p1, p0, Landroid/icu/text/Bidi$IsoRun;->lastBase:B

    return-void
.end method

.method private checkExplicitLevels()B
    .locals 11

    const/4 v0, 0x0

    .line 2656
    iput v0, p0, Landroid/icu/text/Bidi;->flags:I

    .line 2657
    iput v0, p0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 2660
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v0

    .line 2661
    iget-byte v2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    move v3, v0

    move v4, v1

    move v5, v2

    move v1, v3

    move v2, v1

    .line 2663
    :goto_0
    iget v6, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v1, v6, :cond_a

    .line 2664
    iget-object v6, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v6, v6, v1

    .line 2665
    iget-object v7, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v7, v7, v1

    const/16 v8, 0x14

    const/4 v9, 0x7

    if-eq v7, v8, :cond_2

    const/16 v8, 0x15

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const/16 v8, 0x16

    if-ne v7, v8, :cond_1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_1
    if-ne v7, v9, :cond_3

    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 2668
    iget v8, p0, Landroid/icu/text/Bidi;->isolateCount:I

    if-le v2, v8, :cond_3

    .line 2669
    iput v2, p0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 2677
    :cond_3
    :goto_2
    iget-byte v8, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-eqz v8, :cond_4

    if-ne v1, v4, :cond_4

    add-int/lit8 v8, v3, 0x1

    iget v10, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v8, v10, :cond_4

    .line 2679
    iget-object v3, p0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v3, v8

    .line 2680
    iget-object v4, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v4, v4, v8

    move v5, v3

    move v3, v8

    :cond_4
    and-int/lit8 v8, v6, -0x80

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    if-lt v6, v5, :cond_5

    const/16 v10, 0x7d

    if-ge v10, v6, :cond_7

    :cond_5
    if-nez v6, :cond_9

    if-ne v7, v9, :cond_6

    goto :goto_3

    .line 2694
    :cond_6
    iget-object v6, p0, Landroid/icu/text/Bidi;->levels:[B

    or-int v9, v5, v8

    int-to-byte v9, v9

    aput-byte v9, v6, v1

    move v6, v5

    :cond_7
    :goto_3
    if-eqz v8, :cond_8

    .line 2704
    iget v7, p0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v6

    or-int/2addr v6, v7

    iput v6, p0, Landroid/icu/text/Bidi;->flags:I

    goto :goto_4

    .line 2707
    :cond_8
    iget v8, p0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v6

    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    or-int/2addr v6, v7

    or-int/2addr v6, v8

    iput v6, p0, Landroid/icu/text/Bidi;->flags:I

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2698
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " out of bounds at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2710
    :cond_a
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_b

    .line 2711
    iget-byte v1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/Bidi;->flags:I

    .line 2713
    :cond_b
    invoke-direct {p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result p0

    return p0
.end method

.method private checkParaCount()V
    .locals 5

    .line 1741
    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    .line 1742
    iget-object v1, p0, Landroid/icu/text/Bidi;->paras_level:[B

    array-length v2, v1

    if-gt v0, v2, :cond_0

    return-void

    .line 1744
    :cond_0
    array-length v2, v1

    .line 1745
    iget-object v3, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    mul-int/lit8 v0, v0, 0x2

    .line 1748
    :try_start_0
    new-array v4, v0, [I

    iput-object v4, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    .line 1749
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/icu/text/Bidi;->paras_level:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    iget-object v0, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1754
    iget-object p0, p0, Landroid/icu/text/Bidi;->paras_level:[B

    invoke-static {v1, v4, p0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-void

    .line 1751
    :catch_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "Failed to allocate memory for paras"

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private directionFromFlags()B
    .locals 2

    .line 2329
    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_RTL:I

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 2330
    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v1, Landroid/icu/text/Bidi;->MASK_POSSIBLE_N:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2333
    :cond_1
    iget p0, p0, Landroid/icu/text/Bidi;->flags:I

    sget v0, Landroid/icu/text/Bidi;->MASK_LTR:I

    and-int/2addr p0, v0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method private firstL_R_AL()B
    .locals 5

    const/16 v0, 0xa

    const/4 v1, 0x0

    :goto_0
    move v2, v0

    .line 1718
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1719
    iget-object v3, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    .line 1720
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v1, v4

    .line 1721
    invoke-virtual {p0, v3}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v3

    int-to-byte v3, v3

    if-ne v2, v0, :cond_2

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_3
    return v2
.end method

.method private firstL_R_AL_EN_AN()B
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 3343
    :cond_0
    iget-object v2, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3344
    iget-object v2, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 3345
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 3346
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v2

    int-to-byte v2, v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    return v3

    :cond_3
    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_4
    :goto_0
    return v3

    :cond_5
    const/4 p0, 0x4

    return p0
.end method

.method private fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V
    .locals 5

    .line 2100
    iget-object v0, p1, Landroid/icu/text/Bidi$BracketData;->isoRuns:[Landroid/icu/text/Bidi$IsoRun;

    iget v1, p1, Landroid/icu/text/Bidi$BracketData;->isoRunLast:I

    aget-object v0, v0, v1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    .line 2103
    iget-short v1, v0, Landroid/icu/text/Bidi$IsoRun;->limit:S

    if-ge p2, v1, :cond_4

    .line 2104
    iget-object v1, p1, Landroid/icu/text/Bidi$BracketData;->openings:[Landroid/icu/text/Bidi$Opening;

    aget-object v1, v1, p2

    .line 2105
    iget v2, v1, Landroid/icu/text/Bidi$Opening;->match:I

    if-ltz v2, :cond_0

    goto :goto_0

    .line 2107
    :cond_0
    iget v2, v1, Landroid/icu/text/Bidi$Opening;->contextPos:I

    if-ge p3, v2, :cond_1

    goto :goto_1

    .line 2109
    :cond_1
    iget v2, v1, Landroid/icu/text/Bidi$Opening;->position:I

    if-lt p3, v2, :cond_2

    goto :goto_0

    .line 2111
    :cond_2
    iget-byte v2, v1, Landroid/icu/text/Bidi$Opening;->contextDir:B

    if-ne p4, v2, :cond_3

    goto :goto_1

    .line 2113
    :cond_3
    iget v2, v1, Landroid/icu/text/Bidi$Opening;->position:I

    .line 2114
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v3, v2

    .line 2115
    iget v3, v1, Landroid/icu/text/Bidi$Opening;->match:I

    neg-int v3, v3

    .line 2116
    iget-object v4, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte p4, v4, v3

    const/4 v4, 0x0

    .line 2117
    iput v4, v1, Landroid/icu/text/Bidi$Opening;->match:I

    .line 2118
    invoke-direct {p0, p1, p2, v2, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    .line 2119
    invoke-direct {p0, p1, p2, v3, p4}, Landroid/icu/text/Bidi;->fixN0c(Landroid/icu/text/Bidi$BracketData;IIB)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public static getBaseDirection(Ljava/lang/CharSequence;)B
    .locals 7

    const/4 v0, 0x3

    if-eqz p0, :cond_4

    .line 1685
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1689
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1695
    invoke-static {p0, v3}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1696
    invoke-static {v4}, Landroid/icu/lang/UCharacter;->getDirectionality(I)B

    move-result v4

    if-nez v4, :cond_1

    return v2

    :cond_1
    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/16 v6, 0xd

    if-ne v4, v6, :cond_2

    goto :goto_1

    .line 1704
    :cond_2
    invoke-static {p0, v3, v5}, Landroid/icu/lang/UCharacter;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    move-result v3

    goto :goto_0

    :cond_3
    :goto_1
    return v5

    :cond_4
    :goto_2
    return v0
.end method

.method private getDirProps()V
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1773
    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1777
    iget-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1780
    iget v4, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    :cond_0
    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    const/4 v5, -0x1

    .line 1783
    iput v5, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    .line 1785
    iget v6, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    const/16 v8, 0x7e

    new-array v9, v8, [I

    new-array v8, v8, [B

    .line 1803
    iget v10, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_3

    .line 1804
    iput v1, v0, Landroid/icu/text/Bidi;->length:I

    .line 1805
    :cond_3
    iget-byte v10, v0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 v11, v10, 0x1

    int-to-byte v11, v11

    const/16 v12, 0xa

    if-eqz v2, :cond_6

    .line 1808
    iget-object v10, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aput-byte v11, v10, v1

    .line 1810
    iget-object v10, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 1811
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->firstL_R_AL()B

    move-result v10

    if-eq v10, v12, :cond_5

    if-nez v10, :cond_4

    .line 1813
    iget-object v10, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aput-byte v1, v10, v1

    goto :goto_2

    .line 1815
    :cond_4
    iget-object v10, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aput-byte v3, v10, v1

    :goto_2
    move v10, v1

    goto :goto_3

    :cond_5
    move v10, v3

    :goto_3
    move v13, v11

    goto :goto_4

    .line 1821
    :cond_6
    iget-object v13, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aput-byte v10, v13, v1

    move v10, v1

    move v13, v12

    :goto_4
    move v14, v1

    move v15, v10

    move/from16 v16, v13

    move v10, v14

    move v13, v5

    .line 1831
    :goto_5
    iget v12, v0, Landroid/icu/text/Bidi;->originalLength:I

    const/16 v17, 0x14

    if-ge v10, v12, :cond_22

    .line 1833
    iget-object v7, v0, Landroid/icu/text/Bidi;->text:[C

    invoke-static {v7, v1, v12, v10}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v7

    .line 1834
    invoke-static {v7}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v12

    add-int/2addr v12, v10

    add-int/lit8 v1, v12, -0x1

    .line 1837
    invoke-virtual {v0, v7}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v3

    int-to-byte v3, v3

    .line 1838
    iget v5, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v19

    or-int v5, v5, v19

    iput v5, v0, Landroid/icu/text/Bidi;->flags:I

    .line 1839
    iget-object v5, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v3, v5, v1

    if-le v1, v10, :cond_8

    .line 1841
    iget v5, v0, Landroid/icu/text/Bidi;->flags:I

    const/16 v19, 0x12

    invoke-static/range {v19 .. v19}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v20

    or-int v5, v5, v20

    iput v5, v0, Landroid/icu/text/Bidi;->flags:I

    move v5, v1

    move/from16 v20, v11

    .line 1843
    :cond_7
    iget-object v11, v0, Landroid/icu/text/Bidi;->dirProps:[B

    const/16 v18, -0x1

    add-int/lit8 v5, v5, -0x1

    aput-byte v19, v11, v5

    if-gt v5, v10, :cond_7

    goto :goto_6

    :cond_8
    move/from16 v20, v11

    const/16 v18, -0x1

    :goto_6
    if-eqz v6, :cond_9

    .line 1846
    invoke-static {v7}, Landroid/icu/text/Bidi;->IsBidiControlChar(I)Z

    move-result v5

    if-eqz v5, :cond_9

    add-int/lit8 v14, v14, 0x1

    :cond_9
    if-nez v3, :cond_d

    const/4 v5, 0x1

    if-ne v15, v5, :cond_a

    .line 1851
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v3, v5

    const/4 v5, 0x0

    aput-byte v5, v1, v3

    const/4 v15, 0x0

    goto :goto_7

    :cond_a
    const/4 v1, 0x2

    if-ne v15, v1, :cond_c

    const/16 v1, 0x7d

    if-gt v13, v1, :cond_b

    .line 1858
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v17 .. v17}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v3

    or-int/2addr v1, v3

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    :cond_b
    const/4 v15, 0x3

    :cond_c
    :goto_7
    move v10, v12

    move/from16 v5, v18

    move/from16 v11, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/16 v16, 0x0

    goto :goto_5

    :cond_d
    const/16 v5, 0x15

    const/16 v10, 0xd

    const/4 v11, 0x1

    if-eq v3, v11, :cond_1d

    if-ne v3, v10, :cond_e

    const/16 v7, 0xa

    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_e
    const/16 v11, 0x13

    if-lt v3, v11, :cond_11

    if-gt v3, v5, :cond_11

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x7d

    if-gt v13, v5, :cond_f

    .line 1885
    aput v1, v9, v13

    .line 1886
    aput-byte v15, v8, v13

    :cond_f
    if-ne v3, v11, :cond_10

    .line 1889
    iget-object v3, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v17, v3, v1

    move v10, v12

    move/from16 v5, v18

    move/from16 v11, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v15, 0x2

    goto/16 :goto_5

    :cond_10
    move v10, v12

    move/from16 v5, v18

    move/from16 v11, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v15, 0x3

    goto/16 :goto_5

    :cond_11
    const/16 v1, 0x16

    if-ne v3, v1, :cond_15

    const/4 v1, 0x2

    if-ne v15, v1, :cond_12

    const/16 v1, 0x7d

    if-gt v13, v1, :cond_13

    .line 1901
    iget v3, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v17 .. v17}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v3, v5

    iput v3, v0, Landroid/icu/text/Bidi;->flags:I

    goto :goto_8

    :cond_12
    const/16 v1, 0x7d

    :cond_13
    :goto_8
    if-ltz v13, :cond_1b

    if-gt v13, v1, :cond_14

    .line 1906
    aget-byte v15, v8, v13

    :cond_14
    add-int/lit8 v13, v13, -0x1

    move v10, v12

    move/from16 v5, v18

    move/from16 v11, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    goto/16 :goto_c

    :cond_15
    const/4 v1, 0x7

    if-ne v3, v1, :cond_1b

    .line 1912
    iget v1, v0, Landroid/icu/text/Bidi;->originalLength:I

    if-ge v12, v1, :cond_16

    if-ne v7, v10, :cond_16

    iget-object v1, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v1, v1, v12

    const/16 v7, 0xa

    if-ne v1, v7, :cond_17

    move/from16 v1, v16

    goto :goto_a

    :cond_16
    const/16 v7, 0xa

    .line 1914
    :cond_17
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    add-int/lit8 v5, v3, -0x1

    aput v12, v1, v5

    move/from16 v1, v16

    if-eqz v4, :cond_18

    const/4 v5, 0x1

    if-ne v1, v5, :cond_18

    .line 1916
    iget-object v10, v0, Landroid/icu/text/Bidi;->paras_level:[B

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v10, v3

    .line 1917
    :cond_18
    iget v3, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_19

    .line 1920
    iput v12, v0, Landroid/icu/text/Bidi;->length:I

    .line 1921
    iput v14, v0, Landroid/icu/text/Bidi;->controlCount:I

    .line 1923
    :cond_19
    iget v3, v0, Landroid/icu/text/Bidi;->originalLength:I

    if-ge v12, v3, :cond_1c

    .line 1924
    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    const/4 v11, 0x1

    add-int/2addr v3, v11

    iput v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    .line 1925
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->checkParaCount()V

    if-eqz v2, :cond_1a

    .line 1927
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v3, v11

    aput-byte v20, v1, v3

    move v15, v11

    move/from16 v16, v20

    goto :goto_9

    .line 1931
    :cond_1a
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v5, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v5, v11

    iget-byte v10, v0, Landroid/icu/text/Bidi;->paraLevel:B

    aput-byte v10, v3, v5

    move/from16 v16, v1

    const/4 v15, 0x0

    :goto_9
    move v3, v11

    move v10, v12

    move/from16 v5, v18

    move v13, v5

    goto :goto_b

    :cond_1b
    move/from16 v1, v16

    const/16 v7, 0xa

    :cond_1c
    :goto_a
    const/4 v11, 0x1

    move/from16 v16, v1

    move v3, v11

    move v10, v12

    move/from16 v5, v18

    :goto_b
    move/from16 v11, v20

    const/4 v1, 0x0

    :goto_c
    const/4 v7, 0x2

    goto/16 :goto_5

    :cond_1d
    const/16 v7, 0xa

    :goto_d
    if-ne v15, v11, :cond_1e

    .line 1867
    iget-object v5, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v15, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v15, v11

    aput-byte v11, v5, v15

    const/4 v15, 0x0

    goto :goto_e

    :cond_1e
    const/4 v11, 0x2

    if-ne v15, v11, :cond_20

    const/16 v11, 0x7d

    if-gt v13, v11, :cond_1f

    .line 1872
    iget-object v11, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget v15, v9, v13

    aput-byte v5, v11, v15

    .line 1873
    iget v11, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v5}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v5, v11

    iput v5, v0, Landroid/icu/text/Bidi;->flags:I

    :cond_1f
    const/4 v15, 0x3

    :cond_20
    :goto_e
    if-ne v3, v10, :cond_21

    .line 1879
    iput v1, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    :cond_21
    move v10, v12

    move/from16 v5, v18

    move/from16 v11, v20

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/16 v16, 0x1

    goto/16 :goto_5

    :cond_22
    move/from16 v1, v16

    const/16 v3, 0x7d

    if-le v13, v3, :cond_23

    const/4 v15, 0x2

    goto :goto_f

    :cond_23
    move v3, v13

    :goto_f
    if-ltz v3, :cond_25

    const/4 v5, 0x2

    if-ne v15, v5, :cond_24

    .line 1949
    iget v3, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static/range {v17 .. v17}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v5

    or-int/2addr v3, v5

    iput v3, v0, Landroid/icu/text/Bidi;->flags:I

    goto :goto_10

    .line 1952
    :cond_24
    aget-byte v15, v8, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 1956
    :cond_25
    :goto_10
    iget v3, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_27

    .line 1957
    iget v3, v0, Landroid/icu/text/Bidi;->length:I

    iget v5, v0, Landroid/icu/text/Bidi;->originalLength:I

    if-ge v3, v5, :cond_26

    .line 1958
    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    iput v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    goto :goto_11

    :cond_26
    const/4 v5, 0x1

    goto :goto_11

    :cond_27
    const/4 v5, 0x1

    .line 1960
    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    iget v6, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v6, v5

    iget v7, v0, Landroid/icu/text/Bidi;->originalLength:I

    aput v7, v3, v6

    .line 1961
    iput v14, v0, Landroid/icu/text/Bidi;->controlCount:I

    :goto_11
    if-eqz v4, :cond_28

    if-ne v1, v5, :cond_28

    .line 1966
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_level:[B

    iget v3, v0, Landroid/icu/text/Bidi;->paraCount:I

    sub-int/2addr v3, v5

    aput-byte v5, v1, v3

    :cond_28
    if-eqz v2, :cond_29

    .line 1969
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_level:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    iput-byte v1, v0, Landroid/icu/text/Bidi;->paraLevel:B

    :cond_29
    const/4 v1, 0x0

    .line 1973
    :goto_12
    iget v2, v0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v1, v2, :cond_2a

    .line 1974
    iget v2, v0, Landroid/icu/text/Bidi;->flags:I

    iget-object v3, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v3, v1

    invoke-static {v3}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v3

    or-int/2addr v2, v3

    iput v2, v0, Landroid/icu/text/Bidi;->flags:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1976
    :cond_2a
    iget-boolean v1, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v1, :cond_2b

    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    .line 1977
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    :cond_2b
    return-void
.end method

.method private getDirPropsMemory(ZI)V
    .locals 6

    .line 1336
    iget-object v2, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v1, "DirProps"

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1337
    check-cast p1, [B

    iput-object p1, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    return-void
.end method

.method private getInitialDirPropsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1370
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    return-void
.end method

.method private getInitialLevelsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1375
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    return-void
.end method

.method private getInitialRunsMemory(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1380
    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    return-void
.end method

.method private getLevelsMemory(ZI)V
    .locals 6

    .line 1347
    iget-object v2, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v1, "Levels"

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1348
    check-cast p1, [B

    iput-object p1, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    return-void
.end method

.method private getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;ZI)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1308
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p0

    if-ne p5, p0, :cond_0

    return-object p2

    :cond_0
    const-string v0, "Failed to allocate memory for "

    if-nez p4, :cond_2

    if-gt p5, p0, :cond_1

    return-object p2

    .line 1319
    :cond_1
    new-instance p0, Ljava/lang/OutOfMemoryError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1326
    :cond_2
    :try_start_0
    invoke-static {p3, p5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1328
    :catch_0
    new-instance p0, Ljava/lang/OutOfMemoryError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getRunsMemory(ZI)V
    .locals 6

    .line 1358
    iget-object v2, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    const-class v3, Landroid/icu/text/BidiRun;

    const-string v1, "Runs"

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/Bidi;->getMemory(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;ZI)Ljava/lang/Object;

    move-result-object p1

    .line 1359
    check-cast p1, [Landroid/icu/text/BidiRun;

    iput-object p1, p0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    return-void
.end method

.method public static invertMap([I)[I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5157
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->invertMap([I)[I

    move-result-object p0

    return-object p0
.end method

.method private lastL_R_AL()B
    .locals 5

    .line 3321
    iget-object v0, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-lez v0, :cond_4

    .line 3322
    iget-object v2, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->codePointBefore(I)I

    move-result v2

    .line 3323
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v0, v3

    .line 3324
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getCustomizedClass(I)I

    move-result v2

    int-to-byte v2, v2

    if-nez v2, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    return v1

    :cond_3
    :goto_0
    return v3

    :cond_4
    return v1
.end method

.method private processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V
    .locals 11

    .line 3125
    iget-object v0, p1, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    .line 3126
    iget-object v1, p1, Landroid/icu/text/Bidi$LevState;->impAct:[S

    .line 3132
    iget-short v2, p1, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3133
    aget-object v3, v0, v2

    aget-byte v3, v3, p2

    .line 3134
    invoke-static {v3}, Landroid/icu/text/Bidi;->GetState(B)S

    move-result v4

    iput-short v4, p1, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3135
    invoke-static {v3}, Landroid/icu/text/Bidi;->GetAction(B)S

    move-result v3

    aget-short v1, v1, v3

    .line 3136
    iget-short v3, p1, Landroid/icu/text/Bidi$LevState;->state:S

    aget-object v3, v0, v3

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    if-eqz v1, :cond_12

    const/4 v5, -0x2

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    .line 3301
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal ICU error in processPropertySeq"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3292
    :pswitch_0
    iget-byte p2, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v10

    int-to-byte p2, p2

    add-int/lit8 v0, p3, -0x1

    .line 3293
    :goto_0
    iget v1, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lt v0, v1, :cond_12

    .line 3294
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    if-le v2, p2, :cond_0

    .line 3295
    aget-byte v2, v1, v0

    sub-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3273
    :pswitch_1
    iget-byte p2, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/lit8 v0, p3, -0x1

    .line 3274
    :goto_1
    iget v1, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lt v0, v1, :cond_12

    .line 3275
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v1, v1, v0

    add-int/lit8 v2, p2, 0x3

    if-ne v1, v2, :cond_2

    .line 3276
    :goto_2
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v4, v1, v0

    if-ne v4, v2, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 3277
    aget-byte v5, v1, v0

    sub-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    move v0, v4

    goto :goto_2

    .line 3279
    :cond_1
    :goto_3
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v1, v1, v0

    if-ne v1, p2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 3283
    :cond_2
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    add-int/lit8 v4, p2, 0x2

    if-ne v2, v4, :cond_3

    .line 3284
    aput-byte p2, v1, v0

    goto :goto_4

    :cond_3
    add-int/lit8 v2, p2, 0x1

    int-to-byte v2, v2

    .line 3287
    aput-byte v2, v1, v0

    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3262
    :pswitch_2
    iget-byte p2, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v3

    int-to-byte p2, p2

    .line 3263
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    :goto_5
    if-ge v0, p3, :cond_5

    .line 3264
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    if-ge v2, p2, :cond_4

    .line 3265
    aput-byte p2, v1, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3268
    :cond_5
    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3269
    iput p3, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_a

    .line 3254
    :pswitch_3
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v1, v0, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v1, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-ne p2, v7, :cond_12

    .line 3256
    invoke-direct {p0, p3, v6}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3257
    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    goto/16 :goto_a

    .line 3248
    :pswitch_4
    invoke-direct {p0, p3, v10}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3249
    invoke-direct {p0, p3, v8}, Landroid/icu/text/Bidi;->addPoint(II)V

    goto/16 :goto_a

    :pswitch_5
    add-int/lit8 p2, p3, -0x1

    :goto_6
    if-ltz p2, :cond_6

    .line 3236
    iget-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v0, v0, p2

    and-int/2addr v0, v10

    if-nez v0, :cond_6

    add-int/lit8 p2, p2, -0x1

    goto :goto_6

    :cond_6
    if-ltz p2, :cond_7

    .line 3239
    invoke-direct {p0, p2, v6}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3240
    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3242
    :cond_7
    iput p3, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_a

    :pswitch_6
    add-int/lit8 p2, p4, -0x1

    .line 3230
    iput p2, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3231
    iput v9, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto/16 :goto_a

    :pswitch_7
    const/4 v0, 0x3

    if-ne p2, v0, :cond_a

    .line 3206
    iget-object p2, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte p2, p2, p3

    if-ne p2, v7, :cond_a

    iget p2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v0, 0x6

    if-eq p2, v0, :cond_a

    .line 3210
    iget p2, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ne p2, v9, :cond_8

    add-int/lit8 p2, p4, -0x1

    .line 3212
    iput p2, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    goto/16 :goto_a

    .line 3215
    :cond_8
    iget p2, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz p2, :cond_9

    .line 3216
    iget p2, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    invoke-direct {p0, p2, v10}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3217
    iput v5, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    .line 3220
    :cond_9
    invoke-direct {p0, p3, v10}, Landroid/icu/text/Bidi;->addPoint(II)V

    goto/16 :goto_a

    .line 3224
    :cond_a
    iget p2, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ne p2, v9, :cond_12

    .line 3225
    iput p3, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    goto/16 :goto_a

    .line 3196
    :pswitch_8
    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object p2, p2, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length p2, p2

    if-lez p2, :cond_b

    .line 3198
    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, p2, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    iput v0, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    .line 3199
    :cond_b
    iput v9, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3200
    iput v9, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    add-int/lit8 p2, p4, -0x1

    .line 3201
    iput p2, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    goto/16 :goto_a

    .line 3160
    :pswitch_9
    iget v1, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    if-ltz v1, :cond_c

    .line 3161
    iget v1, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    invoke-direct {p0, v1, v10}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3163
    :cond_c
    iput v9, p1, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    .line 3165
    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget-object v1, v1, Landroid/icu/text/Bidi$InsertPoints;->points:[Landroid/icu/text/Bidi$Point;

    array-length v1, v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v1, v1, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iget-object v6, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v6, v6, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    if-gt v1, v6, :cond_d

    goto :goto_8

    .line 3181
    :cond_d
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    add-int/2addr v0, v10

    :goto_7
    if-ge v0, p3, :cond_e

    .line 3183
    iget-object v1, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v2, v1, v0

    sub-int/2addr v2, v8

    and-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3186
    :cond_e
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v1, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v1, v0, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3187
    iput v9, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    if-ne p2, v7, :cond_12

    .line 3189
    invoke-direct {p0, p3, v10}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3190
    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v0, p2, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    goto :goto_a

    .line 3168
    :cond_f
    :goto_8
    iput v9, p1, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3170
    aget-object v0, v0, v2

    aget-byte v0, v0, v4

    and-int/2addr v0, v10

    if-eqz v0, :cond_10

    .line 3171
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    if-lez v0, :cond_10

    .line 3172
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto :goto_9

    :cond_10
    move v0, p3

    :goto_9
    if-ne p2, v7, :cond_11

    .line 3175
    invoke-direct {p0, p3, v10}, Landroid/icu/text/Bidi;->addPoint(II)V

    .line 3176
    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v1, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    iput v1, p2, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    :cond_11
    move p2, v0

    goto :goto_b

    .line 3154
    :pswitch_a
    iget-byte p2, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v8

    int-to-byte p2, p2

    .line 3155
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    invoke-direct {p0, v0, p3, p2}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    goto :goto_a

    .line 3149
    :pswitch_b
    iget-byte p2, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p2, v10

    int-to-byte p2, p2

    .line 3150
    iget v0, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    invoke-direct {p0, v0, p3, p2}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    goto :goto_a

    .line 3145
    :pswitch_c
    iget p2, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    goto :goto_b

    .line 3141
    :pswitch_d
    iput p3, p1, Landroid/icu/text/Bidi$LevState;->startON:I

    :cond_12
    :goto_a
    move p2, p3

    :goto_b
    if-nez v3, :cond_13

    if-ge p2, p3, :cond_15

    .line 3305
    :cond_13
    iget-byte p3, p1, Landroid/icu/text/Bidi$LevState;->runLevel:B

    add-int/2addr p3, v3

    int-to-byte p3, p3

    .line 3306
    iget p1, p1, Landroid/icu/text/Bidi$LevState;->runStart:I

    if-lt p2, p1, :cond_14

    :goto_c
    if-ge p2, p4, :cond_15

    .line 3308
    iget-object p1, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte p3, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 3311
    :cond_14
    invoke-direct {p0, p2, p4, p3}, Landroid/icu/text/Bidi;->setLevelsOutsideIsolates(IIB)V

    :cond_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static reorderLogical([B)[I
    .locals 0

    .line 5095
    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderLogical([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static reorderVisual([B)[I
    .locals 0

    .line 5116
    invoke-static {p0}, Landroid/icu/text/BidiLine;->reorderVisual([B)[I

    move-result-object p0

    return-object p0
.end method

.method public static reorderVisually([BI[Ljava/lang/Object;II)V
    .locals 3

    .line 5584
    new-array v0, p4, [B

    const/4 v1, 0x0

    .line 5585
    invoke-static {p0, p1, v0, v1, p4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5586
    invoke-static {v0}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object p0

    .line 5587
    new-array p1, p4, [Ljava/lang/Object;

    .line 5588
    invoke-static {p2, p3, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v1, p4, :cond_0

    add-int v0, p3, v1

    .line 5590
    aget v2, p0, v1

    aget-object v2, p1, v2

    aput-object v2, p2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static requiresBidi([CII)Z
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_1

    .line 5555
    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const v2, 0xe022

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private resolveExplicitLevels()B
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2394
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    .line 2396
    iput v1, v0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 2399
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    return v3

    .line 2406
    :cond_0
    iget v4, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    move v2, v1

    .line 2410
    :goto_0
    iget v4, v0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v2, v4, :cond_3

    if-nez v2, :cond_1

    move v4, v1

    goto :goto_1

    .line 2414
    :cond_1
    iget-object v4, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    .line 2415
    :goto_1
    iget-object v5, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v5, v5, v2

    .line 2416
    iget-object v6, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v6, v6, v2

    :goto_2
    if-ge v4, v5, :cond_2

    .line 2418
    iget-object v7, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v6, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3

    .line 2422
    :cond_4
    iget v4, v0, Landroid/icu/text/Bidi;->flags:I

    sget v6, Landroid/icu/text/Bidi;->MASK_EXPLICIT:I

    sget v7, Landroid/icu/text/Bidi;->MASK_ISO:I

    or-int/2addr v6, v7

    and-int/2addr v4, v6

    const/16 v6, 0xd

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/16 v9, 0x12

    if-nez v4, :cond_c

    .line 2426
    new-instance v2, Landroid/icu/text/Bidi$BracketData;

    invoke-direct {v2}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    .line 2427
    invoke-direct {v0, v2}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    move v4, v1

    .line 2428
    :goto_3
    iget v5, v0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v4, v5, :cond_b

    if-nez v4, :cond_5

    move v5, v1

    goto :goto_4

    .line 2432
    :cond_5
    iget-object v5, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v10, v4, -0x1

    aget v5, v5, v10

    .line 2433
    :goto_4
    iget-object v10, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v10, v10, v4

    .line 2434
    iget-object v11, v0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v11, v11, v4

    :goto_5
    if-ge v5, v10, :cond_a

    .line 2436
    iget-object v12, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v12, v5

    .line 2437
    iget-object v12, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v12, v12, v5

    if-ne v12, v9, :cond_6

    goto :goto_6

    :cond_6
    if-ne v12, v7, :cond_8

    add-int/lit8 v12, v5, 0x1

    .line 2441
    iget v13, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v12, v13, :cond_9

    .line 2442
    iget-object v13, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v14, v13, v5

    if-ne v14, v6, :cond_7

    aget-char v12, v13, v12

    if-ne v12, v8, :cond_7

    goto :goto_6

    .line 2444
    :cond_7
    invoke-direct {v0, v2, v11}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    goto :goto_6

    .line 2448
    :cond_8
    invoke-direct {v0, v2, v5}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    :cond_9
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    return v3

    :cond_c
    const/16 v3, 0x7f

    new-array v3, v3, [S

    .line 2469
    new-instance v4, Landroid/icu/text/Bidi$BracketData;

    invoke-direct {v4}, Landroid/icu/text/Bidi$BracketData;-><init>()V

    .line 2470
    invoke-direct {v0, v4}, Landroid/icu/text/Bidi;->bracketInit(Landroid/icu/text/Bidi$BracketData;)V

    int-to-short v10, v2

    aput-short v10, v3, v1

    .line 2474
    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    move v12, v1

    move v13, v12

    move v14, v13

    move v15, v14

    move/from16 v16, v15

    move v10, v2

    move v11, v10

    move/from16 v2, v16

    .line 2476
    :goto_7
    iget v1, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v1, :cond_21

    .line 2477
    iget-object v1, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, v2

    const/16 v6, 0x7d

    const/16 v7, 0x100

    const/16 v17, 0x9

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v7, v8

    const/16 v8, 0xd

    .line 2614
    invoke-static {v10}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v1

    invoke-static {v11}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v6

    if-eq v1, v6, :cond_20

    .line 2615
    invoke-direct {v0, v4, v13, v11, v10}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    .line 2617
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    sget v6, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    and-int/lit8 v1, v10, -0x80

    if-eqz v1, :cond_1f

    .line 2619
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v10}, Landroid/icu/text/Bidi;->DirPropFlagO(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    goto/16 :goto_f

    .line 2564
    :pswitch_1
    invoke-static {v10}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v1

    invoke-static {v11}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v6

    if-eq v1, v6, :cond_d

    .line 2565
    invoke-direct {v0, v4, v13, v11, v10}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    .line 2567
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    sget v6, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    :cond_d
    if-lez v12, :cond_e

    add-int/lit8 v12, v12, -0x1

    .line 2573
    iget-object v1, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v17, v1, v2

    goto :goto_9

    :cond_e
    if-lez v16, :cond_10

    .line 2576
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    const/16 v6, 0x16

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2579
    :goto_8
    aget-short v1, v3, v15

    if-ge v1, v7, :cond_f

    add-int/lit8 v15, v15, -0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v15, v15, -0x1

    add-int/lit8 v16, v16, -0x1

    .line 2583
    invoke-direct {v0, v4}, Landroid/icu/text/Bidi;->bracketProcessPDI(Landroid/icu/text/Bidi$BracketData;)V

    move v13, v2

    const/4 v14, 0x0

    goto :goto_9

    .line 2586
    :cond_10
    iget-object v1, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v17, v1, v2

    .line 2587
    :goto_9
    aget-short v1, v3, v15

    and-int/lit16 v1, v1, -0x101

    int-to-byte v1, v1

    .line 2588
    iget v6, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v10

    or-int/2addr v7, v10

    or-int/2addr v6, v7

    iput v6, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2590
    iget-object v6, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v1}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    aput-byte v7, v6, v2

    move v10, v1

    move v11, v10

    move v7, v8

    goto/16 :goto_c

    .line 2529
    :pswitch_2
    iget v7, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v8}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v18

    invoke-static {v10}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v19

    or-int v18, v18, v19

    or-int v7, v7, v18

    iput v7, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2530
    iget-object v7, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-static {v10}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v18

    aput-byte v18, v7, v2

    .line 2531
    invoke-static {v10}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    invoke-static {v11}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v8

    if-eq v7, v8, :cond_11

    .line 2532
    invoke-direct {v0, v4, v13, v11, v10}, Landroid/icu/text/Bidi;->bracketProcessBoundary(Landroid/icu/text/Bidi$BracketData;IBB)V

    .line 2534
    iget v7, v0, Landroid/icu/text/Bidi;->flags:I

    sget v8, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    or-int/2addr v7, v8

    iput v7, v0, Landroid/icu/text/Bidi;->flags:I

    :cond_11
    const/16 v7, 0x14

    if-ne v1, v7, :cond_12

    add-int/lit8 v7, v10, 0x2

    and-int/lit8 v7, v7, 0x7e

    goto :goto_a

    .line 2543
    :cond_12
    invoke-static {v10}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    add-int/2addr v7, v5

    or-int/2addr v7, v5

    :goto_a
    int-to-byte v7, v7

    if-gt v7, v6, :cond_14

    if-nez v12, :cond_14

    if-nez v14, :cond_14

    .line 2546
    iget v6, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v1}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v1

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    add-int/lit8 v1, v16, 0x1

    .line 2549
    iget v6, v0, Landroid/icu/text/Bidi;->isolateCount:I

    if-le v1, v6, :cond_13

    .line 2550
    iput v1, v0, Landroid/icu/text/Bidi;->isolateCount:I

    :cond_13
    add-int/lit8 v15, v15, 0x1

    add-int/lit16 v6, v7, 0x100

    int-to-short v6, v6

    .line 2555
    aput-short v6, v3, v15

    .line 2556
    invoke-direct {v0, v4, v7}, Landroid/icu/text/Bidi;->bracketProcessLRI_RLI(Landroid/icu/text/Bidi$BracketData;B)V

    move/from16 v16, v1

    move v13, v2

    move v11, v10

    const/16 v8, 0xd

    move v10, v7

    const/16 v7, 0xa

    goto/16 :goto_10

    .line 2559
    :cond_14
    iget-object v1, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aput-byte v17, v1, v2

    add-int/lit8 v12, v12, 0x1

    move v11, v10

    goto :goto_b

    .line 2609
    :pswitch_3
    iget-object v1, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v1, v2

    .line 2610
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    goto :goto_b

    .line 2511
    :pswitch_4
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2512
    iget-object v1, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v1, v2

    if-lez v12, :cond_15

    goto :goto_b

    :cond_15
    if-lez v14, :cond_17

    add-int/lit8 v14, v14, -0x1

    :cond_16
    :goto_b
    const/16 v7, 0xa

    :goto_c
    const/16 v8, 0xd

    goto/16 :goto_10

    :cond_17
    if-lez v15, :cond_16

    .line 2521
    aget-short v1, v3, v15

    if-ge v1, v7, :cond_16

    add-int/lit8 v15, v15, -0x1

    .line 2524
    aget-short v1, v3, v15

    int-to-byte v1, v1

    move v10, v1

    move v13, v2

    goto :goto_b

    .line 2484
    :pswitch_5
    iget v7, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v8

    or-int/2addr v7, v8

    iput v7, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2485
    iget-object v7, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v11, v7, v2

    const/16 v7, 0xb

    const/16 v8, 0xc

    if-eq v1, v7, :cond_19

    if-ne v1, v8, :cond_18

    goto :goto_d

    .line 2491
    :cond_18
    invoke-static {v10}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v7

    add-int/2addr v7, v5

    or-int/2addr v7, v5

    goto :goto_e

    :cond_19
    :goto_d
    add-int/lit8 v7, v10, 0x2

    and-int/lit8 v7, v7, 0x7e

    :goto_e
    int-to-byte v7, v7

    if-gt v7, v6, :cond_1c

    if-nez v12, :cond_1c

    if-nez v14, :cond_1c

    if-eq v1, v8, :cond_1a

    const/16 v6, 0xf

    if-ne v1, v6, :cond_1b

    :cond_1a
    or-int/lit8 v1, v7, -0x80

    int-to-byte v7, v1

    :cond_1b
    add-int/lit8 v15, v15, 0x1

    int-to-short v1, v7

    .line 2499
    aput-short v1, v3, v15

    move v13, v2

    move v10, v7

    goto :goto_b

    :cond_1c
    if-nez v12, :cond_16

    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 2593
    :pswitch_6
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    const/4 v6, 0x7

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    or-int/2addr v1, v7

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2594
    iget-object v1, v0, Landroid/icu/text/Bidi;->levels:[B

    invoke-virtual {v0, v2}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v6

    aput-byte v6, v1, v2

    add-int/lit8 v1, v2, 0x1

    .line 2595
    iget v6, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v1, v6, :cond_16

    .line 2596
    iget-object v6, v0, Landroid/icu/text/Bidi;->text:[C

    aget-char v7, v6, v2

    const/16 v8, 0xd

    if-ne v7, v8, :cond_1d

    aget-char v6, v6, v1

    const/16 v7, 0xa

    if-ne v6, v7, :cond_1e

    goto :goto_10

    :cond_1d
    const/16 v7, 0xa

    .line 2601
    :cond_1e
    invoke-virtual {v0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v1

    int-to-short v6, v1

    const/4 v10, 0x0

    aput-short v6, v3, v10

    .line 2603
    invoke-direct {v0, v4, v1}, Landroid/icu/text/Bidi;->bracketProcessB(Landroid/icu/text/Bidi$BracketData;B)V

    move v10, v1

    move v11, v10

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    goto :goto_10

    .line 2621
    :cond_1f
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    invoke-static {v10}, Landroid/icu/text/Bidi;->DirPropFlagE(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2624
    :cond_20
    :goto_f
    iget-object v1, v0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte v10, v1, v2

    .line 2625
    invoke-direct {v0, v4, v2}, Landroid/icu/text/Bidi;->bracketProcessChar(Landroid/icu/text/Bidi$BracketData;I)V

    .line 2627
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    iget-object v6, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v6, v6, v2

    invoke-static {v6}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v6

    or-int/2addr v1, v6

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    move v11, v10

    :goto_10
    add-int/lit8 v2, v2, 0x1

    move v6, v8

    move v8, v7

    const/4 v7, 0x7

    goto/16 :goto_7

    .line 2631
    :cond_21
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    sget v2, Landroid/icu/text/Bidi;->MASK_EMBEDDING:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_22

    .line 2632
    iget-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2634
    :cond_22
    iget-boolean v1, v0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    if-eqz v1, :cond_23

    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_23

    .line 2635
    iget v1, v0, Landroid/icu/text/Bidi;->flags:I

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/icu/text/Bidi;->flags:I

    .line 2638
    :cond_23
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->directionFromFlags()B

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private resolveImplicitLevels(IISS)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 3366
    new-instance v3, Landroid/icu/text/Bidi$LevState;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/icu/text/Bidi$LevState;-><init>(Landroid/icu/text/Bidi$1;)V

    .line 3381
    iget v4, v0, Landroid/icu/text/Bidi;->lastArabicPos:I

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v1, v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    and-int/2addr v4, v7

    if-lez v4, :cond_1

    iget v4, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    if-eq v4, v5, :cond_0

    const/4 v8, 0x6

    if-ne v4, v8, :cond_1

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    const/4 v8, -0x1

    .line 3385
    iput v8, v3, Landroid/icu/text/Bidi$LevState;->startL2EN:I

    .line 3386
    iput v8, v3, Landroid/icu/text/Bidi$LevState;->lastStrongRTL:I

    .line 3387
    iput v1, v3, Landroid/icu/text/Bidi$LevState;->runStart:I

    .line 3388
    iget-object v9, v0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v9, v9, v1

    iput-byte v9, v3, Landroid/icu/text/Bidi$LevState;->runLevel:B

    .line 3389
    iget-object v9, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    iget-object v9, v9, Landroid/icu/text/Bidi$ImpTabPair;->imptab:[[[B

    iget-byte v10, v3, Landroid/icu/text/Bidi$LevState;->runLevel:B

    and-int/2addr v10, v7

    aget-object v9, v9, v10

    iput-object v9, v3, Landroid/icu/text/Bidi$LevState;->impTab:[[B

    .line 3390
    iget-object v9, v0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    iget-object v9, v9, Landroid/icu/text/Bidi$ImpTabPair;->impact:[[S

    iget-byte v10, v3, Landroid/icu/text/Bidi$LevState;->runLevel:B

    and-int/2addr v10, v7

    aget-object v9, v9, v10

    iput-object v9, v3, Landroid/icu/text/Bidi$LevState;->impAct:[S

    const/4 v9, 0x4

    if-nez v1, :cond_2

    .line 3391
    iget-object v10, v0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 3392
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->lastL_R_AL()B

    move-result v10

    if-eq v10, v9, :cond_2

    int-to-short v10, v10

    goto :goto_1

    :cond_2
    move/from16 v10, p3

    .line 3400
    :goto_1
    iget-object v11, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v12, v11, v1

    const/16 v13, 0x16

    if-ne v12, v13, :cond_3

    .line 3401
    iget-object v6, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v10, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v6, v6, v10

    iget v6, v6, Landroid/icu/text/Bidi$Isolate;->startON:I

    iput v6, v3, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3402
    iget-object v6, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v10, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v6, v6, v10

    iget v6, v6, Landroid/icu/text/Bidi$Isolate;->start1:I

    .line 3403
    iget-object v10, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v11, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v10, v10, v11

    iget-short v10, v10, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    .line 3404
    iget-object v11, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v12, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v11, v11, v12

    iget-short v11, v11, Landroid/icu/text/Bidi$Isolate;->state:S

    iput-short v11, v3, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3405
    iget v11, v0, Landroid/icu/text/Bidi;->isolateCount:I

    sub-int/2addr v11, v7

    iput v11, v0, Landroid/icu/text/Bidi;->isolateCount:I

    move v11, v10

    goto :goto_3

    .line 3407
    :cond_3
    iput v8, v3, Landroid/icu/text/Bidi$LevState;->startON:I

    .line 3409
    aget-byte v11, v11, v1

    const/16 v12, 0x11

    if-ne v11, v12, :cond_4

    add-int/lit8 v11, v10, 0x1

    int-to-short v11, v11

    goto :goto_2

    :cond_4
    move v11, v6

    .line 3413
    :goto_2
    iput-short v6, v3, Landroid/icu/text/Bidi$LevState;->state:S

    .line 3414
    invoke-direct {v0, v3, v10, v1, v1}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    move v6, v1

    :goto_3
    move v13, v1

    move v12, v6

    move v14, v7

    move v10, v8

    move v6, v13

    :goto_4
    const/16 v15, 0x15

    const/16 v5, 0x14

    if-gt v6, v2, :cond_15

    if-lt v6, v2, :cond_7

    add-int/lit8 v16, v2, -0x1

    move/from16 v7, v16

    :goto_5
    if-le v7, v1, :cond_5

    .line 3422
    iget-object v9, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v9, v9, v7

    .line 3423
    invoke-static {v9}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v9

    sget v16, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int v9, v9, v16

    if-eqz v9, :cond_5

    add-int/lit8 v7, v7, -0x1

    goto :goto_5

    .line 3425
    :cond_5
    iget-object v9, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v7, v9, v7

    if-eq v7, v5, :cond_15

    if-ne v7, v15, :cond_6

    goto/16 :goto_e

    :cond_6
    move/from16 v5, p4

    goto :goto_a

    .line 3431
    :cond_7
    iget-object v5, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v5, v5, v6

    const/4 v7, 0x7

    if-ne v5, v7, :cond_8

    .line 3433
    iput v8, v0, Landroid/icu/text/Bidi;->isolateCount:I

    :cond_8
    if-eqz v4, :cond_e

    const/16 v7, 0xd

    if-ne v5, v7, :cond_9

    const/4 v5, 0x1

    goto :goto_9

    :cond_9
    const/4 v9, 0x2

    if-ne v5, v9, :cond_e

    if-gt v10, v6, :cond_d

    add-int/lit8 v9, v6, 0x1

    :goto_6
    if-ge v9, v2, :cond_c

    .line 3445
    iget-object v10, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v10, v10, v9

    if-eqz v10, :cond_b

    const/4 v14, 0x1

    if-eq v10, v14, :cond_b

    if-ne v10, v7, :cond_a

    goto :goto_7

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    int-to-short v10, v10

    move v14, v10

    goto :goto_8

    :cond_c
    move v9, v2

    const/4 v14, 0x1

    goto :goto_8

    :cond_d
    move v9, v10

    :goto_8
    move v10, v9

    if-ne v14, v7, :cond_e

    const/4 v5, 0x5

    .line 3458
    :cond_e
    :goto_9
    sget-object v7, Landroid/icu/text/Bidi;->groupProp:[S

    aget-short v5, v7, v5

    .line 3461
    :goto_a
    sget-object v7, Landroid/icu/text/Bidi;->impTabProps:[[S

    aget-object v7, v7, v11

    aget-short v5, v7, v5

    .line 3462
    invoke-static {v5}, Landroid/icu/text/Bidi;->GetStateProps(S)S

    move-result v7

    .line 3463
    invoke-static {v5}, Landroid/icu/text/Bidi;->GetActionProps(S)S

    move-result v5

    if-ne v6, v2, :cond_f

    if-nez v5, :cond_f

    const/4 v5, 0x1

    :cond_f
    if-eqz v5, :cond_14

    .line 3469
    sget-object v9, Landroid/icu/text/Bidi;->impTabProps:[[S

    aget-object v9, v9, v11

    const/16 v11, 0xf

    aget-short v9, v9, v11

    const/4 v11, 0x1

    if-eq v5, v11, :cond_13

    const/4 v11, 0x2

    if-eq v5, v11, :cond_12

    const/4 v11, 0x3

    if-eq v5, v11, :cond_11

    const/4 v11, 0x4

    if-ne v5, v11, :cond_10

    .line 3484
    invoke-direct {v0, v3, v9, v12, v13}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    move v12, v13

    goto :goto_b

    .line 3489
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Internal ICU error in resolveImplicitLevels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    const/4 v11, 0x4

    .line 3479
    invoke-direct {v0, v3, v9, v12, v13}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    .line 3480
    invoke-direct {v0, v3, v11, v13, v6}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    goto :goto_c

    :cond_12
    :goto_b
    move v13, v6

    goto :goto_d

    .line 3472
    :cond_13
    invoke-direct {v0, v3, v9, v12, v6}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    :goto_c
    move v12, v6

    :cond_14
    :goto_d
    add-int/lit8 v6, v6, 0x1

    move v11, v7

    const/4 v5, 0x5

    const/4 v7, 0x1

    const/4 v9, 0x4

    goto/16 :goto_4

    .line 3495
    :cond_15
    :goto_e
    iget v4, v0, Landroid/icu/text/Bidi;->length:I

    if-ne v2, v4, :cond_16

    iget-object v4, v0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    if-eqz v4, :cond_16

    .line 3496
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/Bidi;->firstL_R_AL_EN_AN()B

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_16

    int-to-short v4, v4

    goto :goto_f

    :cond_16
    move/from16 v4, p4

    :goto_f
    add-int/lit8 v6, v2, -0x1

    :goto_10
    if-le v6, v1, :cond_17

    .line 3504
    iget-object v7, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v7, v7, v6

    .line 3505
    invoke-static {v7}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v7

    sget v8, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_17

    add-int/lit8 v6, v6, -0x1

    goto :goto_10

    .line 3507
    :cond_17
    iget-object v1, v0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, v6

    if-eq v1, v5, :cond_18

    if-ne v1, v15, :cond_1a

    .line 3508
    :cond_18
    iget v1, v0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v1, :cond_1a

    .line 3509
    iget v1, v0, Landroid/icu/text/Bidi;->isolateCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 3510
    iget-object v1, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v2, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v4, v1, v2

    if-nez v4, :cond_19

    .line 3511
    new-instance v4, Landroid/icu/text/Bidi$Isolate;

    invoke-direct {v4}, Landroid/icu/text/Bidi$Isolate;-><init>()V

    aput-object v4, v1, v2

    .line 3512
    :cond_19
    iget-object v1, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v2, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v4, v1, v2

    iput-short v11, v4, Landroid/icu/text/Bidi$Isolate;->stateImp:S

    .line 3513
    aget-object v1, v1, v2

    iget-short v2, v3, Landroid/icu/text/Bidi$LevState;->state:S

    iput-short v2, v1, Landroid/icu/text/Bidi$Isolate;->state:S

    .line 3514
    iget-object v1, v0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    iget v0, v0, Landroid/icu/text/Bidi;->isolateCount:I

    aget-object v2, v1, v0

    iput v12, v2, Landroid/icu/text/Bidi$Isolate;->start1:I

    .line 3515
    aget-object v0, v1, v0

    iget v1, v3, Landroid/icu/text/Bidi$LevState;->startON:I

    iput v1, v0, Landroid/icu/text/Bidi$Isolate;->startON:I

    goto :goto_11

    .line 3518
    :cond_1a
    invoke-direct {v0, v3, v4, v2, v2}, Landroid/icu/text/Bidi;->processPropertySeq(Landroid/icu/text/Bidi$LevState;SII)V

    :goto_11
    return-void
.end method

.method private setLevelsOutsideIsolates(IIB)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p1, p2, :cond_4

    .line 3097
    iget-object v1, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v1, v1, p1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    if-nez v0, :cond_1

    .line 3101
    iget-object v2, p0, Landroid/icu/text/Bidi;->levels:[B

    aput-byte p3, v2, p1

    :cond_1
    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    const/16 v2, 0x15

    if-ne v1, v2, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setParaSuccess()V
    .locals 1

    const/4 v0, 0x0

    .line 3636
    iput-object v0, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    .line 3637
    iput-object v0, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    .line 3638
    iput-object p0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    return-void
.end method

.method public static writeReverse(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    .line 5704
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 5705
    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReverse(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0

    .line 5701
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method Bidi_Abs(I)I
    .locals 0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int p1, p1

    :goto_0
    return p1
.end method

.method Bidi_Min(II)I
    .locals 0

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    return p1
.end method

.method GetParaLevelAt(I)B
    .locals 3

    .line 1984
    iget-byte v0, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ge p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    .line 1987
    :goto_0
    iget v2, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge v1, v2, :cond_2

    .line 1988
    iget-object v2, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1990
    :cond_2
    :goto_1
    iget p1, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-lt v1, p1, :cond_3

    add-int/lit8 v1, p1, -0x1

    .line 1992
    :cond_3
    iget-object p0, p0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte p0, p0, v1

    return p0

    .line 1985
    :cond_4
    :goto_2
    iget-byte p0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    return p0
.end method

.method public baseIsLeftToRight()Z
    .locals 0

    .line 5408
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public countParagraphs()I
    .locals 0

    .line 4519
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4520
    iget p0, p0, Landroid/icu/text/Bidi;->paraCount:I

    return p0
.end method

.method public countRuns()I
    .locals 0

    .line 4810
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4811
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 4812
    iget p0, p0, Landroid/icu/text/Bidi;->runCount:I

    return p0
.end method

.method public createLineBidi(II)Landroid/icu/text/Bidi;
    .locals 0

    .line 5350
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Bidi;->setLine(II)Landroid/icu/text/Bidi;

    move-result-object p0

    return-object p0
.end method

.method public getBaseLevel()I
    .locals 0

    .line 5421
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result p0

    return p0
.end method

.method public getCustomClassifier()Landroid/icu/text/BidiClassifier;
    .locals 0

    .line 4645
    iget-object p0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    return-object p0
.end method

.method public getCustomizedClass(I)I
    .locals 2

    .line 4664
    iget-object v0, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    const/16 v1, 0x17

    if-eqz v0, :cond_0

    .line 4665
    invoke-virtual {v0, p1}, Landroid/icu/text/BidiClassifier;->classify(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4666
    :cond_0
    iget-object p0, p0, Landroid/icu/text/Bidi;->bdp:Landroid/icu/impl/UBiDiProps;

    invoke-virtual {p0, p1}, Landroid/icu/impl/UBiDiProps;->getClass(I)I

    move-result v0

    :cond_1
    if-lt v0, v1, :cond_2

    const/16 v0, 0xa

    :cond_2
    return v0
.end method

.method getDirPropsMemory(I)V
    .locals 1

    .line 1342
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getDirPropsMemory(ZI)V

    return-void
.end method

.method public getDirection()B
    .locals 0

    .line 4353
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4354
    iget-byte p0, p0, Landroid/icu/text/Bidi;->direction:B

    return p0
.end method

.method public getLength()I
    .locals 0

    .line 4404
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4405
    iget p0, p0, Landroid/icu/text/Bidi;->originalLength:I

    return p0
.end method

.method public getLevelAt(I)B
    .locals 2

    .line 4739
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4740
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4741
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLevelAt(Landroid/icu/text/Bidi;I)B

    move-result p0

    return p0
.end method

.method public getLevels()[B
    .locals 1

    .line 4758
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4759
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 4762
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLevels(Landroid/icu/text/Bidi;)[B

    move-result-object p0

    return-object p0
.end method

.method getLevelsMemory(I)V
    .locals 1

    .line 1353
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateText:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getLevelsMemory(ZI)V

    return-void
.end method

.method public getLogicalIndex(I)I
    .locals 2

    .line 4973
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4974
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4976
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget v0, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/icu/text/Bidi;->controlCount:I

    if-nez v0, :cond_1

    .line 4977
    iget-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4981
    iget p0, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr p0, p1

    sub-int/2addr p0, v1

    return p0

    .line 4984
    :cond_1
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 4985
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalIndex(Landroid/icu/text/Bidi;I)I

    move-result p0

    return p0
.end method

.method public getLogicalMap()[I
    .locals 1

    .line 5029
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    .line 5030
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    .line 5033
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getLogicalMap(Landroid/icu/text/Bidi;)[I

    move-result-object p0

    return-object p0
.end method

.method public getLogicalRun(I)Landroid/icu/text/BidiRun;
    .locals 2

    .line 4790
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4791
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4792
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getLogicalRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method getLogicalToVisualRunsMap()V
    .locals 8

    .line 5442
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    if-eqz v0, :cond_0

    return-void

    .line 5445
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result v0

    .line 5446
    iget-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-ge v1, v0, :cond_2

    .line 5448
    :cond_1
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    .line 5451
    :cond_2
    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 5453
    iget-object v4, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v4, v4, v3

    iget v4, v4, Landroid/icu/text/BidiRun;->start:I

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    int-to-long v6, v3

    add-long/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5455
    :cond_3
    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    :goto_1
    if-ge v2, v0, :cond_4

    .line 5457
    iget-object v3, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget-wide v4, v1, v2

    const-wide/16 v6, -0x1

    and-long/2addr v4, v6

    long-to-int v4, v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 5459
    iput-boolean v0, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    return-void
.end method

.method public getParaLevel()B
    .locals 0

    .line 4505
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4506
    iget-byte p0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    return p0
.end method

.method public getParagraph(I)Landroid/icu/text/BidiRun;
    .locals 3

    .line 4588
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4589
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 4590
    iget v1, v0, Landroid/icu/text/Bidi;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4592
    :goto_0
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v1, v1, v2

    if-lt p1, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4594
    :cond_0
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->getParagraphByIndex(I)Landroid/icu/text/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method public getParagraphByIndex(I)Landroid/icu/text/BidiRun;
    .locals 3

    .line 4546
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4547
    iget v0, p0, Landroid/icu/text/Bidi;->paraCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4549
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-nez p1, :cond_0

    goto :goto_0

    .line 4554
    :cond_0
    iget-object v1, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    .line 4556
    :goto_0
    new-instance v2, Landroid/icu/text/BidiRun;

    invoke-direct {v2}, Landroid/icu/text/BidiRun;-><init>()V

    .line 4557
    iput v1, v2, Landroid/icu/text/BidiRun;->start:I

    .line 4558
    iget-object v0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget p1, v0, p1

    iput p1, v2, Landroid/icu/text/BidiRun;->limit:I

    .line 4559
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p0

    iput-byte p0, v2, Landroid/icu/text/BidiRun;->level:B

    return-object v2
.end method

.method public getParagraphIndex(I)I
    .locals 3

    .line 4615
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4616
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 4617
    iget v1, v0, Landroid/icu/text/Bidi;->length:I

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4619
    :goto_0
    iget-object p0, v0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget p0, p0, v2

    if-lt p1, p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getProcessedLength()I
    .locals 0

    .line 4448
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4449
    iget p0, p0, Landroid/icu/text/Bidi;->length:I

    return p0
.end method

.method public getReorderingMode()I
    .locals 0

    .line 1632
    iget p0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    return p0
.end method

.method public getReorderingOptions()I
    .locals 0

    .line 1666
    iget p0, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    return p0
.end method

.method public getResultLength()I
    .locals 0

    .line 4481
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4482
    iget p0, p0, Landroid/icu/text/Bidi;->resultLength:I

    return p0
.end method

.method public getRunCount()I
    .locals 0

    .line 5434
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    move-result p0

    return p0
.end method

.method public getRunLevel(I)I
    .locals 2

    .line 5476
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5477
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 5478
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 5479
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5480
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object p0, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget p0, p0, p1

    aget-object p0, v0, p0

    iget-byte p0, p0, Landroid/icu/text/BidiRun;->level:B

    return p0
.end method

.method public getRunLimit(I)I
    .locals 3

    .line 5521
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5522
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 5523
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 5524
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5525
    iget-object v0, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget p1, v0, p1

    if-nez p1, :cond_0

    .line 5526
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    goto :goto_0

    .line 5527
    :cond_0
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/icu/text/BidiRun;->limit:I

    iget-object v1, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v0, v1

    .line 5528
    :goto_0
    iget-object p0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object p0, p0, p1

    iget p0, p0, Landroid/icu/text/BidiRun;->start:I

    add-int/2addr p0, v0

    return p0
.end method

.method public getRunStart(I)I
    .locals 2

    .line 5498
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5499
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 5500
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 5501
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getLogicalToVisualRunsMap()V

    .line 5502
    iget-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object p0, p0, Landroid/icu/text/Bidi;->logicalToVisualRunsMap:[I

    aget p0, p0, p1

    aget-object p0, v0, p0

    iget p0, p0, Landroid/icu/text/BidiRun;->start:I

    return p0
.end method

.method getRunsMemory(I)V
    .locals 1

    .line 1364
    iget-boolean v0, p0, Landroid/icu/text/Bidi;->mayAllocateRuns:Z

    invoke-direct {p0, v0, p1}, Landroid/icu/text/Bidi;->getRunsMemory(ZI)V

    return-void
.end method

.method public getText()[C
    .locals 0

    .line 4389
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4390
    iget-object p0, p0, Landroid/icu/text/Bidi;->text:[C

    return-object p0
.end method

.method public getTextAsString()Ljava/lang/String;
    .locals 1

    .line 4371
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4372
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/icu/text/Bidi;->text:[C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public getVisualIndex(I)I
    .locals 2

    .line 4929
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4930
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4931
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualIndex(Landroid/icu/text/Bidi;I)I

    move-result p0

    return p0
.end method

.method public getVisualMap()[I
    .locals 1

    .line 5070
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->countRuns()I

    .line 5071
    iget v0, p0, Landroid/icu/text/Bidi;->resultLength:I

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0

    .line 5074
    :cond_0
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getVisualMap(Landroid/icu/text/Bidi;)[I

    move-result-object p0

    return-object p0
.end method

.method public getVisualRun(I)Landroid/icu/text/BidiRun;
    .locals 2

    .line 4880
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 4881
    invoke-static {p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 4882
    iget v0, p0, Landroid/icu/text/Bidi;->runCount:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4883
    invoke-static {p0, p1}, Landroid/icu/text/BidiLine;->getVisualRun(Landroid/icu/text/Bidi;I)Landroid/icu/text/BidiRun;

    move-result-object p0

    return-object p0
.end method

.method public isInverse()Z
    .locals 0

    .line 1451
    iget-boolean p0, p0, Landroid/icu/text/Bidi;->isInverse:Z

    return p0
.end method

.method public isLeftToRight()Z
    .locals 2

    .line 5380
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-byte p0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr p0, v1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMixed()Z
    .locals 1

    .line 5365
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isLeftToRight()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/icu/text/Bidi;->isRightToLeft()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOrderParagraphsLTR()Z
    .locals 0

    .line 4333
    iget-boolean p0, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    return p0
.end method

.method public isRightToLeft()Z
    .locals 2

    .line 5395
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->getDirection()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-byte p0, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public orderParagraphsLTR(Z)V
    .locals 0

    .line 4322
    iput-boolean p1, p0, Landroid/icu/text/Bidi;->orderParagraphsLTR:Z

    return-void
.end method

.method public setContext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3631
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/icu/text/Bidi;->prologue:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 3632
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Landroid/icu/text/Bidi;->epilogue:Ljava/lang/String;

    return-void
.end method

.method public setCustomClassifier(Landroid/icu/text/BidiClassifier;)V
    .locals 0

    .line 4633
    iput-object p1, p0, Landroid/icu/text/Bidi;->customClassifier:Landroid/icu/text/BidiClassifier;

    return-void
.end method

.method public setInverse(Z)V
    .locals 0

    .line 1429
    iput-boolean p1, p0, Landroid/icu/text/Bidi;->isInverse:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1431
    :goto_0
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    return-void
.end method

.method public setLine(II)Landroid/icu/text/Bidi;
    .locals 2

    .line 4713
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidPara()V

    const/4 v0, 0x0

    .line 4714
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4715
    iget v1, p0, Landroid/icu/text/Bidi;->length:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Landroid/icu/text/Bidi;->verifyRange(III)V

    .line 4716
    invoke-virtual {p0, p1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v0

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4720
    invoke-static {p0, p1, p2}, Landroid/icu/text/BidiLine;->setLine(Landroid/icu/text/Bidi;II)Landroid/icu/text/Bidi;

    move-result-object p0

    return-object p0

    .line 4718
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setPara(Ljava/lang/String;B[B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [C

    .line 3881
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    goto :goto_0

    .line 3883
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    :goto_0
    return-void
.end method

.method public setPara(Ljava/text/AttributedCharacterIterator;)V
    .locals 9

    .line 4264
    sget-object v0, Ljava/awt/font/TextAttribute;->RUN_DIRECTION:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v0}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/16 v0, 0x7e

    goto :goto_0

    .line 4268
    :cond_0
    sget-object v1, Ljava/awt/font/TextAttribute;->RUN_DIRECTION_LTR:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 4273
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getEndIndex()I

    move-result v2

    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->getBeginIndex()I

    move-result v3

    sub-int/2addr v2, v3

    .line 4274
    new-array v3, v2, [B

    .line 4275
    new-array v4, v2, [C

    .line 4277
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->first()C

    move-result v5

    const/4 v6, 0x0

    move-object v7, v1

    move v1, v6

    :goto_1
    const v8, 0xffff

    if-eq v5, v8, :cond_4

    .line 4279
    aput-char v5, v4, v1

    .line 4280
    sget-object v5, Ljava/awt/font/TextAttribute;->BIDI_EMBEDDING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v5}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 4282
    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    if-gez v5, :cond_2

    rsub-int/lit8 v5, v5, 0x0

    or-int/lit8 v5, v5, -0x80

    int-to-byte v5, v5

    .line 4287
    aput-byte v5, v3, v1

    goto :goto_2

    .line 4290
    :cond_2
    aput-byte v5, v3, v1

    :goto_2
    move-object v7, v3

    .line 4293
    :cond_3
    :goto_3
    invoke-interface {p1}, Ljava/text/AttributedCharacterIterator;->next()C

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4297
    :cond_4
    sget-object v1, Ljava/awt/font/TextAttribute;->NUMERIC_SHAPING:Ljava/awt/font/TextAttribute;

    invoke-interface {p1, v1}, Ljava/text/AttributedCharacterIterator;->getAttribute(Ljava/text/AttributedCharacterIterator$Attribute;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/font/NumericShaper;

    if-eqz p1, :cond_5

    .line 4299
    invoke-virtual {p1, v4, v6, v2}, Ljava/awt/font/NumericShaper;->shape([CII)V

    .line 4301
    :cond_5
    invoke-virtual {p0, v4, v0, v7}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    return-void
.end method

.method public setPara([CB[B)V
    .locals 7

    const/16 v0, 0x7e

    const/4 v1, 0x0

    if-ge p2, v0, :cond_0

    .line 3966
    invoke-virtual {p0, p2, v1, v0}, Landroid/icu/text/Bidi;->verifyRange(III)V

    :cond_0
    if-nez p1, :cond_1

    new-array p1, v1, [C

    .line 3973
    :cond_1
    iget v0, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 3974
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/Bidi;->setParaRunsOnly([CB)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 3979
    iput-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    .line 3980
    iput-object p1, p0, Landroid/icu/text/Bidi;->text:[C

    .line 3981
    iget-object p1, p0, Landroid/icu/text/Bidi;->text:[C

    array-length p1, p1

    iput p1, p0, Landroid/icu/text/Bidi;->resultLength:I

    iput p1, p0, Landroid/icu/text/Bidi;->originalLength:I

    iput p1, p0, Landroid/icu/text/Bidi;->length:I

    .line 3982
    iput-byte p2, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/lit8 p1, p2, 0x1

    int-to-byte p1, p1

    .line 3983
    iput-byte p1, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 p1, 0x1

    .line 3984
    iput p1, p0, Landroid/icu/text/Bidi;->paraCount:I

    new-array v0, v1, [B

    .line 3989
    iput-object v0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    new-array v0, v1, [B

    .line 3990
    iput-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    new-array v0, v1, [Landroid/icu/text/BidiRun;

    .line 3991
    iput-object v0, p0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 3992
    iput-boolean v1, p0, Landroid/icu/text/Bidi;->isGoodLogicalToVisualRunsMap:Z

    .line 3993
    iget-object v0, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iput v1, v0, Landroid/icu/text/Bidi$InsertPoints;->size:I

    .line 3994
    iput v1, v0, Landroid/icu/text/Bidi$InsertPoints;->confirmed:I

    .line 3999
    invoke-static {p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, p2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    iput-byte v0, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    .line 4001
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-nez v0, :cond_5

    .line 4007
    invoke-static {p2}, Landroid/icu/text/Bidi;->IsDefaultLevel(B)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 4008
    iget-byte p3, p0, Landroid/icu/text/Bidi;->paraLevel:B

    and-int/2addr p1, p3

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 4009
    iput-byte v1, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    .line 4011
    :cond_4
    invoke-static {p2}, Landroid/icu/text/Bidi;->DirPropFlagLR(B)I

    move-result p1

    iput p1, p0, Landroid/icu/text/Bidi;->flags:I

    .line 4012
    iput v1, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 4013
    iput v1, p0, Landroid/icu/text/Bidi;->paraCount:I

    .line 4014
    invoke-direct {p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    return-void

    :cond_5
    const/4 p2, -0x1

    .line 4018
    iput p2, p0, Landroid/icu/text/Bidi;->runCount:I

    .line 4025
    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->getDirPropsMemory(I)V

    .line 4026
    iget-object v0, p0, Landroid/icu/text/Bidi;->dirPropsMemory:[B

    iput-object v0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    .line 4027
    invoke-direct {p0}, Landroid/icu/text/Bidi;->getDirProps()V

    .line 4029
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    iput v0, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    if-nez p3, :cond_6

    .line 4034
    invoke-virtual {p0, v0}, Landroid/icu/text/Bidi;->getLevelsMemory(I)V

    .line 4035
    iget-object v0, p0, Landroid/icu/text/Bidi;->levelsMemory:[B

    iput-object v0, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 4036
    invoke-direct {p0}, Landroid/icu/text/Bidi;->resolveExplicitLevels()B

    move-result v0

    iput-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    goto :goto_1

    .line 4039
    :cond_6
    iput-object p3, p0, Landroid/icu/text/Bidi;->levels:[B

    .line 4040
    invoke-direct {p0}, Landroid/icu/text/Bidi;->checkExplicitLevels()B

    move-result v0

    iput-byte v0, p0, Landroid/icu/text/Bidi;->direction:B

    .line 4044
    :goto_1
    iget v0, p0, Landroid/icu/text/Bidi;->isolateCount:I

    if-lez v0, :cond_8

    .line 4045
    iget-object v3, p0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    if-eqz v3, :cond_7

    array-length v3, v3

    if-ge v3, v0, :cond_8

    .line 4046
    :cond_7
    iget v0, p0, Landroid/icu/text/Bidi;->isolateCount:I

    add-int/2addr v0, v2

    new-array v0, v0, [Landroid/icu/text/Bidi$Isolate;

    iput-object v0, p0, Landroid/icu/text/Bidi;->isolates:[Landroid/icu/text/Bidi$Isolate;

    .line 4048
    :cond_8
    iput p2, p0, Landroid/icu/text/Bidi;->isolateCount:I

    .line 4054
    iget-byte p2, p0, Landroid/icu/text/Bidi;->direction:B

    const/4 v0, 0x7

    if-eqz p2, :cond_16

    if-eq p2, p1, :cond_15

    .line 4067
    iget p2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 4092
    :pswitch_0
    iget p2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_9

    .line 4093
    sget-object p2, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4095
    :cond_9
    sget-object p2, Landroid/icu/text/Bidi;->impTab_INVERSE_FOR_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4085
    :pswitch_1
    iget p2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_a

    .line 4086
    sget-object p2, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT_WITH_MARKS:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4088
    :cond_a
    sget-object p2, Landroid/icu/text/Bidi;->impTab_INVERSE_LIKE_DIRECT:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4082
    :pswitch_2
    sget-object p2, Landroid/icu/text/Bidi;->impTab_INVERSE_NUMBERS_AS_L:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4079
    :pswitch_3
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Internal ICU error in setPara"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4075
    :pswitch_4
    sget-object p2, Landroid/icu/text/Bidi;->impTab_GROUP_NUMBERS_WITH_R:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4072
    :pswitch_5
    sget-object p2, Landroid/icu/text/Bidi;->impTab_NUMBERS_SPECIAL:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    goto :goto_2

    .line 4069
    :pswitch_6
    sget-object p2, Landroid/icu/text/Bidi;->impTab_DEFAULT:Landroid/icu/text/Bidi$ImpTabPair;

    iput-object p2, p0, Landroid/icu/text/Bidi;->impTabPair:Landroid/icu/text/Bidi$ImpTabPair;

    :goto_2
    if-nez p3, :cond_b

    .line 4110
    iget p2, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-gt p2, p1, :cond_b

    iget p2, p0, Landroid/icu/text/Bidi;->flags:I

    sget p3, Landroid/icu/text/Bidi;->DirPropFlagMultiRuns:I

    and-int/2addr p2, p3

    if-nez p2, :cond_b

    .line 4112
    iget p2, p0, Landroid/icu/text/Bidi;->length:I

    .line 4113
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p3

    invoke-static {p3}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result p3

    int-to-short p3, p3

    iget v2, p0, Landroid/icu/text/Bidi;->length:I

    sub-int/2addr v2, p1

    .line 4114
    invoke-virtual {p0, v2}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    invoke-static {v2}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v2

    int-to-short v2, v2

    .line 4112
    invoke-direct {p0, v1, p2, p3, v2}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    goto/16 :goto_a

    .line 4122
    :cond_b
    invoke-virtual {p0, v1}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result p2

    .line 4123
    iget-object p3, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte p3, p3, v1

    if-ge p2, p3, :cond_c

    .line 4125
    invoke-static {p3}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result p2

    goto :goto_3

    .line 4127
    :cond_c
    invoke-static {p2}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result p2

    :goto_3
    int-to-short p2, p2

    move v2, p2

    move p2, v1

    :goto_4
    if-lez p2, :cond_d

    .line 4136
    iget-object v3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    add-int/lit8 v4, p2, -0x1

    aget-byte v3, v3, v4

    if-ne v3, v0, :cond_d

    .line 4138
    invoke-virtual {p0, p2}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v2

    invoke-static {v2}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v2

    int-to-short v2, v2

    :cond_d
    move v3, v2

    move v2, p2

    :cond_e
    :goto_5
    add-int/2addr v2, p1

    .line 4144
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v4, :cond_f

    iget-object v4, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v4, v4, v2

    if-eq v4, p3, :cond_e

    iget-object v4, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v4, v4, v2

    .line 4146
    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    sget v5, Landroid/icu/text/Bidi;->MASK_BN_EXPLICIT:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_f

    goto :goto_5

    .line 4149
    :cond_f
    iget v4, p0, Landroid/icu/text/Bidi;->length:I

    if-ge v2, v4, :cond_10

    .line 4150
    iget-object v4, p0, Landroid/icu/text/Bidi;->levels:[B

    aget-byte v4, v4, v2

    goto :goto_6

    :cond_10
    add-int/lit8 v4, v4, -0x1

    .line 4152
    invoke-virtual {p0, v4}, Landroid/icu/text/Bidi;->GetParaLevelAt(I)B

    move-result v4

    .line 4156
    :goto_6
    invoke-static {p3}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v5

    invoke-static {v4}, Landroid/icu/text/Bidi;->NoOverride(B)B

    move-result v6

    if-ge v5, v6, :cond_11

    .line 4157
    invoke-static {v4}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v5

    goto :goto_7

    .line 4159
    :cond_11
    invoke-static {p3}, Landroid/icu/text/Bidi;->GetLRFromLevel(B)B

    move-result v5

    :goto_7
    int-to-short v5, v5

    and-int/lit8 p3, p3, -0x80

    if-nez p3, :cond_12

    .line 4165
    invoke-direct {p0, p2, v2, v3, v5}, Landroid/icu/text/Bidi;->resolveImplicitLevels(IISS)V

    goto :goto_9

    .line 4169
    :cond_12
    :goto_8
    iget-object p3, p0, Landroid/icu/text/Bidi;->levels:[B

    add-int/lit8 v3, p2, 0x1

    aget-byte v6, p3, p2

    and-int/lit8 v6, v6, 0x7f

    int-to-byte v6, v6

    aput-byte v6, p3, p2

    if-lt v3, v2, :cond_14

    .line 4172
    :goto_9
    iget p2, p0, Landroid/icu/text/Bidi;->length:I

    if-lt v2, p2, :cond_13

    .line 4176
    :goto_a
    invoke-direct {p0}, Landroid/icu/text/Bidi;->adjustWSLevels()V

    goto :goto_b

    :cond_13
    move p2, v2

    move p3, v4

    move v2, v5

    goto :goto_4

    :cond_14
    move p2, v3

    goto :goto_8

    .line 4061
    :cond_15
    iput v1, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    goto :goto_b

    .line 4057
    :cond_16
    iput v1, p0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 4183
    :goto_b
    iget-byte p2, p0, Landroid/icu/text/Bidi;->defaultParaLevel:B

    if-lez p2, :cond_1e

    iget p2, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/2addr p2, p1

    if-eqz p2, :cond_1e

    iget p2, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_17

    const/4 p3, 0x6

    if-ne p2, p3, :cond_1e

    :cond_17
    move p2, v1

    .line 4190
    :goto_c
    iget p3, p0, Landroid/icu/text/Bidi;->paraCount:I

    if-ge p2, p3, :cond_1e

    .line 4191
    iget-object p3, p0, Landroid/icu/text/Bidi;->paras_limit:[I

    aget v2, p3, p2

    sub-int/2addr v2, p1

    .line 4192
    iget-object v3, p0, Landroid/icu/text/Bidi;->paras_level:[B

    aget-byte v3, v3, p2

    if-nez v3, :cond_18

    goto :goto_10

    :cond_18
    if-nez p2, :cond_19

    move p3, v1

    goto :goto_d

    :cond_19
    add-int/lit8 v3, p2, -0x1

    .line 4195
    aget p3, p3, v3

    :goto_d
    move v3, v2

    :goto_e
    if-lt v3, p3, :cond_1d

    .line 4197
    iget-object v4, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte v4, v4, v3

    if-nez v4, :cond_1b

    if-ge v3, v2, :cond_1a

    .line 4200
    :goto_f
    iget-object p3, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte p3, p3, v2

    if-ne p3, v0, :cond_1a

    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    :cond_1a
    const/4 p3, 0x4

    .line 4204
    invoke-direct {p0, v2, p3}, Landroid/icu/text/Bidi;->addPoint(II)V

    goto :goto_10

    .line 4207
    :cond_1b
    invoke-static {v4}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result v4

    sget v5, Landroid/icu/text/Bidi;->MASK_R_AL:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1c

    goto :goto_10

    :cond_1c
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :cond_1d
    :goto_10
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    .line 4214
    :cond_1e
    iget p1, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1f

    .line 4215
    iget p1, p0, Landroid/icu/text/Bidi;->resultLength:I

    iget p2, p0, Landroid/icu/text/Bidi;->controlCount:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/icu/text/Bidi;->resultLength:I

    goto :goto_11

    .line 4217
    :cond_1f
    iget p1, p0, Landroid/icu/text/Bidi;->resultLength:I

    iget-object p2, p0, Landroid/icu/text/Bidi;->insertPoints:Landroid/icu/text/Bidi$InsertPoints;

    iget p2, p2, Landroid/icu/text/Bidi$InsertPoints;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/icu/text/Bidi;->resultLength:I

    .line 4219
    :goto_11
    invoke-direct {p0}, Landroid/icu/text/Bidi;->setParaSuccess()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setParaRunsOnly([CB)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 3661
    iput v3, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    .line 3662
    array-length v4, v1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 3664
    invoke-virtual {v0, v1, v2, v6}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 3665
    iput v5, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    return-void

    .line 3669
    :cond_0
    iget v7, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    and-int/lit8 v8, v7, 0x1

    const/4 v9, 0x2

    if-lez v8, :cond_1

    and-int/lit8 v8, v7, -0x2

    .line 3671
    iput v8, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 3672
    iget v8, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    or-int/2addr v8, v9

    iput v8, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    :cond_1
    const/4 v8, 0x1

    and-int/2addr v2, v8

    int-to-byte v2, v2

    .line 3675
    invoke-virtual {v0, v1, v2, v6}, Landroid/icu/text/Bidi;->setPara([CB[B)V

    .line 3679
    iget v10, v0, Landroid/icu/text/Bidi;->length:I

    new-array v10, v10, [B

    .line 3680
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Bidi;->getLevels()[B

    move-result-object v11

    iget v12, v0, Landroid/icu/text/Bidi;->length:I

    invoke-static {v11, v3, v10, v3, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3681
    iget v11, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 3689
    invoke-virtual {v0, v9}, Landroid/icu/text/Bidi;->writeReordered(I)Ljava/lang/String;

    move-result-object v12

    .line 3690
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/Bidi;->getVisualMap()[I

    move-result-object v13

    .line 3691
    iput v7, v0, Landroid/icu/text/Bidi;->reorderingOptions:I

    .line 3692
    iget v7, v0, Landroid/icu/text/Bidi;->length:I

    .line 3693
    iget-byte v14, v0, Landroid/icu/text/Bidi;->direction:B

    const/4 v15, 0x5

    .line 3695
    iput v15, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    xor-int/2addr v2, v8

    int-to-byte v2, v2

    .line 3697
    invoke-virtual {v0, v12, v2, v6}, Landroid/icu/text/Bidi;->setPara(Ljava/lang/String;B[B)V

    .line 3698
    invoke-static/range {p0 .. p0}, Landroid/icu/text/BidiLine;->getRuns(Landroid/icu/text/Bidi;)V

    .line 3701
    iget v2, v0, Landroid/icu/text/Bidi;->runCount:I

    move v6, v3

    move v12, v6

    move v15, v12

    :goto_0
    if-ge v6, v2, :cond_6

    .line 3704
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v5, v5, v6

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v15

    if-ge v5, v9, :cond_2

    goto :goto_2

    .line 3708
    :cond_2
    iget-object v9, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v9, v9, v6

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    add-int/lit8 v16, v9, 0x1

    move/from16 v21, v16

    move/from16 v16, v12

    move/from16 v12, v21

    :goto_1
    add-int v3, v9, v5

    if-ge v12, v3, :cond_5

    .line 3710
    aget v3, v13, v12

    add-int/lit8 v17, v12, -0x1

    .line 3711
    aget v17, v13, v17

    move/from16 p2, v9

    sub-int v9, v3, v17

    .line 3712
    invoke-virtual {v0, v9}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v9

    if-ne v9, v8, :cond_3

    aget-byte v3, v10, v3

    aget-byte v9, v10, v17

    if-eq v3, v9, :cond_4

    :cond_3
    add-int/lit8 v16, v16, 0x1

    :cond_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v9, p2

    goto :goto_1

    :cond_5
    move/from16 v12, v16

    :goto_2
    add-int/lit8 v6, v6, 0x1

    add-int/2addr v15, v5

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v9, 0x2

    goto :goto_0

    :cond_6
    if-lez v12, :cond_9

    add-int v3, v2, v12

    .line 3718
    invoke-virtual {v0, v3}, Landroid/icu/text/Bidi;->getRunsMemory(I)V

    .line 3719
    iget v3, v0, Landroid/icu/text/Bidi;->runCount:I

    if-ne v3, v8, :cond_7

    .line 3721
    iget-object v3, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aput-object v5, v3, v6

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 3723
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    iget-object v9, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    invoke-static {v5, v6, v9, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3725
    :goto_3
    iget-object v3, v0, Landroid/icu/text/Bidi;->runsMemory:[Landroid/icu/text/BidiRun;

    iput-object v3, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    .line 3726
    iget v3, v0, Landroid/icu/text/Bidi;->runCount:I

    add-int/2addr v3, v12

    iput v3, v0, Landroid/icu/text/Bidi;->runCount:I

    move v3, v2

    .line 3727
    :goto_4
    iget v5, v0, Landroid/icu/text/Bidi;->runCount:I

    if-ge v3, v5, :cond_9

    .line 3728
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v6, v5, v3

    if-nez v6, :cond_8

    .line 3729
    new-instance v6, Landroid/icu/text/BidiRun;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v9}, Landroid/icu/text/BidiRun;-><init>(IIB)V

    aput-object v6, v5, v3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_9
    sub-int/2addr v2, v8

    :goto_5
    if-ltz v2, :cond_12

    add-int v3, v2, v12

    if-nez v2, :cond_a

    .line 3737
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    .line 3738
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/icu/text/BidiRun;->limit:I

    iget-object v9, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    add-int/lit8 v15, v2, -0x1

    aget-object v9, v9, v15

    iget v9, v9, Landroid/icu/text/BidiRun;->limit:I

    sub-int/2addr v5, v9

    .line 3739
    :goto_6
    iget-object v9, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v9, v9, v2

    iget v9, v9, Landroid/icu/text/BidiRun;->start:I

    .line 3740
    iget-object v15, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v15, v15, v2

    iget-byte v15, v15, Landroid/icu/text/BidiRun;->level:B

    and-int/2addr v15, v8

    const/4 v6, 0x2

    if-ge v5, v6, :cond_c

    if-lez v12, :cond_b

    .line 3743
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v6, v5, v3

    aget-object v5, v5, v2

    invoke-virtual {v6, v5}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    .line 3745
    :cond_b
    aget v5, v13, v9

    .line 3746
    iget-object v6, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v9, v6, v3

    iput v5, v9, Landroid/icu/text/BidiRun;->start:I

    .line 3747
    aget-object v3, v6, v3

    aget-byte v5, v10, v5

    xor-int/2addr v5, v15

    int-to-byte v5, v5

    iput-byte v5, v3, Landroid/icu/text/BidiRun;->level:B

    move/from16 v20, v11

    goto/16 :goto_9

    :cond_c
    if-lez v15, :cond_d

    add-int/2addr v5, v9

    sub-int/2addr v5, v8

    move v6, v8

    move/from16 v21, v9

    move v9, v5

    move/from16 v5, v21

    goto :goto_7

    :cond_d
    add-int/2addr v5, v9

    sub-int/2addr v5, v8

    const/4 v6, -0x1

    :goto_7
    move/from16 v16, v5

    :goto_8
    if-eq v5, v9, :cond_10

    .line 3760
    aget v8, v13, v5

    add-int v18, v5, v6

    .line 3761
    aget v19, v13, v18

    move/from16 p2, v6

    sub-int v6, v8, v19

    .line 3762
    invoke-virtual {v0, v6}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v6

    move/from16 v20, v11

    const/4 v11, 0x1

    if-ne v6, v11, :cond_e

    aget-byte v6, v10, v8

    aget-byte v11, v10, v19

    if-eq v6, v11, :cond_f

    .line 3763
    :cond_e
    aget v6, v13, v16

    invoke-virtual {v0, v6, v8}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    move-result v6

    .line 3764
    iget-object v8, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v11, v8, v3

    iput v6, v11, Landroid/icu/text/BidiRun;->start:I

    .line 3765
    aget-object v11, v8, v3

    aget-byte v6, v10, v6

    xor-int/2addr v6, v15

    int-to-byte v6, v6

    iput-byte v6, v11, Landroid/icu/text/BidiRun;->level:B

    .line 3766
    aget-object v6, v8, v3

    aget-object v8, v8, v2

    iget v8, v8, Landroid/icu/text/BidiRun;->limit:I

    iput v8, v6, Landroid/icu/text/BidiRun;->limit:I

    .line 3767
    iget-object v6, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v6, v6, v2

    iget v8, v6, Landroid/icu/text/BidiRun;->limit:I

    sub-int v5, v5, v16

    invoke-virtual {v0, v5}, Landroid/icu/text/Bidi;->Bidi_Abs(I)I

    move-result v5

    const/4 v11, 0x1

    add-int/2addr v5, v11

    sub-int/2addr v8, v5

    iput v8, v6, Landroid/icu/text/BidiRun;->limit:I

    .line 3768
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v5, v5, v2

    iget v5, v5, Landroid/icu/text/BidiRun;->insertRemove:I

    and-int/lit8 v5, v5, 0xa

    .line 3769
    iget-object v6, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v8, v6, v3

    iput v5, v8, Landroid/icu/text/BidiRun;->insertRemove:I

    .line 3770
    aget-object v6, v6, v2

    iget v8, v6, Landroid/icu/text/BidiRun;->insertRemove:I

    not-int v5, v5

    and-int/2addr v5, v8

    iput v5, v6, Landroid/icu/text/BidiRun;->insertRemove:I

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v3, v3, -0x1

    move/from16 v16, v18

    :cond_f
    move/from16 v6, p2

    move/from16 v5, v18

    move/from16 v11, v20

    const/4 v8, 0x1

    goto :goto_8

    :cond_10
    move/from16 v20, v11

    if-lez v12, :cond_11

    .line 3777
    iget-object v5, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v6, v5, v3

    aget-object v5, v5, v2

    invoke-virtual {v6, v5}, Landroid/icu/text/BidiRun;->copyFrom(Landroid/icu/text/BidiRun;)V

    .line 3779
    :cond_11
    aget v5, v13, v16

    aget v6, v13, v9

    invoke-virtual {v0, v5, v6}, Landroid/icu/text/Bidi;->Bidi_Min(II)I

    move-result v5

    .line 3780
    iget-object v6, v0, Landroid/icu/text/Bidi;->runs:[Landroid/icu/text/BidiRun;

    aget-object v8, v6, v3

    iput v5, v8, Landroid/icu/text/BidiRun;->start:I

    .line 3781
    aget-object v3, v6, v3

    aget-byte v5, v10, v5

    xor-int/2addr v5, v15

    int-to-byte v5, v5

    iput-byte v5, v3, Landroid/icu/text/BidiRun;->level:B

    :goto_9
    add-int/lit8 v2, v2, -0x1

    move/from16 v11, v20

    const/4 v8, 0x1

    goto/16 :goto_5

    :cond_12
    move/from16 v20, v11

    .line 3786
    iget-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, v0, Landroid/icu/text/Bidi;->paraLevel:B

    .line 3789
    iput-object v1, v0, Landroid/icu/text/Bidi;->text:[C

    .line 3790
    iput v7, v0, Landroid/icu/text/Bidi;->length:I

    .line 3791
    iput v4, v0, Landroid/icu/text/Bidi;->originalLength:I

    .line 3792
    iput-byte v14, v0, Landroid/icu/text/Bidi;->direction:B

    .line 3793
    iput-object v10, v0, Landroid/icu/text/Bidi;->levels:[B

    move/from16 v1, v20

    .line 3794
    iput v1, v0, Landroid/icu/text/Bidi;->trailingWSStart:I

    .line 3795
    iget v1, v0, Landroid/icu/text/Bidi;->runCount:I

    if-le v1, v3, :cond_13

    const/4 v1, 0x2

    .line 3796
    iput-byte v1, v0, Landroid/icu/text/Bidi;->direction:B

    :cond_13
    const/4 v1, 0x3

    .line 3799
    iput v1, v0, Landroid/icu/text/Bidi;->reorderingMode:I

    return-void
.end method

.method public setReorderingMode(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x7

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 1619
    :cond_0
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1620
    :goto_0
    iput-boolean p1, p0, Landroid/icu/text/Bidi;->isInverse:Z

    :cond_2
    :goto_1
    return-void
.end method

.method public setReorderingOptions(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    and-int/lit8 p1, p1, -0x2

    .line 1652
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    goto :goto_0

    .line 1654
    :cond_0
    iput p1, p0, Landroid/icu/text/Bidi;->reorderingOptions:I

    :goto_0
    return-void
.end method

.method testDirPropFlagAt(II)Z
    .locals 0

    .line 1113
    iget-object p0, p0, Landroid/icu/text/Bidi;->dirProps:[B

    aget-byte p0, p0, p2

    invoke-static {p0}, Landroid/icu/text/Bidi;->DirPropFlag(B)I

    move-result p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method verifyRange(III)V
    .locals 2

    if-lt p1, p2, :cond_0

    if-ge p1, p3, :cond_0

    return-void

    .line 1203
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of range "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method verifyValidPara()V
    .locals 1

    .line 1182
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-ne p0, v0, :cond_0

    return-void

    .line 1183
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method verifyValidParaOrLine()V
    .locals 1

    .line 1189
    iget-object v0, p0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 1195
    iget-object p0, v0, Landroid/icu/text/Bidi;->paraBidi:Landroid/icu/text/Bidi;

    if-ne v0, p0, :cond_1

    return-void

    .line 1196
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public writeReordered(I)Ljava/lang/String;
    .locals 1

    .line 5653
    invoke-virtual {p0}, Landroid/icu/text/Bidi;->verifyValidParaOrLine()V

    .line 5654
    iget v0, p0, Landroid/icu/text/Bidi;->length:I

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 5658
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/BidiWriter;->writeReordered(Landroid/icu/text/Bidi;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
