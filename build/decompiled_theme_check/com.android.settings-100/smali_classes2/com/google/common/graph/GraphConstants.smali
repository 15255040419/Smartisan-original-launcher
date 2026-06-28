.class final Lcom/google/common/graph/GraphConstants;
.super Ljava/lang/Object;
.source "GraphConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/graph/GraphConstants$Presence;
    }
.end annotation


# static fields
.field static final DEFAULT_EDGE_COUNT:I = 0x14

.field static final DEFAULT_NODE_COUNT:I = 0xa

.field static final EDGE_ALREADY_EXISTS:Ljava/lang/String; = "Edge %s already exists in the graph."

.field static final EDGE_NOT_IN_GRAPH:Ljava/lang/String; = "Edge %s is not an element of this graph."

.field static final EXPECTED_DEGREE:I = 0x2

.field static final INNER_CAPACITY:I = 0x2

.field static final INNER_LOAD_FACTOR:F = 1.0f

.field static final MULTIPLE_EDGES_CONNECTING:Ljava/lang/String; = "Cannot call edgeConnecting() when parallel edges exist between %s and %s. Consider calling edgesConnecting() instead."

.field static final NODE_NOT_IN_GRAPH:Ljava/lang/String; = "Node %s is not an element of this graph."

.field static final NOT_AVAILABLE_ON_UNDIRECTED:Ljava/lang/String; = "Cannot call source()/target() on a EndpointPair from an undirected graph. Consider calling adjacentNode(node) if you already have a node, or nodeU()/nodeV() if you don\'t."

.field static final PARALLEL_EDGES_NOT_ALLOWED:Ljava/lang/String; = "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

.field static final REUSING_EDGE:Ljava/lang/String; = "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

.field static final SELF_LOOPS_NOT_ALLOWED:Ljava/lang/String; = "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
