.class final Lcom/google/common/base/FunctionalEquivalence;
.super Lcom/google/common/base/Equivalence;
.source "FunctionalEquivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/base/Equivalence<",
        "TF;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "TF;+TT;>;"
        }
    .end annotation
.end field

.field private final resultEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/base/Function;Lcom/google/common/base/Equivalence;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Function<",
            "TF;+TT;>;",
            "Lcom/google/common/base/Equivalence<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    .line 40
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Function;

    iput-object p1, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    .line 41
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Equivalence;

    iput-object p1, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    return-void
.end method


# virtual methods
.method protected doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TF;)Z"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    invoke-interface {p0, p2}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected doHash(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)I"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    iget-object p0, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    invoke-interface {p0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/google/common/base/FunctionalEquivalence;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 60
    check-cast p1, Lcom/google/common/base/FunctionalEquivalence;

    .line 61
    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    iget-object v3, p1, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v3}, Lcom/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    iget-object p1, p1, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/FunctionalEquivalence;->resultEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".onResultOf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/base/FunctionalEquivalence;->function:Lcom/google/common/base/Function;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
