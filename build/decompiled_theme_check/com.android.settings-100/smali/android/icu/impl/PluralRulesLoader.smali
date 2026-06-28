.class public Landroid/icu/impl/PluralRulesLoader;
.super Landroid/icu/text/PluralRules$Factory;
.source "PluralRulesLoader.java"


# static fields
.field private static final UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

.field public static final loader:Landroid/icu/impl/PluralRulesLoader;

.field private static localeIdToPluralRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRanges;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private localeIdToCardinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localeIdToOrdinalRulesId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rulesIdToEquivalentULocale:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private final rulesIdToRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/PluralRules;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 254
    new-instance v0, Landroid/icu/impl/PluralRulesLoader;

    invoke-direct {v0}, Landroid/icu/impl/PluralRulesLoader;-><init>()V

    sput-object v0, Landroid/icu/impl/PluralRulesLoader;->loader:Landroid/icu/impl/PluralRulesLoader;

    .line 264
    new-instance v0, Landroid/icu/text/PluralRanges;

    invoke-direct {v0}, Landroid/icu/text/PluralRanges;-><init>()V

    invoke-virtual {v0}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    const/16 v0, 0xab

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "locales"

    const-string v2, "id ja km ko lo ms my th vi zh"

    .line 287
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "other"

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const-string v4, "am bn fr gu hi hy kn mr pa zu"

    filled-new-array {v1, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v0, v6

    const-string/jumbo v4, "one"

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v0, v8

    const-string v7, "fa"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    aput-object v7, v0, v8

    const-string v7, "ka"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xa

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xb

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xc

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v0, v8

    const-string v7, "az de el gl hu it kk ky ml mn ne nl pt sq sw ta te tr ug uz"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xe

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xf

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x11

    aput-object v7, v0, v8

    const-string v7, "af bg ca en es et eu fi nb sv ur"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x12

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x13

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x14

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x15

    aput-object v7, v0, v8

    const-string v7, "da fil is"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x16

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x17

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x18

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x19

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a

    aput-object v7, v0, v8

    const-string/jumbo v7, "si"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1b

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1c

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1d

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1e

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1f

    aput-object v7, v0, v8

    const-string v7, "mk"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x20

    aput-object v7, v0, v8

    filled-new-array {v4, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x21

    aput-object v7, v0, v8

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x22

    aput-object v7, v0, v8

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x23

    aput-object v7, v0, v8

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x24

    aput-object v7, v0, v8

    const-string v7, "lv"

    filled-new-array {v1, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x25

    aput-object v7, v0, v8

    const-string/jumbo v7, "zero"

    filled-new-array {v7, v7, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x26

    aput-object v8, v0, v9

    filled-new-array {v7, v4, v4}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x27

    aput-object v8, v0, v9

    filled-new-array {v7, v2, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x28

    aput-object v8, v0, v9

    filled-new-array {v4, v7, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x29

    aput-object v8, v0, v9

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2a

    aput-object v8, v0, v9

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2b

    aput-object v8, v0, v9

    filled-new-array {v2, v7, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2c

    aput-object v8, v0, v9

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2d

    aput-object v8, v0, v9

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2e

    aput-object v8, v0, v9

    const-string/jumbo v8, "ro"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x2f

    aput-object v8, v0, v9

    const-string v8, "few"

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x30

    aput-object v9, v0, v10

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x31

    aput-object v9, v0, v10

    filled-new-array {v8, v4, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x32

    aput-object v9, v0, v10

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x33

    aput-object v9, v0, v10

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x34

    aput-object v9, v0, v10

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x35

    aput-object v9, v0, v10

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x36

    aput-object v9, v0, v10

    const-string v9, "hr sr bs"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x37

    aput-object v9, v0, v10

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x38

    aput-object v9, v0, v10

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x39

    aput-object v9, v0, v10

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3a

    aput-object v9, v0, v10

    filled-new-array {v8, v4, v4}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3b

    aput-object v9, v0, v10

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3c

    aput-object v9, v0, v10

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3d

    aput-object v9, v0, v10

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3e

    aput-object v9, v0, v10

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x3f

    aput-object v9, v0, v10

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x40

    aput-object v9, v0, v10

    const-string/jumbo v9, "sl"

    filled-new-array {v1, v9}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x41

    aput-object v9, v0, v10

    filled-new-array {v4, v4, v8}, [Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    aput-object v9, v0, v10

    const-string/jumbo v9, "two"

    filled-new-array {v4, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x43

    aput-object v10, v0, v11

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x44

    aput-object v10, v0, v11

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x45

    aput-object v10, v0, v11

    filled-new-array {v9, v4, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x46

    aput-object v10, v0, v11

    filled-new-array {v9, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x47

    aput-object v10, v0, v11

    filled-new-array {v9, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x48

    aput-object v10, v0, v11

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x49

    aput-object v10, v0, v11

    filled-new-array {v8, v4, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4a

    aput-object v10, v0, v11

    filled-new-array {v8, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4b

    aput-object v10, v0, v11

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4c

    aput-object v10, v0, v11

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4d

    aput-object v10, v0, v11

    filled-new-array {v2, v4, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4e

    aput-object v10, v0, v11

    filled-new-array {v2, v9, v9}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x4f

    aput-object v10, v0, v11

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x50

    aput-object v10, v0, v11

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x51

    aput-object v10, v0, v11

    const-string v10, "he"

    filled-new-array {v1, v10}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x52

    aput-object v10, v0, v11

    filled-new-array {v4, v9, v2}, [Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x53

    aput-object v10, v0, v11

    const-string v10, "many"

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x54

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x55

    aput-object v11, v0, v12

    filled-new-array {v9, v10, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x56

    aput-object v11, v0, v12

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x57

    aput-object v11, v0, v12

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x58

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x59

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5a

    aput-object v11, v0, v12

    filled-new-array {v2, v9, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5b

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5c

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5d

    aput-object v11, v0, v12

    const-string v11, "cs pl sk"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5e

    aput-object v11, v0, v12

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5f

    aput-object v11, v0, v12

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x60

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x61

    aput-object v11, v0, v12

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x62

    aput-object v11, v0, v12

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x63

    aput-object v11, v0, v12

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x64

    aput-object v11, v0, v12

    filled-new-array {v10, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x65

    aput-object v11, v0, v12

    filled-new-array {v10, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x66

    aput-object v11, v0, v12

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x67

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x68

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x69

    aput-object v11, v0, v12

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6a

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6b

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6c

    aput-object v11, v0, v12

    const-string v11, "lt ru uk"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6d

    aput-object v11, v0, v12

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6e

    aput-object v11, v0, v12

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x6f

    aput-object v11, v0, v12

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x70

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x71

    aput-object v11, v0, v12

    filled-new-array {v8, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x72

    aput-object v11, v0, v12

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x73

    aput-object v11, v0, v12

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x74

    aput-object v11, v0, v12

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x75

    aput-object v11, v0, v12

    filled-new-array {v10, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x76

    aput-object v11, v0, v12

    filled-new-array {v10, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x77

    aput-object v11, v0, v12

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x78

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x79

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7a

    aput-object v11, v0, v12

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7b

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7c

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7d

    aput-object v11, v0, v12

    const-string v11, "cy"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7e

    aput-object v11, v0, v12

    filled-new-array {v7, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x7f

    aput-object v11, v0, v12

    filled-new-array {v7, v9, v9}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    aput-object v11, v0, v12

    filled-new-array {v7, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x81

    aput-object v11, v0, v12

    filled-new-array {v7, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x82

    aput-object v11, v0, v12

    filled-new-array {v7, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x83

    aput-object v11, v0, v12

    filled-new-array {v4, v9, v9}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x84

    aput-object v11, v0, v12

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x85

    aput-object v11, v0, v12

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x86

    aput-object v11, v0, v12

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x87

    aput-object v11, v0, v12

    filled-new-array {v9, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x88

    aput-object v11, v0, v12

    filled-new-array {v9, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x89

    aput-object v11, v0, v12

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8a

    aput-object v11, v0, v12

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8b

    aput-object v11, v0, v12

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8c

    aput-object v11, v0, v12

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8d

    aput-object v11, v0, v12

    filled-new-array {v2, v4, v4}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8e

    aput-object v11, v0, v12

    filled-new-array {v2, v9, v9}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x8f

    aput-object v11, v0, v12

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x90

    aput-object v11, v0, v12

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x91

    aput-object v11, v0, v12

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x92

    aput-object v11, v0, v12

    const-string v11, "ar"

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x93

    aput-object v11, v0, v12

    filled-new-array {v7, v4, v7}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x94

    aput-object v11, v0, v12

    filled-new-array {v7, v9, v7}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x95

    aput-object v11, v0, v12

    filled-new-array {v7, v8, v8}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x96

    aput-object v11, v0, v12

    filled-new-array {v7, v10, v10}, [Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x97

    aput-object v11, v0, v12

    filled-new-array {v7, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x98

    aput-object v7, v0, v11

    filled-new-array {v4, v9, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x99

    aput-object v7, v0, v11

    filled-new-array {v4, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9a

    aput-object v7, v0, v11

    filled-new-array {v4, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9b

    aput-object v7, v0, v11

    filled-new-array {v4, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9c

    aput-object v7, v0, v11

    filled-new-array {v9, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9d

    aput-object v7, v0, v11

    filled-new-array {v9, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9e

    aput-object v7, v0, v11

    filled-new-array {v9, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0x9f

    aput-object v7, v0, v11

    filled-new-array {v8, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa0

    aput-object v7, v0, v11

    filled-new-array {v8, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa1

    aput-object v7, v0, v11

    filled-new-array {v8, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa2

    aput-object v7, v0, v11

    filled-new-array {v10, v8, v8}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa3

    aput-object v7, v0, v11

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa4

    aput-object v7, v0, v11

    filled-new-array {v10, v2, v2}, [Ljava/lang/String;

    move-result-object v7

    const/16 v11, 0xa5

    aput-object v7, v0, v11

    filled-new-array {v2, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa6

    aput-object v4, v0, v7

    filled-new-array {v2, v9, v2}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa7

    aput-object v4, v0, v7

    filled-new-array {v2, v8, v8}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa8

    aput-object v4, v0, v7

    filled-new-array {v2, v10, v10}, [Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xa9

    aput-object v4, v0, v7

    filled-new-array {v2, v2, v2}, [Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xaa

    aput-object v2, v0, v4

    .line 479
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 480
    array-length v4, v0

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    move v7, v3

    :goto_0
    if-ge v7, v4, :cond_2

    aget-object v10, v0, v7

    .line 481
    aget-object v11, v10, v3

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v9, :cond_0

    .line 483
    invoke-virtual {v9}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    .line 484
    array-length v11, v8

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_0

    aget-object v13, v8, v12

    .line 485
    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 488
    :cond_0
    aget-object v8, v10, v5

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 489
    new-instance v9, Landroid/icu/text/PluralRanges;

    invoke-direct {v9}, Landroid/icu/text/PluralRanges;-><init>()V

    goto :goto_2

    .line 491
    :cond_1
    aget-object v11, v10, v3

    .line 492
    invoke-static {v11}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v11

    aget-object v12, v10, v5

    .line 493
    invoke-static {v12}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v12

    aget-object v10, v10, v6

    .line 494
    invoke-static {v10}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v10

    .line 491
    invoke-virtual {v9, v11, v12, v10}, Landroid/icu/text/PluralRanges;->add(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 498
    :cond_2
    array-length v0, v8

    :goto_3
    if-ge v3, v0, :cond_3

    aget-object v1, v8, v3

    .line 499
    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 502
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/icu/text/PluralRules$Factory;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    return-void
.end method

.method private checkBuildRulesIdMaps()V
    .locals 9

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 109
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_5

    .line 115
    :try_start_1
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string v2, "locales"

    .line 117
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 120
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 122
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v1

    .line 124
    :goto_1
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 125
    invoke-virtual {v2, v5}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 128
    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 131
    new-instance v8, Landroid/icu/util/ULocale;

    invoke-direct {v8, v7}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v2, "locales_ordinals"

    .line 136
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 137
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 138
    :goto_2
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 139
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 140
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 146
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 147
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 151
    :cond_3
    monitor-enter p0

    .line 152
    :try_start_2
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 153
    iput-object v3, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    .line 154
    iput-object v2, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    .line 155
    iput-object v4, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    .line 157
    :cond_4
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    :goto_3
    return-void

    :catchall_1
    move-exception v0

    .line 109
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/text/PluralRules$PluralType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 89
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToCardinalRulesId:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/icu/impl/PluralRulesLoader;->localeIdToOrdinalRulesId:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method private getRulesIdToEquivalentULocaleMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->checkBuildRulesIdMaps()V

    .line 97
    iget-object p0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToEquivalentULocale:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;
    .locals 0

    .line 240
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getRulesForRulesId(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object p0

    if-nez p0, :cond_1

    .line 246
    sget-object p0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    :cond_1
    return-object p0

    .line 242
    :cond_2
    :goto_0
    sget-object p0, Landroid/icu/text/PluralRules;->DEFAULT:Landroid/icu/text/PluralRules;

    return-object p0
.end method

.method public getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 4

    .line 51
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 52
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Landroid/icu/util/ULocale;

    .line 54
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 55
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/icu/util/ULocale;->createCanonical(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v3

    aput-object v3, v0, v1

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFunctionalEquivalent(Landroid/icu/util/ULocale;[Z)Landroid/icu/util/ULocale;
    .locals 3

    if-eqz p2, :cond_0

    .line 64
    array-length v0, p2

    if-lez v0, :cond_0

    .line 65
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v1}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    .line 67
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    aput-boolean v0, p2, v2

    .line 70
    :cond_0
    sget-object p2, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    invoke-direct {p0}, Landroid/icu/impl/PluralRulesLoader;->getRulesIdToEquivalentULocaleMap()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale;

    if-nez p0, :cond_2

    .line 78
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    :cond_2
    return-object p0

    .line 72
    :cond_3
    :goto_0
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getPluralBundle()Landroid/icu/util/UResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 230
    sget-object p0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v0, "android/icu/impl/data/icudt60b"

    const-string/jumbo v1, "plurals"

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;
    .locals 1

    .line 268
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 270
    :goto_0
    sget-object p1, Landroid/icu/impl/PluralRulesLoader;->localeIdToPluralRanges:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/icu/text/PluralRanges;

    if-nez p1, :cond_1

    const-string p1, "_"

    .line 271
    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 273
    sget-object p1, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 276
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object p1
.end method

.method public getRulesForRulesId(Ljava/lang/String;)Landroid/icu/text/PluralRules;
    .locals 6

    .line 188
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v0

    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v2, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/PluralRules;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 193
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    .line 196
    :try_start_1
    invoke-virtual {p0}, Landroid/icu/impl/PluralRulesLoader;->getPluralBundle()Landroid/icu/util/UResourceBundle;

    move-result-object v0

    const-string/jumbo v1, "rules"

    .line 197
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 198
    invoke-virtual {v0, p1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 201
    :goto_1
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 202
    invoke-virtual {v0, v3}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    if-lez v3, :cond_1

    const-string v5, "; "

    .line 204
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_1
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    .line 207
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v4}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 210
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/PluralRules;->parseDescription(Ljava/lang/String;)Landroid/icu/text/PluralRules;

    move-result-object v2
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    :catch_0
    iget-object v0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    monitor-enter v0

    .line 215
    :try_start_2
    iget-object v1, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    iget-object p0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/PluralRules;

    move-object v2, p0

    goto :goto_2

    .line 218
    :cond_3
    iget-object p0, p0, Landroid/icu/impl/PluralRulesLoader;->rulesIdToRules:Ljava/util/Map;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_3
    return-object v2

    :catchall_1
    move-exception p0

    .line 193
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public getRulesIdForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Ljava/lang/String;
    .locals 2

    .line 167
    invoke-direct {p0, p2}, Landroid/icu/impl/PluralRulesLoader;->getLocaleIdToRulesIdMap(Landroid/icu/text/PluralRules$PluralType;)Ljava/util/Map;

    move-result-object p0

    .line 168
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/util/ULocale;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 170
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_1

    const-string v0, "_"

    .line 171
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 175
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p2
.end method

.method public hasOverride(Landroid/icu/util/ULocale;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPluralRangesAvailable(Landroid/icu/util/ULocale;)Z
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Landroid/icu/impl/PluralRulesLoader;->getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;

    move-result-object p0

    sget-object p1, Landroid/icu/impl/PluralRulesLoader;->UNKNOWN_RANGE:Landroid/icu/text/PluralRanges;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
