.class final Lcom/google/common/collect/WellBehavedMap$EntrySet;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "WellBehavedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/WellBehavedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/WellBehavedMap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/WellBehavedMap;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/WellBehavedMap;Lcom/google/common/collect/WellBehavedMap$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/common/collect/WellBehavedMap$EntrySet;-><init>(Lcom/google/common/collect/WellBehavedMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;

    iget-object v1, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    invoke-virtual {v1}, Lcom/google/common/collect/WellBehavedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/WellBehavedMap$EntrySet$1;-><init>(Lcom/google/common/collect/WellBehavedMap$EntrySet;Ljava/util/Iterator;)V

    return-object v0
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

    .line 71
    iget-object p0, p0, Lcom/google/common/collect/WellBehavedMap$EntrySet;->this$0:Lcom/google/common/collect/WellBehavedMap;

    return-object p0
.end method
