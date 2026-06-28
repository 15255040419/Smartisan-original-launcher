.class final Landroid/icu/util/MeasureUnit$CurrencyNumericCodeSink;
.super Landroid/icu/impl/UResource$Sink;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrencyNumericCodeSink"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/MeasureUnit$1;)V
    .locals 0

    .line 279
    invoke-direct {p0}, Landroid/icu/util/MeasureUnit$CurrencyNumericCodeSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 2

    .line 282
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p0

    const/4 p3, 0x0

    .line 283
    :goto_0
    invoke-interface {p0, p3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "currency"

    invoke-static {v1, v0}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
