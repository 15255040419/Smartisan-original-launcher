.class final Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;
.super Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;
.source "ImmutableMapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMapEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NonTerminalImmutableBiMapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;Lcom/google/common/collect/ImmutableMapEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/ImmutableMapEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableMapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableMapEntry;)V

    .line 104
    iput-object p4, p0, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-void
.end method


# virtual methods
.method getNextInValueBucket()Lcom/google/common/collect/ImmutableMapEntry;
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

    .line 110
    iget-object p0, p0, Lcom/google/common/collect/ImmutableMapEntry$NonTerminalImmutableBiMapEntry;->nextInValueBucket:Lcom/google/common/collect/ImmutableMapEntry;

    return-object p0
.end method
