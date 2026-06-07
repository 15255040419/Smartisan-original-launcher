.class public final Lh/n;
.super Ljava/lang/Object;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lf/u;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf/u;Ljava/lang/Object;Lf/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/u;",
            "TT;",
            "Lf/v;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/n;->a:Lf/u;

    .line 3
    iput-object p2, p0, Lh/n;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lf/v;Lf/u;)Lh/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf/v;",
            "Lf/u;",
            ")",
            "Lh/n<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "body == null"

    .line 5
    invoke-static {p0, v0}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "rawResponse == null"

    .line 6
    invoke-static {p1, v0}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lf/u;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lh/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lh/n;-><init>(Lf/u;Ljava/lang/Object;Lf/v;)V

    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse should not be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Lf/u;)Lh/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lf/u;",
            ")",
            "Lh/n<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "rawResponse == null"

    .line 1
    invoke-static {p1, v0}, Lh/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lf/u;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lh/n;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lh/n;-><init>(Lf/u;Ljava/lang/Object;Lf/v;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rawResponse must be successful response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lh/n;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lh/n;->a:Lf/u;

    invoke-virtual {v0}, Lf/u;->c()I

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lh/n;->a:Lf/u;

    invoke-virtual {v0}, Lf/u;->f()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/n;->a:Lf/u;

    invoke-virtual {v0}, Lf/u;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/n;->a:Lf/u;

    invoke-virtual {v0}, Lf/u;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
