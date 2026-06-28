.class Lcom/google/common/collect/Interners$InternerFunction;
.super Ljava/lang/Object;
.source "Interners.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Interners;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternerFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field private final interner:Lcom/google/common/collect/Interner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Interner<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/Interner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Interner<",
            "TE;>;)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-object p1, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 170
    iget-object p0, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-interface {p0, p1}, Lcom/google/common/collect/Interner;->intern(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 180
    instance-of v0, p1, Lcom/google/common/collect/Interners$InternerFunction;

    if-eqz v0, :cond_0

    .line 181
    check-cast p1, Lcom/google/common/collect/Interners$InternerFunction;

    .line 182
    iget-object p0, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    iget-object p1, p1, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/google/common/collect/Interners$InternerFunction;->interner:Lcom/google/common/collect/Interner;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
