.class final Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;TV;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 420
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper<",
            "TK;TV;>;"
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->INSTANCE:Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 417
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 0
    .param p3    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 452
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->copy(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 0

    .line 429
    sget-object p0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 417
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newEntry(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p0

    return-object p0
.end method

.method public newEntry(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 0
    .param p4    # Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    new-instance p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-direct {p0, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;-><init>(Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;)V

    return-object p0
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 417
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object p0

    return-object p0
.end method

.method public newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 444
    new-instance p0, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object p0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 417
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry$Helper;->setValue(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 460
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 0

    .line 434
    sget-object p0, Lcom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    return-object p0
.end method
