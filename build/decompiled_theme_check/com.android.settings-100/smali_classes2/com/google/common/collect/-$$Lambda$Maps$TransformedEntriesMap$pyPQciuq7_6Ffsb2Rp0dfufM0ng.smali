.class public final synthetic Lcom/google/common/collect/-$$Lambda$Maps$TransformedEntriesMap$pyPQciuq7_6Ffsb2Rp0dfufM0ng;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

.field private final synthetic f$1:Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/Maps$TransformedEntriesMap;Ljava/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$Maps$TransformedEntriesMap$pyPQciuq7_6Ffsb2Rp0dfufM0ng;->f$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iput-object p2, p0, Lcom/google/common/collect/-$$Lambda$Maps$TransformedEntriesMap$pyPQciuq7_6Ffsb2Rp0dfufM0ng;->f$1:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/-$$Lambda$Maps$TransformedEntriesMap$pyPQciuq7_6Ffsb2Rp0dfufM0ng;->f$0:Lcom/google/common/collect/Maps$TransformedEntriesMap;

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$Maps$TransformedEntriesMap$pyPQciuq7_6Ffsb2Rp0dfufM0ng;->f$1:Ljava/util/function/BiConsumer;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/Maps$TransformedEntriesMap;->lambda$forEach$0$Maps$TransformedEntriesMap(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
