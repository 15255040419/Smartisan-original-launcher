.class public Lcom/smartisanos/smengine/m;
.super Ljava/lang/Object;
.source "CollisionManager.java"


# instance fields
.field private kD:Lcom/smartisanos/smengine/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bk()Lcom/smartisanos/smengine/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/m;->kD:Lcom/smartisanos/smengine/l;

    return-object p0
.end method

.method public clean()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/smengine/m;->kD:Lcom/smartisanos/smengine/l;

    return-void
.end method

.method public e(Lcom/smartisanos/smengine/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/m;->kD:Lcom/smartisanos/smengine/l;

    return-void
.end method
