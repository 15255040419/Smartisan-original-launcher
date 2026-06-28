.class synthetic Landroid/icu/impl/TZDBTimeZoneNames$1;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$text$TimeZoneNames$NameType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 201
    invoke-static {}, Landroid/icu/text/TimeZoneNames$NameType;->values()[Landroid/icu/text/TimeZoneNames$NameType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    :try_start_0
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/icu/impl/TZDBTimeZoneNames$1;->$SwitchMap$android$icu$text$TimeZoneNames$NameType:[I

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1}, Landroid/icu/text/TimeZoneNames$NameType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
