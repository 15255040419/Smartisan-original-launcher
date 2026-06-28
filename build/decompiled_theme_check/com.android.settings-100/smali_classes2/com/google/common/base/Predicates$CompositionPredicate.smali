.class Lcom/google/common/base/Predicates$CompositionPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/Predicate;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Predicates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositionPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TA;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final f:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "TA;+TB;>;"
        }
    .end annotation
.end field

.field final p:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate<",
            "TB;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Predicate<",
            "TB;>;",
            "Lcom/google/common/base/Function<",
            "TA;+TB;>;)V"
        }
    .end annotation

    .line 589
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 590
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Predicate;

    iput-object p1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    .line 591
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Function;

    iput-object p1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;Lcom/google/common/base/Predicates$1;)V
    .locals 0

    .line 585
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/Predicates$CompositionPredicate;-><init>(Lcom/google/common/base/Predicate;Lcom/google/common/base/Function;)V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-interface {p0, p1}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 601
    instance-of v0, p1, Lcom/google/common/base/Predicates$CompositionPredicate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 602
    check-cast p1, Lcom/google/common/base/Predicates$CompositionPredicate;

    .line 603
    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    iget-object v2, p1, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-interface {v0, v2}, Lcom/google/common/base/Function;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    iget-object p1, p1, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    invoke-interface {p0, p1}, Lcom/google/common/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->p:Lcom/google/common/base/Predicate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/common/base/Predicates$CompositionPredicate;->f:Lcom/google/common/base/Function;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
