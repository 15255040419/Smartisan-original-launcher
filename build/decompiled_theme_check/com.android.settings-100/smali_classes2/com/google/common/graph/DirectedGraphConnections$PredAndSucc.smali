.class final Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;
.super Ljava/lang/Object;
.source "DirectedGraphConnections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/DirectedGraphConnections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PredAndSucc"
.end annotation


# instance fields
.field private final successorValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->successorValue:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$500(Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;)Ljava/lang/Object;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/common/graph/DirectedGraphConnections$PredAndSucc;->successorValue:Ljava/lang/Object;

    return-object p0
.end method
