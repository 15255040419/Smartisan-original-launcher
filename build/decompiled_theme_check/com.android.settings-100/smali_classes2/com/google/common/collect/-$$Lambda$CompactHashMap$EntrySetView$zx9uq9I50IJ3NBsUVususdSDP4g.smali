.class public final synthetic Lcom/google/common/collect/-$$Lambda$CompactHashMap$EntrySetView$zx9uq9I50IJ3NBsUVususdSDP4g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field private final synthetic f$0:Lcom/google/common/collect/CompactHashMap$EntrySetView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/collect/CompactHashMap$EntrySetView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/-$$Lambda$CompactHashMap$EntrySetView$zx9uq9I50IJ3NBsUVususdSDP4g;->f$0:Lcom/google/common/collect/CompactHashMap$EntrySetView;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/-$$Lambda$CompactHashMap$EntrySetView$zx9uq9I50IJ3NBsUVususdSDP4g;->f$0:Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap$EntrySetView;->lambda$spliterator$0$CompactHashMap$EntrySetView(I)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method
