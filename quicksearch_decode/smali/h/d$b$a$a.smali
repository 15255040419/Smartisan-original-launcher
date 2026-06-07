.class public Lh/d$b$a$a;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/d$b$a;->onResponse(Lretrofit2/Call;Lh/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lh/n;

.field public final synthetic b:Lh/d$b$a;


# direct methods
.method public constructor <init>(Lh/d$b$a;Lh/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh/d$b$a$a;->b:Lh/d$b$a;

    iput-object p2, p0, Lh/d$b$a$a;->a:Lh/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lh/d$b$a$a;->b:Lh/d$b$a;

    iget-object v0, v0, Lh/d$b$a;->b:Lh/d$b;

    iget-object v0, v0, Lh/d$b;->b:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lh/d$b$a$a;->b:Lh/d$b$a;

    iget-object v1, v0, Lh/d$b$a;->a:Lretrofit2/Callback;

    iget-object v0, v0, Lh/d$b$a;->b:Lh/d$b;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh/d$b$a$a;->b:Lh/d$b$a;

    iget-object v1, v0, Lh/d$b$a;->a:Lretrofit2/Callback;

    iget-object v0, v0, Lh/d$b$a;->b:Lh/d$b;

    iget-object v2, p0, Lh/d$b$a$a;->a:Lh/n;

    invoke-interface {v1, v0, v2}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lh/n;)V

    :goto_0
    return-void
.end method
