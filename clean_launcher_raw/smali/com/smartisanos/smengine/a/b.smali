.class public Lcom/smartisanos/smengine/a/b;
.super Ljava/lang/Object;
.source "Geometry3D.java"


# instance fields
.field public distance:Ljava/util/ArrayList;

.field public kV:Ljava/util/ArrayList;

.field public lV:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/b;->kV:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/a/b;->distance:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/smengine/a/b;->lV:Z

    return-void
.end method
