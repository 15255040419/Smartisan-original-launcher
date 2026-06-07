.class public abstract Lb/c/b/m;
.super Ljava/lang/Object;
.source "TypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lb/c/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lb/c/b/e;"
        }
    .end annotation

    .line 2
    :try_start_0
    new-instance v0, Lb/c/b/o/m/f;

    invoke-direct {v0}, Lb/c/b/o/m/f;-><init>()V

    .line 3
    invoke-virtual {p0, v0, p1}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0}, Lb/c/b/o/m/f;->n()Lb/c/b/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Lb/c/b/f;

    invoke-direct {v0, p1}, Lb/c/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a()Lb/c/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lb/c/b/m$a;

    invoke-direct {v0, p0}, Lb/c/b/m$a;-><init>(Lb/c/b/m;)V

    return-object v0
.end method

.method public abstract a(Lb/c/b/q/a;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/a;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract a(Lb/c/b/q/c;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/q/c;",
            "TT;)V"
        }
    .end annotation
.end method
