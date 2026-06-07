.class public final Lcom/google/common/collect/MapMakerInternalMap$u$a;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/MapMakerInternalMap$u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
        "Lcom/google/common/collect/MapMakerInternalMap$u<",
        "TK;TV;>;",
        "Lcom/google/common/collect/MapMakerInternalMap$v<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/MapMakerInternalMap$u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$u$a<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$u$a;

    invoke-direct {v0}, Lcom/google/common/collect/MapMakerInternalMap$u$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/MapMakerInternalMap$u$a;->a:Lcom/google/common/collect/MapMakerInternalMap$u$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/common/collect/MapMakerInternalMap$u$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/MapMakerInternalMap$u$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$u$a;->a:Lcom/google/common/collect/MapMakerInternalMap$u$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/common/collect/MapMakerInternalMap$v;Lcom/google/common/collect/MapMakerInternalMap$u;Lcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$u<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$u<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/google/common/collect/MapMakerInternalMap$d;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$v;->a(Lcom/google/common/collect/MapMakerInternalMap$v;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-virtual {p2, p1, p3}, Lcom/google/common/collect/MapMakerInternalMap$u;->a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/common/collect/MapMakerInternalMap$v;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;TK;I",
            "Lcom/google/common/collect/MapMakerInternalMap$u<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$u<",
            "TK;TV;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$u;

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap$v;->a(Lcom/google/common/collect/MapMakerInternalMap$v;)Ljava/lang/ref/ReferenceQueue;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$u;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$u;)V

    return-object v0
.end method

.method public a(Lcom/google/common/collect/MapMakerInternalMap$v;Lcom/google/common/collect/MapMakerInternalMap$u;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$u<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$u;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic copy(Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$v;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$u;

    check-cast p3, Lcom/google/common/collect/MapMakerInternalMap$u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$u$a;->a(Lcom/google/common/collect/MapMakerInternalMap$v;Lcom/google/common/collect/MapMakerInternalMap$u;Lcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;

    move-result-object p1

    return-object p1
.end method

.method public keyStrength()Lcom/google/common/collect/MapMakerInternalMap$n;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->b:Lcom/google/common/collect/MapMakerInternalMap$n;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lcom/google/common/collect/MapMakerInternalMap$l;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$v;

    check-cast p4, Lcom/google/common/collect/MapMakerInternalMap$u;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/MapMakerInternalMap$u$a;->a(Lcom/google/common/collect/MapMakerInternalMap$v;Ljava/lang/Object;ILcom/google/common/collect/MapMakerInternalMap$u;)Lcom/google/common/collect/MapMakerInternalMap$u;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$l;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$u$a;->newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$v;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lcom/google/common/collect/MapMakerInternalMap;II)Lcom/google/common/collect/MapMakerInternalMap$v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap<",
            "TK;TV;",
            "Lcom/google/common/collect/MapMakerInternalMap$u<",
            "TK;TV;>;",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;>;II)",
            "Lcom/google/common/collect/MapMakerInternalMap$v<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/common/collect/MapMakerInternalMap$v;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$v;-><init>(Lcom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lcom/google/common/collect/MapMakerInternalMap$l;Lcom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$v;

    check-cast p2, Lcom/google/common/collect/MapMakerInternalMap$u;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/MapMakerInternalMap$u$a;->a(Lcom/google/common/collect/MapMakerInternalMap$v;Lcom/google/common/collect/MapMakerInternalMap$u;Ljava/lang/Object;)V

    return-void
.end method

.method public valueStrength()Lcom/google/common/collect/MapMakerInternalMap$n;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$n;->a:Lcom/google/common/collect/MapMakerInternalMap$n;

    return-object v0
.end method
