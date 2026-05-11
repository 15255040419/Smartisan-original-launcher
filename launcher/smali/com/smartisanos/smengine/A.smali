.class public Lcom/smartisanos/smengine/A;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private data:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/A;->data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/A;->data:Ljava/util/ArrayList;

    return-object p0
.end method

.method public l(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/A;->data:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
