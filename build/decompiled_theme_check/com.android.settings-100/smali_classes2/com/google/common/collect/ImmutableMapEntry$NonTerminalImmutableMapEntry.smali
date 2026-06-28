.class Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;
.super Lcom/google/common/collect/ImmutableMapEntry;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NonTerminalImmutableMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 79
    iput-object p3, p0, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-void
.end method


# virtual methods
.method final getNextInKeyBucket()Lcom/google/common/collect/ImmutableMapEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;->nextInKeyBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method

.method final isReusable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
