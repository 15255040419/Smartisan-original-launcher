.class synthetic Landroid/icu/impl/LocaleDisplayNamesImpl$1;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$impl$LocaleDisplayNamesImpl$DataTableType:[I

.field static final synthetic $SwitchMap$android$icu$text$DisplayContext$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 709
    invoke-static {}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->values()[Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$impl$LocaleDisplayNamesImpl$DataTableType:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$impl$LocaleDisplayNamesImpl$DataTableType:[I

    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->LANG:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    invoke-virtual {v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$impl$LocaleDisplayNamesImpl$DataTableType:[I

    sget-object v3, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->REGION:Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;

    invoke-virtual {v3}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTableType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 149
    :catch_1
    invoke-static {}, Landroid/icu/text/DisplayContext$Type;->values()[Landroid/icu/text/DisplayContext$Type;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    :try_start_2
    sget-object v2, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    sget-object v3, Landroid/icu/text/DisplayContext$Type;->DIALECT_HANDLING:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v3}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    sget-object v2, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v2}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->DISPLAY_LENGTH:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$1;->$SwitchMap$android$icu$text$DisplayContext$Type:[I

    sget-object v1, Landroid/icu/text/DisplayContext$Type;->SUBSTITUTE_HANDLING:Landroid/icu/text/DisplayContext$Type;

    invoke-virtual {v1}, Landroid/icu/text/DisplayContext$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
