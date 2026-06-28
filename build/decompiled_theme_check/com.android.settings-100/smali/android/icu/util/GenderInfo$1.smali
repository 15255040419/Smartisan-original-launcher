.class synthetic Landroid/icu/util/GenderInfo$1;
.super Ljava/lang/Object;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$util$GenderInfo$Gender:[I

.field static final synthetic $SwitchMap$android$icu$util$GenderInfo$ListGenderStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 174
    invoke-static {}, Landroid/icu/util/GenderInfo$ListGenderStyle;->values()[Landroid/icu/util/GenderInfo$ListGenderStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$ListGenderStyle:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$ListGenderStyle:[I

    sget-object v2, Landroid/icu/util/GenderInfo$ListGenderStyle;->NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v2}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$ListGenderStyle:[I

    sget-object v3, Landroid/icu/util/GenderInfo$ListGenderStyle;->MIXED_NEUTRAL:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v3}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$ListGenderStyle:[I

    sget-object v4, Landroid/icu/util/GenderInfo$ListGenderStyle;->MALE_TAINTS:Landroid/icu/util/GenderInfo$ListGenderStyle;

    invoke-virtual {v4}, Landroid/icu/util/GenderInfo$ListGenderStyle;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    :catch_2
    invoke-static {}, Landroid/icu/util/GenderInfo$Gender;->values()[Landroid/icu/util/GenderInfo$Gender;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$Gender:[I

    :try_start_3
    sget-object v3, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$Gender:[I

    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v4}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$Gender:[I

    sget-object v3, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v3}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    move-result v3

    aput v1, v0, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/icu/util/GenderInfo$1;->$SwitchMap$android$icu$util$GenderInfo$Gender:[I

    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v1}, Landroid/icu/util/GenderInfo$Gender;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
