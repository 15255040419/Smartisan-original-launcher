.class public Lsmartisanos/t9search/T9SearchEngine;
.super Ljava/lang/Object;
.source "T9SearchEngine.java"

.field private static final sInstance:Lsmartisanos/t9search/T9SearchEngine;

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsmartisanos/t9search/T9SearchEngine;

    invoke-direct {v0}, Lsmartisanos/t9search/T9SearchEngine;-><init>()V

    sput-object v0, Lsmartisanos/t9search/T9SearchEngine;->sInstance:Lsmartisanos/t9search/T9SearchEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lsmartisanos/t9search/T9SearchEngine;
    .locals 1

    sget-object v0, Lsmartisanos/t9search/T9SearchEngine;->sInstance:Lsmartisanos/t9search/T9SearchEngine;

    return-object v0
.end method

.method public search(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lsmartisanos/t9search/T9Model;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lsmartisanos/t9search/T9Model;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisanos/t9search/T9Model;

    iget-object v2, v1, Lsmartisanos/t9search/T9Model;->keys:[Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-object v4, v2, v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Lsmartisanos/t9search/T9Model;->setMatchRange(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-object v0
.end method
