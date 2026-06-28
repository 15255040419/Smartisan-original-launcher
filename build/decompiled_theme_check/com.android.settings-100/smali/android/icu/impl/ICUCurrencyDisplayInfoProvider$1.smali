.class synthetic Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;
.super Ljava/lang/Object;
.source "ICUCurrencyDisplayInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUCurrencyDisplayInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 369
    invoke-static {}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->values()[Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    :try_start_0
    sget-object v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    sget-object v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->TOP:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    sget-object v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCIES:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    sget-object v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_PLURALS:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    sget-object v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_NARROW:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    sget-object v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_SPACING:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$1;->$SwitchMap$android$icu$impl$ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable:[I

    sget-object v1, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->CURRENCY_UNIT_PATTERNS:Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;

    invoke-virtual {v1}, Landroid/icu/impl/ICUCurrencyDisplayInfoProvider$ICUCurrencyDisplayInfo$CurrencySink$EntrypointTable;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
