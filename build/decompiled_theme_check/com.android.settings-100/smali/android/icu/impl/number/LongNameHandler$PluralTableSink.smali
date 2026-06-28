.class final Landroid/icu/impl/number/LongNameHandler$PluralTableSink;
.super Landroid/icu/impl/UResource$Sink;
.source "LongNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/number/LongNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralTableSink"
.end annotation


# instance fields
.field output:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/icu/impl/StandardPlural;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 38
    iput-object p1, p0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;->output:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 4

    .line 43
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 44
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "dnam"

    .line 45
    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "per"

    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 48
    :cond_0
    invoke-static {p1}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    .line 49
    iget-object v2, p0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;->output:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v2

    .line 53
    iget-object v3, p0, Landroid/icu/impl/number/LongNameHandler$PluralTableSink;->output:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
