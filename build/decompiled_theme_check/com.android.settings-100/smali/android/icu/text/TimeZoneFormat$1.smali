.class synthetic Landroid/icu/text/TimeZoneFormat$1;
.super Ljava/lang/Object;
.source "TimeZoneFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/TimeZoneFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

.field static final synthetic $SwitchMap$android$icu$text$TimeZoneNames$NameType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1799
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 833
    :catch_3
    invoke-static {}, Landroid/icu/text/TimeZoneFormat$Style;->values()[Landroid/icu/text/TimeZoneFormat$Style;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    :try_start_4
    sget-object v4, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v5, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v5}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v4, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->GENERIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_LONG:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->SPECIFIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ZONE_ID_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->LOCALIZED_GMT_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_SHORT:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_BASIC_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FIXED:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v0, Landroid/icu/text/TimeZoneFormat$1;->$SwitchMap$android$icu$text$TimeZoneFormat$Style:[I

    sget-object v1, Landroid/icu/text/TimeZoneFormat$Style;->ISO_EXTENDED_LOCAL_FULL:Landroid/icu/text/TimeZoneFormat$Style;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneFormat$Style;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method
