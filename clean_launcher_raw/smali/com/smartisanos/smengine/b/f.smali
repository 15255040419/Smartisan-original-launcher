.class public Lcom/smartisanos/smengine/b/f;
.super Ljava/lang/Object;
.source "Particle.java"


# instance fields
.field public IR:F

.field public final QW:Lcom/smartisanos/smengine/a/j;

.field public RW:F

.field public SW:F

.field public TW:I

.field public angle:F

.field public final color:Lcom/smartisanos/smengine/a/k;

.field public final position:Lcom/smartisanos/smengine/a/j;

.field public size:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/f;->QW:Lcom/smartisanos/smengine/a/j;

    .line 3
    new-instance v0, Lcom/smartisanos/smengine/a/j;

    invoke-direct {v0}, Lcom/smartisanos/smengine/a/j;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/f;->position:Lcom/smartisanos/smengine/a/j;

    .line 4
    new-instance v0, Lcom/smartisanos/smengine/a/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/smartisanos/smengine/a/k;-><init>(FFFF)V

    iput-object v0, p0, Lcom/smartisanos/smengine/b/f;->color:Lcom/smartisanos/smengine/a/k;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/b/f;->TW:I

    return-void
.end method
