.class public final Lcom/google/common/collect/MapMakerInternalMap$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$e;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/common/collect/MapMakerInternalMap$e;",
            ")",
            "Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/MapMakerInternalMap$e;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public bridge synthetic copyFor(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0

    .line 1
    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$e;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$a;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$e;)Lcom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getEntry()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$a;->getEntry()Lcom/google/common/collect/MapMakerInternalMap$e;

    move-result-object v0

    return-object v0
.end method

.method public getEntry()Lcom/google/common/collect/MapMakerInternalMap$e;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
