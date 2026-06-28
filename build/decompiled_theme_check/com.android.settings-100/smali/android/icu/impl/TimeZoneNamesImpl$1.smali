.class synthetic Landroid/icu/impl/TimeZoneNamesImpl$1;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

.field static final synthetic $SwitchMap$android$icu$text$TimeZoneNames$NameType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 729
    invoke-static {}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->values()[Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->EXEMPLAR_LOCATION:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v2}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v5, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->LONG_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v5}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v6, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_GENERIC:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v6}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v7, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_STANDARD:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v7}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$impl$TimeZoneNamesImpl$ZNames$NameTypeIndex:[I

    sget-object v8, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->SHORT_DAYLIGHT:Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;

    invoke-virtual {v8}, Landroid/icu/impl/TimeZoneNamesImpl$ZNames$NameTypeIndex;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    .line 708
    :catch_6
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v7

    array-length v7, v7

    new-array v7, v7, [I

    sput-object v7, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    :try_start_7
    sget-object v7, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->EXEMPLAR_LOCATION:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v8}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v8

    aput v0, v7, v8
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v7}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v7

    aput v1, v0, v7
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aput v5, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v0, Landroid/icu/impl/TimeZoneNamesImpl$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    aput v6, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
