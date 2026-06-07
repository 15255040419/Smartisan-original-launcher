.class public Lb/a/a/h1/b;
.super Ljava/lang/Object;
.source "MusicState.java"


# instance fields
.field public a:Z

.field public b:J

.field public c:J

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lb/a/a/h1/b;->c:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lb/a/a/h1/b;->c:J

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lb/a/a/h1/b;->a:Z

    return-void
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/h1/b;->d:J

    return-wide v0
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lb/a/a/h1/b;->d:J

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lb/a/a/h1/b;->b:J

    return-wide v0
.end method

.method public c(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lb/a/a/h1/b;->b:J

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lb/a/a/h1/b;->a:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/a/a/h1/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", audioId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/a/h1/b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", albumId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/a/h1/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", artistId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/a/h1/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
