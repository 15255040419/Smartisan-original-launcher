.class public abstract Lcom/google/common/base/Splitter$b;
.super Lb/c/a/a/b;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/c/a/a/b<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/CharSequence;

.field public final d:Lb/c/a/a/d;

.field public final e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lb/c/a/a/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/base/Splitter$b;->f:I

    .line 3
    invoke-static {p1}, Lcom/google/common/base/Splitter;->a(Lcom/google/common/base/Splitter;)Lb/c/a/a/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/base/Splitter$b;->d:Lb/c/a/a/d;

    .line 4
    invoke-static {p1}, Lcom/google/common/base/Splitter;->b(Lcom/google/common/base/Splitter;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/common/base/Splitter$b;->e:Z

    .line 5
    invoke-static {p1}, Lcom/google/common/base/Splitter;->c(Lcom/google/common/base/Splitter;)I

    move-result p1

    iput p1, p0, Lcom/google/common/base/Splitter$b;->g:I

    .line 6
    iput-object p2, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/base/Splitter$b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 6

    .line 2
    iget v0, p0, Lcom/google/common/base/Splitter$b;->f:I

    .line 3
    :cond_0
    :goto_0
    iget v1, p0, Lcom/google/common/base/Splitter$b;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$b;->b(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 5
    iget-object v1, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 6
    iput v2, p0, Lcom/google/common/base/Splitter$b;->f:I

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/base/Splitter$b;->a(I)I

    move-result v3

    iput v3, p0, Lcom/google/common/base/Splitter$b;->f:I

    .line 8
    :goto_1
    iget v3, p0, Lcom/google/common/base/Splitter$b;->f:I

    if-ne v3, v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 9
    iput v3, p0, Lcom/google/common/base/Splitter$b;->f:I

    .line 10
    iget v1, p0, Lcom/google/common/base/Splitter$b;->f:I

    iget-object v3, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v1, v3, :cond_0

    .line 11
    iput v2, p0, Lcom/google/common/base/Splitter$b;->f:I

    goto :goto_0

    :cond_2
    :goto_2
    if-ge v0, v1, :cond_3

    .line 12
    iget-object v3, p0, Lcom/google/common/base/Splitter$b;->d:Lb/c/a/a/d;

    iget-object v4, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    invoke-interface {v4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lb/c/a/a/d;->a(C)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    if-le v1, v0, :cond_4

    .line 13
    iget-object v3, p0, Lcom/google/common/base/Splitter$b;->d:Lb/c/a/a/d;

    iget-object v4, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lb/c/a/a/d;->a(C)Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 14
    :cond_4
    iget-boolean v3, p0, Lcom/google/common/base/Splitter$b;->e:Z

    if-eqz v3, :cond_5

    if-ne v0, v1, :cond_5

    .line 15
    iget v0, p0, Lcom/google/common/base/Splitter$b;->f:I

    goto :goto_0

    .line 16
    :cond_5
    iget v3, p0, Lcom/google/common/base/Splitter$b;->g:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 17
    iget-object v1, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 18
    iput v2, p0, Lcom/google/common/base/Splitter$b;->f:I

    :goto_4
    if-le v1, v0, :cond_7

    .line 19
    iget-object v2, p0, Lcom/google/common/base/Splitter$b;->d:Lb/c/a/a/d;

    iget-object v3, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Lb/c/a/a/d;->a(C)Z

    move-result v2

    if-eqz v2, :cond_7

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    sub-int/2addr v3, v4

    .line 20
    iput v3, p0, Lcom/google/common/base/Splitter$b;->g:I

    .line 21
    :cond_7
    iget-object v2, p0, Lcom/google/common/base/Splitter$b;->c:Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 22
    :cond_8
    invoke-virtual {p0}, Lb/c/a/a/b;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public abstract b(I)I
.end method
