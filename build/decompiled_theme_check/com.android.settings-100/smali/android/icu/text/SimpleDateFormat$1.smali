.class synthetic Landroid/icu/text/SimpleDateFormat$1;
.super Ljava/lang/Object;
.source "SimpleDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SimpleDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$text$DisplayContext:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 2031
    invoke-static {}, Landroid/icu/text/DisplayContext;->values()[Landroid/icu/text/DisplayContext;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/text/SimpleDateFormat$1;->$SwitchMap$android$icu$text$DisplayContext:[I

    :try_start_0
    sget-object v0, Landroid/icu/text/SimpleDateFormat$1;->$SwitchMap$android$icu$text$DisplayContext:[I

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/icu/text/SimpleDateFormat$1;->$SwitchMap$android$icu$text$DisplayContext:[I

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_UI_LIST_OR_MENU:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroid/icu/text/SimpleDateFormat$1;->$SwitchMap$android$icu$text$DisplayContext:[I

    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_STANDALONE:Landroid/icu/text/DisplayContext;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
