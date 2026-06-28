.class synthetic Landroid/icu/util/ULocale$3;
.super Ljava/lang/Object;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$util$ULocale$Category:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4188
    invoke-static {}, Landroid/icu/util/ULocale$Category;->values()[Landroid/icu/util/ULocale$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/util/ULocale$3;->$SwitchMap$android$icu$util$ULocale$Category:[I

    :try_start_0
    sget-object v0, Landroid/icu/util/ULocale$3;->$SwitchMap$android$icu$util$ULocale$Category:[I

    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-virtual {v1}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/icu/util/ULocale$3;->$SwitchMap$android$icu$util$ULocale$Category:[I

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-virtual {v1}, Landroid/icu/util/ULocale$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
