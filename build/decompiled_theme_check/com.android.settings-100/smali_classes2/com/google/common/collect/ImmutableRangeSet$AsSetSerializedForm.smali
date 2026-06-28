.class Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;
.super Ljava/lang/Object;
.source "ImmutableRangeSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsSetSerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final domain:Lcom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field

.field private final ranges:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Range<",
            "TC;>;>;",
            "Lcom/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->ranges:Lcom/google/common/collect/ImmutableList;

    .line 690
    iput-object p2, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->domain:Lcom/google/common/collect/DiscreteDomain;

    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .line 694
    new-instance v0, Lcom/google/common/collect/ImmutableRangeSet;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->ranges:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableRangeSet;-><init>(Lcom/google/common/collect/ImmutableList;)V

    iget-object p0, p0, Lcom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;->domain:Lcom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, p0}, Lcom/google/common/collect/ImmutableRangeSet;->asSet(Lcom/google/common/collect/DiscreteDomain;)Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method
