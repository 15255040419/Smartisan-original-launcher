.class public Lcom/google/common/collect/Interners$InternerBuilder;
.super Ljava/lang/Object;
.source "Interners.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InternerBuilder"
.end annotation


# instance fields
.field private final mapMaker:Lcom/google/common/collect/MapMaker;

.field private strong:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/google/common/collect/MapMaker;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Interners$1;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/google/common/collect/Interners$InternerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/Interner;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation

    .line 81
    iget-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMaker;->weakKeys()Lcom/google/common/collect/MapMaker;

    .line 84
    :cond_0
    new-instance v0, Lcom/google/common/collect/Interners$InternerImpl;

    iget-object p0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/Interners$InternerImpl;-><init>(Lcom/google/common/collect/MapMaker;Lcom/google/common/collect/Interners$1;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lcom/google/common/collect/Interners$InternerBuilder;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->mapMaker:Lcom/google/common/collect/MapMaker;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/MapMaker;->concurrencyLevel(I)Lcom/google/common/collect/MapMaker;

    return-object p0
.end method

.method public strong()Lcom/google/common/collect/Interners$InternerBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    return-object p0
.end method

.method public weak()Lcom/google/common/collect/Interners$InternerBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/google/common/collect/Interners$InternerBuilder;->strong:Z

    return-object p0
.end method
