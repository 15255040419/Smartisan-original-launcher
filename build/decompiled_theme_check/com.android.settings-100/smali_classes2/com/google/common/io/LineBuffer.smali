.class abstract Lcom/google/common/io/LineBuffer;
.super Ljava/lang/Object;
.source "LineBuffer.java"


# instance fields
.field private line:Ljava/lang/StringBuilder;

.field private sawReturn:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    return-void
.end method

.method private finishLine(Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "\r\n"

    goto :goto_0

    :cond_0
    const-string v0, "\r"

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "\n"

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 89
    :goto_0
    iget-object v1, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/common/io/LineBuffer;->handleLine(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    return p1
.end method


# virtual methods
.method protected add([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-lez p3, :cond_1

    .line 53
    aget-char v0, p1, p2

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p2, 0x1

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    add-int/2addr p2, p3

    move p3, v0

    :goto_2
    if-ge v0, p2, :cond_6

    .line 60
    aget-char v4, p1, v0

    if-eq v4, v2, :cond_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_2

    goto :goto_5

    .line 62
    :cond_2
    iget-object v4, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v5, v0, p3

    invoke-virtual {v4, p1, p3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 63
    iput-boolean v3, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    add-int/lit8 p3, v0, 0x1

    if-ge p3, p2, :cond_5

    .line 65
    aget-char v4, p1, p3

    if-ne v4, v2, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    invoke-direct {p0, v4}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, p3

    goto :goto_4

    .line 73
    :cond_4
    iget-object v4, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int v5, v0, p3

    invoke-virtual {v4, p1, p3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p0, v3}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    :cond_5
    :goto_4
    add-int/lit8 p3, v0, 0x1

    :goto_5
    add-int/2addr v0, v3

    goto :goto_2

    .line 82
    :cond_6
    iget-object p0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    sub-int/2addr p2, p3

    invoke-virtual {p0, p1, p3, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-boolean v0, p0, Lcom/google/common/io/LineBuffer;->sawReturn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/LineBuffer;->line:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Lcom/google/common/io/LineBuffer;->finishLine(Z)Z

    :cond_1
    return-void
.end method

.method protected abstract handleLine(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
