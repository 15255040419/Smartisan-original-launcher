.class Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;
.super Lcom/google/common/collect/TransformedIterator;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/TransformedIterator<",
        "Ljava/util/Collection<",
        "TV;>;",
        "Ljava/util/Collection<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;Ljava/util/Iterator;)V
    .locals 0

    .line 1403
    iput-object p1, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->this$0:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1403
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->transform(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method transform(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1406
    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues$1;->this$0:Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;

    iget-object p0, p0, Lcom/google/common/collect/Synchronized$SynchronizedAsMapValues;->mutex:Ljava/lang/Object;

    invoke-static {p1, p0}, Lcom/google/common/collect/Synchronized;->access$400(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
