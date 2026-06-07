.class public Lf/p$a;
.super Lf/z/a;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/z/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/u$a;)I
    .locals 0

    .line 8
    iget p1, p1, Lf/u$a;->c:I

    return p1
.end method

.method public a(Lf/f;Lf/a;Lf/z/f/g;Lf/w;)Lf/z/f/c;
    .locals 0

    .line 4
    invoke-virtual {p1, p2, p3, p4}, Lf/f;->a(Lf/a;Lf/z/f/g;Lf/w;)Lf/z/f/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lf/f;)Lf/z/f/d;
    .locals 0

    .line 7
    iget-object p1, p1, Lf/f;->e:Lf/z/f/d;

    return-object p1
.end method

.method public a(Lokhttp3/Call;)Lf/z/f/g;
    .locals 0

    .line 10
    check-cast p1, Lf/r;

    invoke-virtual {p1}, Lf/r;->d()Lf/z/f/g;

    move-result-object p1

    return-object p1
.end method

.method public a(Lokhttp3/Call;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 11
    check-cast p1, Lf/r;

    invoke-virtual {p1, p2}, Lf/r;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    return-object p1
.end method

.method public a(Lf/f;Lf/a;Lf/z/f/g;)Ljava/net/Socket;
    .locals 0

    .line 6
    invoke-virtual {p1, p2, p3}, Lf/f;->a(Lf/a;Lf/z/f/g;)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method

.method public a(Lf/p;Lf/s;)Lokhttp3/Call;
    .locals 1

    const/4 v0, 0x1

    .line 12
    invoke-static {p1, p2, v0}, Lf/r;->a(Lf/p;Lf/s;Z)Lf/r;

    move-result-object p1

    return-object p1
.end method

.method public a(Lf/g;Ljavax/net/ssl/SSLSocket;Z)V
    .locals 0

    .line 9
    invoke-virtual {p1, p2, p3}, Lf/g;->a(Ljavax/net/ssl/SSLSocket;Z)V

    return-void
.end method

.method public a(Lf/l$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lf/l$a;->a(Ljava/lang/String;)Lf/l$a;

    return-void
.end method

.method public a(Lf/l$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3}, Lf/l$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/l$a;

    return-void
.end method

.method public a(Lf/a;Lf/a;)Z
    .locals 0

    .line 5
    invoke-virtual {p1, p2}, Lf/a;->a(Lf/a;)Z

    move-result p1

    return p1
.end method

.method public a(Lf/f;Lf/z/f/c;)Z
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Lf/f;->a(Lf/z/f/c;)Z

    move-result p1

    return p1
.end method

.method public b(Lf/f;Lf/z/f/c;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lf/f;->b(Lf/z/f/c;)V

    return-void
.end method
