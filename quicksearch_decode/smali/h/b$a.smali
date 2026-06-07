.class public final Lh/b$a;
.super Ljava/lang/Object;
.source "CompletableFutureCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter<",
        "TR;",
        "Ljava/util/concurrent/CompletableFuture<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/b$a;->a:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lh/b$a;->adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method

.method public adapt(Lretrofit2/Call;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TR;>;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "TR;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lh/b$a$a;

    invoke-direct {v0, p0, p1}, Lh/b$a$a;-><init>(Lh/b$a;Lretrofit2/Call;)V

    .line 3
    new-instance v1, Lh/b$a$b;

    invoke-direct {v1, p0, v0}, Lh/b$a$b;-><init>(Lh/b$a;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p1, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-object v0
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/b$a;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method
