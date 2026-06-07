.class public Lb/a/a/o1/b/d;
.super Ljava/lang/Object;
.source "YellowPageModel.java"

# interfaces
.implements Lcom/android/quicksearchbox/voice/model/IModel;


# instance fields
.field public a:Lsmartisanos/app/numberassistant/YellowPageResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lsmartisanos/app/numberassistant/YellowPageResult;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lb/a/a/o1/b/d;",
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

    if-ge v1, v2, :cond_0

    .line 3
    new-instance v2, Lb/a/a/o1/b/d;

    invoke-direct {v2}, Lb/a/a/o1/b/d;-><init>()V

    .line 4
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsmartisanos/app/numberassistant/YellowPageResult;

    iput-object v3, v2, Lb/a/a/o1/b/d;->a:Lsmartisanos/app/numberassistant/YellowPageResult;

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
