.class Lcom/google/common/io/MultiReader;
.super Ljava/io/Reader;
.source "MultiReader.java"


# instance fields
.field private current:Ljava/io/Reader;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Lcom/google/common/io/CharSource;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    .line 37
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    return-void
.end method

.method private advance()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lcom/google/common/io/MultiReader;->close()V

    .line 43
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/io/CharSource;

    invoke-virtual {v0}, Lcom/google/common/io/CharSource;->openStream()Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iput-object v1, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public read([CII)I
    .locals 2
    .param p1    # [C
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/MultiReader;->read([CII)I

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public ready()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/Reader;->ready()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "n is negative"

    .line 63
    invoke-static {v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-lez v2, :cond_2

    .line 65
    :goto_1
    iget-object v2, p0, Lcom/google/common/io/MultiReader;->current:Ljava/io/Reader;

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v2, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    return-wide v2

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/google/common/io/MultiReader;->advance()V

    goto :goto_1

    :cond_2
    return-wide v0
.end method
