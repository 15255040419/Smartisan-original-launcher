.class public Lcom/smartisanos/smengine/O;
.super Ljava/lang/Object;
.source "RenderTargetManager.java"


# instance fields
.field private JG:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/smengine/O;->JG:Ljava/util/ArrayList;

    return-void
.end method
