.class final Lcom/google/common/collect/Sets$SubSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SubSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final inputSet:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mask:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1499
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1500
    iput-object p1, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    .line 1501
    iput p2, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    return-void
.end method

.method static synthetic access$100(Lcom/google/common/collect/Sets$SubSet;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 1495
    iget-object p0, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/common/collect/Sets$SubSet;)I
    .locals 0

    .line 1495
    iget p0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    return p0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1534
    iget-object v0, p0, Lcom/google/common/collect/Sets$SubSet;->inputSet:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1535
    iget p0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1506
    new-instance v0, Lcom/google/common/collect/Sets$SubSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Sets$SubSet$1;-><init>(Lcom/google/common/collect/Sets$SubSet;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    .line 1529
    iget p0, p0, Lcom/google/common/collect/Sets$SubSet;->mask:I

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method
