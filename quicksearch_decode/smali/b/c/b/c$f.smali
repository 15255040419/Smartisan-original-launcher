.class public Lb/c/b/c$f;
.super Lb/c/b/m;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb/c/b/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lb/c/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/c/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/c/b/q/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/a;",
            ")TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lb/c/b/c$f;->a:Lb/c/b/m;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lb/c/b/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/c/b/c$f;->a:Lb/c/b/m;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lb/c/b/c$f;->a:Lb/c/b/m;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/c;",
            "TT;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lb/c/b/c$f;->a:Lb/c/b/m;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1, p2}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
