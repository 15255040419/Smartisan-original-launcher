.class synthetic Landroid/icu/util/UResourceBundle$1;
.super Ljava/lang/Object;
.source "UResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/UResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$util$UResourceBundle$RootType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 358
    invoke-static {}, Landroid/icu/util/UResourceBundle$RootType;->values()[Landroid/icu/util/UResourceBundle$RootType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/util/UResourceBundle$1;->$SwitchMap$android$icu$util$UResourceBundle$RootType:[I

    :try_start_0
    sget-object v0, Landroid/icu/util/UResourceBundle$1;->$SwitchMap$android$icu$util$UResourceBundle$RootType:[I

    sget-object v1, Landroid/icu/util/UResourceBundle$RootType;->ICU:Landroid/icu/util/UResourceBundle$RootType;

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle$RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/icu/util/UResourceBundle$1;->$SwitchMap$android$icu$util$UResourceBundle$RootType:[I

    sget-object v1, Landroid/icu/util/UResourceBundle$RootType;->JAVA:Landroid/icu/util/UResourceBundle$RootType;

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle$RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroid/icu/util/UResourceBundle$1;->$SwitchMap$android$icu$util$UResourceBundle$RootType:[I

    sget-object v1, Landroid/icu/util/UResourceBundle$RootType;->MISSING:Landroid/icu/util/UResourceBundle$RootType;

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle$RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
