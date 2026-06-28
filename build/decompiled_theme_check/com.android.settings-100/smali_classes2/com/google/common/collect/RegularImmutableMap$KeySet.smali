.class final Lcom/google/common/collect/RegularImmutableMap$KeySet;
.super Lcom/google/common/collect/IndexedImmutableSet;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/IndexedImmutableSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field private final map:Lcom/google/common/collect/RegularImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lcom/google/common/collect/IndexedImmutableSet;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap;->entries:[Ljava/util/Map$Entry;

    aget-object p0, p0, p1

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method isPartialView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public size()I
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-virtual {p0}, Lcom/google/common/collect/RegularImmutableMap;->size()I

    move-result p0

    return p0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 242
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;

    iget-object p0, p0, Lcom/google/common/collect/RegularImmutableMap$KeySet;->map:Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableMap$KeySet$SerializedForm;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
