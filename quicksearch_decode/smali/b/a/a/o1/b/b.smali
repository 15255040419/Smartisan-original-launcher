.class public Lb/a/a/o1/b/b;
.super Ljava/lang/Object;
.source "ContactModel.java"

# interfaces
.implements Lcom/android/quicksearchbox/voice/model/IModel;


# instance fields
.field public a:Lsmartisanos/app/voiceassistant/ContactStruct;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisanos/app/voiceassistant/ContactStruct;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lsmartisanos/app/voiceassistant/ContactStruct;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lb/a/a/o1/b/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3
    new-instance v2, Lb/a/a/o1/b/b;

    invoke-direct {v2}, Lb/a/a/o1/b/b;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsmartisanos/app/voiceassistant/ContactStruct;

    iput-object v3, v2, Lb/a/a/o1/b/b;->a:Lsmartisanos/app/voiceassistant/ContactStruct;

    .line 5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsmartisanos/app/voiceassistant/ContactStruct;

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 6
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsmartisanos/app/voiceassistant/ContactStruct;

    .line 7
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsmartisanos/app/voiceassistant/ContactStruct;

    :goto_2
    if-eqz v5, :cond_2

    .line 8
    iget-wide v5, v5, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    iget-wide v7, v3, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    if-eqz v4, :cond_3

    .line 9
    iget-wide v4, v4, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    iget-wide v6, v3, Lsmartisanos/app/voiceassistant/ContactStruct;->contactId:J

    cmp-long v3, v4, v6

    .line 10
    :cond_3
    :goto_3
    iput-object p0, v2, Lb/a/a/o1/b/b;->b:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method
