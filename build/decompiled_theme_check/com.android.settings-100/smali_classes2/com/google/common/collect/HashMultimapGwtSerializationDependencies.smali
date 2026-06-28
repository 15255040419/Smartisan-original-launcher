.class abstract Lcom/google/common/collect/HashMultimapGwtSerializationDependencies;
.super Lcom/google/common/collect/AbstractSetMultimap;
.source "HashMultimapGwtSerializationDependencies.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractSetMultimap;-><init>(Ljava/util/Map;)V

    return-void
.end method
