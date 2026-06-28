.class public final synthetic Lcom/google/common/collect/-$$Lambda$WRrToC596FCyHKpXFGR2rH8N7lQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/common/collect/-$$Lambda$WRrToC596FCyHKpXFGR2rH8N7lQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/-$$Lambda$WRrToC596FCyHKpXFGR2rH8N7lQ;

    invoke-direct {v0}, Lcom/google/common/collect/-$$Lambda$WRrToC596FCyHKpXFGR2rH8N7lQ;-><init>()V

    sput-object v0, Lcom/google/common/collect/-$$Lambda$WRrToC596FCyHKpXFGR2rH8N7lQ;->INSTANCE:Lcom/google/common/collect/-$$Lambda$WRrToC596FCyHKpXFGR2rH8N7lQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/TreeMap;

    invoke-static {p1}, Lcom/google/common/collect/ImmutableSortedMap;->copyOfSorted(Ljava/util/SortedMap;)Lcom/google/common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method
