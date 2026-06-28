.class synthetic Landroid/icu/impl/TimeZoneGenericNames$1;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$impl$TimeZoneGenericNames$GenericNameType:[I

.field static final synthetic $SwitchMap$android$icu$text$TimeZoneNames$NameType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 799
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->LONG_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v3}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v4}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 200
    :catch_3
    invoke-static {}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->values()[Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$impl$TimeZoneGenericNames$GenericNameType:[I

    :try_start_4
    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$impl$TimeZoneGenericNames$GenericNameType:[I

    sget-object v4, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LOCATION:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$impl$TimeZoneGenericNames$GenericNameType:[I

    sget-object v3, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->LONG:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v3}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Landroid/icu/impl/TimeZoneGenericNames$1;->$SwitchMap$android$icu$impl$TimeZoneGenericNames$GenericNameType:[I

    sget-object v1, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->SHORT:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    return-void
.end method
