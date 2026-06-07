.class public Lg/g;
.super Lg/q;
.source "ForwardingTimeout.java"


# instance fields
.field public e:Lg/q;


# direct methods
.method public constructor <init>(Lg/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lg/q;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lg/g;->e:Lg/q;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lg/q;)Lg/g;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lg/g;->e:Lg/q;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "delegate == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lg/q;
    .locals 1

    .line 5
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0}, Lg/q;->a()Lg/q;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lg/q;
    .locals 1

    .line 4
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0, p1, p2}, Lg/q;->a(J)Lg/q;

    move-result-object p1

    return-object p1
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lg/q;
    .locals 1

    .line 3
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0, p1, p2, p3}, Lg/q;->a(JLjava/util/concurrent/TimeUnit;)Lg/q;

    move-result-object p1

    return-object p1
.end method

.method public b()Lg/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0}, Lg/q;->b()Lg/q;

    move-result-object v0

    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0}, Lg/q;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0}, Lg/q;->d()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0}, Lg/q;->e()V

    return-void
.end method

.method public f()J
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g;->e:Lg/q;

    invoke-virtual {v0}, Lg/q;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g()Lg/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g;->e:Lg/q;

    return-object v0
.end method
