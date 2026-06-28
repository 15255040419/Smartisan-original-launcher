.class final Lcom/google/common/base/CharMatcher$IsNot;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IsNot"
.end annotation


# instance fields
.field private final match:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 1833
    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    .line 1834
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    return-void
.end method


# virtual methods
.method public and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .line 1844
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;->and(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public matches(C)Z
    .locals 0

    .line 1839
    iget-char p0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public negate()Lcom/google/common/base/CharMatcher;
    .locals 0

    .line 1861
    iget-char p0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-static {p0}, Lcom/google/common/base/CharMatcher$IsNot;->is(C)Lcom/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 0

    .line 1829
    invoke-virtual {p0}, Lcom/google/common/base/CharMatcher$IsNot;->negate()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    return-object p0
.end method

.method public or(Lcom/google/common/base/CharMatcher;)Lcom/google/common/base/CharMatcher;
    .locals 1

    .line 1849
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-virtual {p1, v0}, Lcom/google/common/base/CharMatcher;->matches(C)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/common/base/CharMatcher$IsNot;->any()Lcom/google/common/base/CharMatcher;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method setBits(Ljava/util/BitSet;)V
    .locals 2

    .line 1855
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/BitSet;->set(II)V

    .line 1856
    iget-char p0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    add-int/lit8 p0, p0, 0x1

    const/high16 v0, 0x10000

    invoke-virtual {p1, p0, v0}, Ljava/util/BitSet;->set(II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharMatcher.isNot(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p0, p0, Lcom/google/common/base/CharMatcher$IsNot;->match:C

    invoke-static {p0}, Lcom/google/common/base/CharMatcher;->access$100(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\')"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
