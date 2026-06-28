.class synthetic Landroid/icu/util/LocaleMatcher$1;
.super Ljava/lang/Object;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$util$LocaleMatcher$Level:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 723
    invoke-static {}, Landroid/icu/util/LocaleMatcher$Level;->values()[Landroid/icu/util/LocaleMatcher$Level;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/util/LocaleMatcher$1;->$SwitchMap$android$icu$util$LocaleMatcher$Level:[I

    :try_start_0
    sget-object v0, Landroid/icu/util/LocaleMatcher$1;->$SwitchMap$android$icu$util$LocaleMatcher$Level:[I

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/icu/util/LocaleMatcher$1;->$SwitchMap$android$icu$util$LocaleMatcher$Level:[I

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroid/icu/util/LocaleMatcher$1;->$SwitchMap$android$icu$util$LocaleMatcher$Level:[I

    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    invoke-virtual {v1}, Landroid/icu/util/LocaleMatcher$Level;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
