.class final Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;
.super Landroid/icu/impl/UResource$Sink;
.source "DecimalFormatSymbols.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DecimalFormatSymbols;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DecFmtDataSink"
.end annotation


# instance fields
.field private numberElements:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1251
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 1252
    iput-object p1, p0, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 5

    .line 1257
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    move v1, v0

    .line 1258
    :goto_0
    invoke-interface {p3, v1, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    .line 1259
    :goto_1
    invoke-static {}, Landroid/icu/text/DecimalFormatSymbols;->access$000()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1260
    invoke-static {}, Landroid/icu/text/DecimalFormatSymbols;->access$000()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1261
    iget-object v3, p0, Landroid/icu/text/DecimalFormatSymbols$DecFmtDataSink;->numberElements:[Ljava/lang/String;

    aget-object v4, v3, v2

    if-nez v4, :cond_1

    .line 1262
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
