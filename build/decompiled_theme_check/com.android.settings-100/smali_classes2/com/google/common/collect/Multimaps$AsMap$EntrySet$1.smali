.class Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;
.super Ljava/lang/Object;
.source "Multimaps.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$AsMap$EntrySet;)V
    .locals 0

    .line 1863
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;->this$1:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1863
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1866
    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet$1;->this$1:Lcom/google/common/collect/Multimaps$AsMap$EntrySet;

    iget-object p0, p0, Lcom/google/common/collect/Multimaps$AsMap$EntrySet;->this$0:Lcom/google/common/collect/Multimaps$AsMap;

    invoke-static {p0}, Lcom/google/common/collect/Multimaps$AsMap;->access$200(Lcom/google/common/collect/Multimaps$AsMap;)Lcom/google/common/collect/Multimap;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
