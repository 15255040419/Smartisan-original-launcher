.class final Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;
.super Lcom/google/common/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/MapMakerInternalMap<",
        "TK;TV;TE;TS;>.HashIterator<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .locals 0

    .line 2619
    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;->this$0:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$HashIterator;-><init>(Lcom/google/common/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2623
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$KeyIterator;->nextEntry()Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
