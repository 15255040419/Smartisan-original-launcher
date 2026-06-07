.class public final Lf/u;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/u$a;
    }
.end annotation


# instance fields
.field public final a:Lf/s;

.field public final b:Lf/q;

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lf/k;

.field public final f:Lf/l;

.field public final g:Lf/v;

.field public final h:Lf/u;

.field public final i:Lf/u;

.field public final j:Lf/u;

.field public final k:J

.field public final l:J

.field public volatile m:Lf/c;


# direct methods
.method public constructor <init>(Lf/u$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lf/u$a;->a:Lf/s;

    iput-object v0, p0, Lf/u;->a:Lf/s;

    .line 3
    iget-object v0, p1, Lf/u$a;->b:Lf/q;

    iput-object v0, p0, Lf/u;->b:Lf/q;

    .line 4
    iget v0, p1, Lf/u$a;->c:I

    iput v0, p0, Lf/u;->c:I

    .line 5
    iget-object v0, p1, Lf/u$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lf/u;->d:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lf/u$a;->e:Lf/k;

    iput-object v0, p0, Lf/u;->e:Lf/k;

    .line 7
    iget-object v0, p1, Lf/u$a;->f:Lf/l$a;

    invoke-virtual {v0}, Lf/l$a;->a()Lf/l;

    move-result-object v0

    iput-object v0, p0, Lf/u;->f:Lf/l;

    .line 8
    iget-object v0, p1, Lf/u$a;->g:Lf/v;

    iput-object v0, p0, Lf/u;->g:Lf/v;

    .line 9
    iget-object v0, p1, Lf/u$a;->h:Lf/u;

    iput-object v0, p0, Lf/u;->h:Lf/u;

    .line 10
    iget-object v0, p1, Lf/u$a;->i:Lf/u;

    iput-object v0, p0, Lf/u;->i:Lf/u;

    .line 11
    iget-object v0, p1, Lf/u$a;->j:Lf/u;

    iput-object v0, p0, Lf/u;->j:Lf/u;

    .line 12
    iget-wide v0, p1, Lf/u$a;->k:J

    iput-wide v0, p0, Lf/u;->k:J

    .line 13
    iget-wide v0, p1, Lf/u$a;->l:J

    iput-wide v0, p0, Lf/u;->l:J

    return-void
.end method


# virtual methods
.method public a()Lf/v;
    .locals 1

    .line 3
    iget-object v0, p0, Lf/u;->g:Lf/v;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lf/u;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/u;->f:Lf/l;

    invoke-virtual {v0, p1}, Lf/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public b()Lf/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/u;->m:Lf/c;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lf/u;->f:Lf/l;

    invoke-static {v0}, Lf/c;->a(Lf/l;)Lf/c;

    move-result-object v0

    iput-object v0, p0, Lf/u;->m:Lf/c;

    :goto_0
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lf/u;->c:I

    return v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/u;->g:Lf/v;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lf/v;->close()V

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Lf/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/u;->e:Lf/k;

    return-object v0
.end method

.method public e()Lf/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/u;->f:Lf/l;

    return-object v0
.end method

.method public f()Z
    .locals 2

    .line 1
    iget v0, p0, Lf/u;->c:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/u;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lf/u$a;
    .locals 1

    .line 1
    new-instance v0, Lf/u$a;

    invoke-direct {v0, p0}, Lf/u$a;-><init>(Lf/u;)V

    return-object v0
.end method

.method public i()Lf/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/u;->j:Lf/u;

    return-object v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/u;->l:J

    return-wide v0
.end method

.method public k()Lf/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/u;->a:Lf/s;

    return-object v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/u;->k:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/u;->b:Lf/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf/u;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/u;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/u;->a:Lf/s;

    .line 2
    invoke-virtual {v1}, Lf/s;->g()Lf/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
