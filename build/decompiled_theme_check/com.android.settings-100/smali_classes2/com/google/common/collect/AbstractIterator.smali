.class public abstract Lcom/google/common/collect/AbstractIterator;
.super Lcom/google/common/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractIterator$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/UnmodifiableIterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private state:Lcom/google/common/collect/AbstractIterator$State;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 65
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    return-void
.end method

.method private tryToComputeNext()Z
    .locals 2

    .line 140
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    .line 141
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v1, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    if-eq v0, v1, :cond_0

    .line 143
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected final endOfData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasNext()Z
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    sget-object v1, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 129
    sget-object v0, Lcom/google/common/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    iget-object v1, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    invoke-virtual {v1}, Lcom/google/common/collect/AbstractIterator$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;->tryToComputeNext()Z

    move-result p0

    return p0

    :cond_1
    return v3

    :cond_2
    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    iput-object v0, p0, Lcom/google/common/collect/AbstractIterator;->state:Lcom/google/common/collect/AbstractIterator$State;

    .line 156
    iget-object v0, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 157
    iput-object v1, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object v0

    .line 153
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object p0, p0, Lcom/google/common/collect/AbstractIterator;->next:Ljava/lang/Object;

    return-object p0

    .line 170
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
