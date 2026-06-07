.class public Lh/h$a;
.super Ljava/lang/Object;
.source "OkHttpCall.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h;->enqueue(Lretrofit2/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lretrofit2/Callback;

.field public final synthetic b:Lh/h;


# direct methods
.method public constructor <init>(Lh/h;Lretrofit2/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh/h$a;->b:Lh/h;

    iput-object p2, p0, Lh/h$a;->a:Lretrofit2/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lh/h$a;->a:Lretrofit2/Callback;

    iget-object v1, p0, Lh/h$a;->b:Lh/h;

    invoke-interface {v0, v1, p1}, Lretrofit2/Callback;->onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lh/h$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lf/u;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lh/h$a;->b:Lh/h;

    invoke-virtual {p1, p2}, Lh/h;->a(Lf/u;)Lh/n;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-object p2, p0, Lh/h$a;->a:Lretrofit2/Callback;

    iget-object v0, p0, Lh/h$a;->b:Lh/h;

    invoke-interface {p2, v0, p1}, Lretrofit2/Callback;->onResponse(Lretrofit2/Call;Lh/n;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 4
    invoke-static {p1}, Lh/q;->a(Ljava/lang/Throwable;)V

    .line 5
    invoke-virtual {p0, p1}, Lh/h$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
