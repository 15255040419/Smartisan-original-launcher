.class public Lcom/smartisanos/smengine/a/c;
.super Ljava/lang/Object;
.source "Geometry3D.java"


# instance fields
.field private mOrigin:Lcom/smartisanos/smengine/a/j;

.field private mV:Lcom/smartisanos/smengine/a/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/c;->mOrigin:Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/c;->mV:Lcom/smartisanos/smengine/a/j;

    return-void
.end method


# virtual methods
.method public b(Lcom/smartisanos/smengine/a/j;Lcom/smartisanos/smengine/a/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/a/c;->mOrigin:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {v0, p1}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    .line 2
    iget-object p0, p0, Lcom/smartisanos/smengine/a/c;->mV:Lcom/smartisanos/smengine/a/j;

    invoke-virtual {p0, p2}, Lcom/smartisanos/smengine/a/j;->x(Lcom/smartisanos/smengine/a/j;)Lcom/smartisanos/smengine/a/j;

    return-void
.end method

.method public getDirection()Lcom/smartisanos/smengine/a/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/a/c;->mV:Lcom/smartisanos/smengine/a/j;

    return-object p0
.end method
