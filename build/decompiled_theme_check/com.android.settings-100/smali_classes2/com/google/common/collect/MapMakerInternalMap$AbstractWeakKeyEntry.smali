.class abstract Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractWeakKeyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final next:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;ITE;)V"
        }
    .end annotation

    .line 653
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 654
    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    .line 655
    iput-object p4, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 0

    .line 665
    iget p0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    return p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 660
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getNext()Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 670
    iget-object p0, p0, Lcom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object p0
.end method
