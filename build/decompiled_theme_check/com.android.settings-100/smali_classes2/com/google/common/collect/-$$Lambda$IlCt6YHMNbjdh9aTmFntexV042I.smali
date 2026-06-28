.class public final synthetic Lcom/google/common/collect/-$$Lambda$IlCt6YHMNbjdh9aTmFntexV042I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$IlCt6YHMNbjdh9aTmFntexV042I;->f$0:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$IlCt6YHMNbjdh9aTmFntexV042I;->f$0:Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
