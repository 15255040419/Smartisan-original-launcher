.class final Landroid/icu/text/Collator$KeywordsSink;
.super Landroid/icu/impl/UResource$Sink;
.source "Collator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/Collator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeywordsSink"
.end annotation


# instance fields
.field hasDefault:Z

.field values:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 979
    invoke-direct {p0}, Landroid/icu/impl/UResource$Sink;-><init>()V

    .line 980
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 981
    iput-boolean v0, p0, Landroid/icu/text/Collator$KeywordsSink;->hasDefault:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/Collator$1;)V
    .locals 0

    .line 979
    invoke-direct {p0}, Landroid/icu/text/Collator$KeywordsSink;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V
    .locals 3

    .line 985
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getTable()Landroid/icu/impl/UResource$Table;

    move-result-object p3

    const/4 v0, 0x0

    .line 986
    :goto_0
    invoke-interface {p3, v0, p1, p2}, Landroid/icu/impl/UResource$Table;->getKeyAndValue(ILandroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getType()I

    move-result v1

    if-nez v1, :cond_0

    .line 989
    iget-boolean v1, p0, Landroid/icu/text/Collator$KeywordsSink;->hasDefault:Z

    if-nez v1, :cond_1

    const-string v1, "default"

    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 990
    invoke-virtual {p2}, Landroid/icu/impl/UResource$Value;->getString()Ljava/lang/String;

    move-result-object v1

    .line 991
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 992
    iget-object v2, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 993
    iget-object v2, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 994
    iput-boolean v1, p0, Landroid/icu/text/Collator$KeywordsSink;->hasDefault:Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "private-"

    .line 997
    invoke-virtual {p1, v1}, Landroid/icu/impl/UResource$Key;->startsWith(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 998
    invoke-virtual {p1}, Landroid/icu/impl/UResource$Key;->toString()Ljava/lang/String;

    move-result-object v1

    .line 999
    iget-object v2, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1000
    iget-object v2, p0, Landroid/icu/text/Collator$KeywordsSink;->values:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
