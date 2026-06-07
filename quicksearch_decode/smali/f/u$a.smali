.class public Lf/u$a;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lf/s;

.field public b:Lf/q;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lf/k;

.field public f:Lf/l$a;

.field public g:Lf/v;

.field public h:Lf/u;

.field public i:Lf/u;

.field public j:Lf/u;

.field public k:J

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lf/u$a;->c:I

    .line 3
    new-instance v0, Lf/l$a;

    invoke-direct {v0}, Lf/l$a;-><init>()V

    iput-object v0, p0, Lf/u$a;->f:Lf/l$a;

    return-void
.end method

.method public constructor <init>(Lf/u;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lf/u$a;->c:I

    .line 6
    iget-object v0, p1, Lf/u;->a:Lf/s;

    iput-object v0, p0, Lf/u$a;->a:Lf/s;

    .line 7
    iget-object v0, p1, Lf/u;->b:Lf/q;

    iput-object v0, p0, Lf/u$a;->b:Lf/q;

    .line 8
    iget v0, p1, Lf/u;->c:I

    iput v0, p0, Lf/u$a;->c:I

    .line 9
    iget-object v0, p1, Lf/u;->d:Ljava/lang/String;

    iput-object v0, p0, Lf/u$a;->d:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lf/u;->e:Lf/k;

    iput-object v0, p0, Lf/u$a;->e:Lf/k;

    .line 11
    iget-object v0, p1, Lf/u;->f:Lf/l;

    invoke-virtual {v0}, Lf/l;->a()Lf/l$a;

    move-result-object v0

    iput-object v0, p0, Lf/u$a;->f:Lf/l$a;

    .line 12
    iget-object v0, p1, Lf/u;->g:Lf/v;

    iput-object v0, p0, Lf/u$a;->g:Lf/v;

    .line 13
    iget-object v0, p1, Lf/u;->h:Lf/u;

    iput-object v0, p0, Lf/u$a;->h:Lf/u;

    .line 14
    iget-object v0, p1, Lf/u;->i:Lf/u;

    iput-object v0, p0, Lf/u$a;->i:Lf/u;

    .line 15
    iget-object v0, p1, Lf/u;->j:Lf/u;

    iput-object v0, p0, Lf/u$a;->j:Lf/u;

    .line 16
    iget-wide v0, p1, Lf/u;->k:J

    iput-wide v0, p0, Lf/u$a;->k:J

    .line 17
    iget-wide v0, p1, Lf/u;->l:J

    iput-wide v0, p0, Lf/u$a;->l:J

    return-void
.end method


# virtual methods
.method public a(I)Lf/u$a;
    .locals 0

    .line 3
    iput p1, p0, Lf/u$a;->c:I

    return-object p0
.end method

.method public a(J)Lf/u$a;
    .locals 0

    .line 19
    iput-wide p1, p0, Lf/u$a;->l:J

    return-object p0
.end method

.method public a(Lf/k;)Lf/u$a;
    .locals 0

    .line 5
    iput-object p1, p0, Lf/u$a;->e:Lf/k;

    return-object p0
.end method

.method public a(Lf/l;)Lf/u$a;
    .locals 0

    .line 7
    invoke-virtual {p1}, Lf/l;->a()Lf/l$a;

    move-result-object p1

    iput-object p1, p0, Lf/u$a;->f:Lf/l$a;

    return-object p0
.end method

.method public a(Lf/q;)Lf/u$a;
    .locals 0

    .line 2
    iput-object p1, p0, Lf/u$a;->b:Lf/q;

    return-object p0
.end method

.method public a(Lf/s;)Lf/u$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lf/u$a;->a:Lf/s;

    return-object p0
.end method

.method public a(Lf/u;)Lf/u$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    .line 9
    invoke-virtual {p0, v0, p1}, Lf/u$a;->a(Ljava/lang/String;Lf/u;)V

    .line 10
    :cond_0
    iput-object p1, p0, Lf/u$a;->i:Lf/u;

    return-object p0
.end method

.method public a(Lf/v;)Lf/u$a;
    .locals 0

    .line 8
    iput-object p1, p0, Lf/u$a;->g:Lf/v;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lf/u$a;
    .locals 0

    .line 4
    iput-object p1, p0, Lf/u$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lf/u$a;
    .locals 1

    .line 6
    iget-object v0, p0, Lf/u$a;->f:Lf/l$a;

    invoke-virtual {v0, p1, p2}, Lf/l$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/l$a;

    return-object p0
.end method

.method public a()Lf/u;
    .locals 3

    .line 20
    iget-object v0, p0, Lf/u$a;->a:Lf/s;

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lf/u$a;->b:Lf/q;

    if-eqz v0, :cond_2

    .line 22
    iget v0, p0, Lf/u$a;->c:I

    if-ltz v0, :cond_1

    .line 23
    iget-object v0, p0, Lf/u$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lf/u;

    invoke-direct {v0, p0}, Lf/u;-><init>(Lf/u$a;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf/u$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Lf/u;)V
    .locals 1

    .line 11
    iget-object v0, p2, Lf/u;->g:Lf/v;

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p2, Lf/u;->h:Lf/u;

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p2, Lf/u;->i:Lf/u;

    if-nez v0, :cond_1

    .line 14
    iget-object p2, p2, Lf/u;->j:Lf/u;

    if-nez p2, :cond_0

    return-void

    .line 15
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 16
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 17
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 18
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(J)Lf/u$a;
    .locals 0

    .line 4
    iput-wide p1, p0, Lf/u$a;->k:J

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lf/u$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/u$a;->f:Lf/l$a;

    invoke-virtual {v0, p1, p2}, Lf/l$a;->c(Ljava/lang/String;Ljava/lang/String;)Lf/l$a;

    return-object p0
.end method

.method public final b(Lf/u;)V
    .locals 1

    .line 2
    iget-object p1, p1, Lf/u;->g:Lf/v;

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lf/u;)Lf/u$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    .line 1
    invoke-virtual {p0, v0, p1}, Lf/u$a;->a(Ljava/lang/String;Lf/u;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lf/u$a;->h:Lf/u;

    return-object p0
.end method

.method public d(Lf/u;)Lf/u$a;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lf/u$a;->b(Lf/u;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lf/u$a;->j:Lf/u;

    return-object p0
.end method
