.class public final Lh/r/a/c;
.super Ljava/lang/Object;
.source "GsonResponseBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "Lf/v;",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lb/c/b/c;

.field public final b:Lb/c/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/c/b/c;Lb/c/b/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/c;",
            "Lb/c/b/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/r/a/c;->a:Lb/c/b/c;

    .line 3
    iput-object p2, p0, Lh/r/a/c;->b:Lb/c/b/m;

    return-void
.end method


# virtual methods
.method public a(Lf/v;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/v;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh/r/a/c;->a:Lb/c/b/c;

    invoke-virtual {p1}, Lf/v;->a()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/b/c;->a(Ljava/io/Reader;)Lb/c/b/q/a;

    move-result-object v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lh/r/a/c;->b:Lb/c/b/m;

    invoke-virtual {v1, v0}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p1}, Lf/v;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Lf/v;->close()V

    throw v0
.end method

.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lf/v;

    invoke-virtual {p0, p1}, Lh/r/a/c;->a(Lf/v;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
