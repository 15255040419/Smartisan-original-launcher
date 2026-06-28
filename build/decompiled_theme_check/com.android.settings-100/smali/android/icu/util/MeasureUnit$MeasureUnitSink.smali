.class final Landroid/icu/util/MeasureUnit$MeasureUnitSink;
.super Landroid/icu/impl/UResource$Sink;
.source "MeasureUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/MeasureUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MeasureUnitSink"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/util/MeasureUnit$1;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Landroid/icu/util/MeasureUnit$MeasureUnitSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 5

    .line 259
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    .line 260
    :goto_0
    invoke-interface {p0, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "compound"

    .line 262
    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "coordinate"

    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object v2

    move v3, p3

    .line 268
    :goto_1
    invoke-interface {v2, v3, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-static {v1, v4}, Landroid/icu/util/MeasureUnit;->internalGetInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/MeasureUnit;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
