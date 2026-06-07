.class public Lh/d$b$a;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/d$b;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lretrofit2/Callback;

.field public final synthetic b:Lh/d$b;


# direct methods
.method public constructor <init>(Lh/d$b;Lretrofit2/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh/d$b$a;->b:Lh/d$b;

    iput-object p2, p0, Lh/d$b$a;->a:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lh/d$b$a;->b:Lh/d$b;

    iget-object p1, p1, Lh/d$b;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lh/d$b$a$b;

    invoke-direct {v0, p0, p2}, Lh/d$b$a$b;-><init>(Lh/d$b$a;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lh/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lh/n<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lh/d$b$a;->b:Lh/d$b;

    iget-object p1, p1, Lh/d$b;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lh/d$b$a$a;

    invoke-direct {v0, p0, p2}, Lh/d$b$a$a;-><init>(Lh/d$b$a;Lh/n;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
