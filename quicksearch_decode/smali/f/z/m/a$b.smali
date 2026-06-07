.class public Lf/z/m/a$b;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/m/a;->a(Lf/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/s;

.field public final synthetic b:Lf/z/m/a;


# direct methods
.method public constructor <init>(Lf/z/m/a;Lf/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    iput-object p2, p0, Lf/z/m/a$b;->a:Lf/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lf/z/m/a;->a(Ljava/lang/Exception;Lf/u;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lf/u;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    invoke-virtual {v0, p2}, Lf/z/m/a;->a(Lf/u;)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    sget-object v0, Lf/z/a;->a:Lf/z/a;

    invoke-virtual {v0, p1}, Lf/z/a;->a(Lokhttp3/Call;)Lf/z/f/g;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lf/z/f/g;->e()V

    .line 4
    invoke-virtual {p1}, Lf/z/f/g;->c()Lf/z/f/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf/z/f/c;->a(Lf/z/f/g;)Lf/z/m/a$g;

    move-result-object v0

    .line 5
    :try_start_1
    iget-object v1, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    iget-object v1, v1, Lf/z/m/a;->b:Lf/y;

    iget-object v2, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    invoke-virtual {v1, v2, p2}, Lf/y;->a(Lokhttp3/WebSocket;Lf/u;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OkHttp WebSocket "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/z/m/a$b;->a:Lf/s;

    invoke-virtual {v1}, Lf/s;->g()Lf/m;

    move-result-object v1

    invoke-virtual {v1}, Lf/m;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    invoke-virtual {v1, p2, v0}, Lf/z/m/a;->a(Ljava/lang/String;Lf/z/m/a$g;)V

    .line 8
    invoke-virtual {p1}, Lf/z/f/g;->c()Lf/z/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lf/z/f/c;->socket()Ljava/net/Socket;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 9
    iget-object p1, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    invoke-virtual {p1}, Lf/z/m/a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lf/z/m/a;->a(Ljava/lang/Exception;Lf/u;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 11
    iget-object v0, p0, Lf/z/m/a$b;->b:Lf/z/m/a;

    invoke-virtual {v0, p1, p2}, Lf/z/m/a;->a(Ljava/lang/Exception;Lf/u;)V

    .line 12
    invoke-static {p2}, Lf/z/c;->a(Ljava/io/Closeable;)V

    return-void
.end method
