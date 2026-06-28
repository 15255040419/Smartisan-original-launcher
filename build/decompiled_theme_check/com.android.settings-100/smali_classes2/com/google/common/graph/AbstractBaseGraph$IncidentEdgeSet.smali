.class abstract Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.super Ljava/util/AbstractSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/AbstractBaseGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IncidentEdgeSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;,
        Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Lcom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field protected final graph:Lcom/google/common/graph/BaseGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation
.end field

.field protected final node:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;TN;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;->graph:Lcom/google/common/graph/BaseGraph;

    .line 144
    iput-object p2, p0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;->node:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/AbstractBaseGraph$1;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1, p2}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method

.method public static of(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;)Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/graph/BaseGraph<",
            "TN;>;TN;)",
            "Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<",
            "TN;>;"
        }
    .end annotation

    .line 139
    invoke-interface {p0}, Lcom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/AbstractBaseGraph$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;-><init>(Lcom/google/common/graph/BaseGraph;Ljava/lang/Object;Lcom/google/common/graph/AbstractBaseGraph$1;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 0

    .line 149
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
