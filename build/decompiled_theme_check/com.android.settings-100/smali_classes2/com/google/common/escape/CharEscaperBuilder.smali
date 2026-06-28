.class public final Lcom/google/common/escape/CharEscaperBuilder;
.super Ljava/lang/Object;
.source "CharEscaperBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private max:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget p2, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    if-le p1, p2, :cond_0

    .line 89
    iput p1, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    :cond_0
    return-object p0
.end method

.method public addEscapes([CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;
    .locals 3

    .line 97
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-char v2, p1, v1

    .line 99
    invoke-virtual {p0, v2, p2}, Lcom/google/common/escape/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/CharEscaperBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public toArray()[[C
    .locals 3

    .line 112
    iget v0, p0, Lcom/google/common/escape/CharEscaperBuilder;->max:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [[C

    .line 113
    iget-object p0, p0, Lcom/google/common/escape/CharEscaperBuilder;->map:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .line 126
    new-instance v0, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;

    invoke-virtual {p0}, Lcom/google/common/escape/CharEscaperBuilder;->toArray()[[C

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/escape/CharEscaperBuilder$CharArrayDecorator;-><init>([[C)V

    return-object v0
.end method
