.class Lcom/google/common/collect/Maps$AsMapView$1EntrySetImpl;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$AsMapView;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$AsMapView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AsMapView;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AsMapView;->backingSet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, Lcom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    iget-object p0, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, p0}, Lcom/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lcom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method map()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 942
    iget-object p0, p0, Lcom/google/common/collect/Maps$AsMapView$1EntrySetImpl;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    return-object p0
.end method
