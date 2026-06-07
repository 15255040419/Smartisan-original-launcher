.class public final Lf/z/f/a;
.super Ljava/lang/Object;
.source "ConnectInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field public final a:Lf/p;


# direct methods
.method public constructor <init>(Lf/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/z/f/a;->a:Lf/p;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lf/u;
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Lf/z/g/f;

    .line 2
    invoke-virtual {v0}, Lf/z/g/f;->request()Lf/s;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lf/z/g/f;->c()Lf/z/f/g;

    move-result-object v2

    .line 4
    invoke-virtual {v1}, Lf/s;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 5
    iget-object v4, p0, Lf/z/f/a;->a:Lf/p;

    invoke-virtual {v2, v4, p1, v3}, Lf/z/f/g;->a(Lf/p;Lokhttp3/Interceptor$Chain;Z)Lokhttp3/internal/http/HttpCodec;

    move-result-object p1

    .line 6
    invoke-virtual {v2}, Lf/z/f/g;->c()Lf/z/f/c;

    move-result-object v3

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Lf/z/g/f;->a(Lf/s;Lf/z/f/g;Lokhttp3/internal/http/HttpCodec;Lf/z/f/c;)Lf/u;

    move-result-object p1

    return-object p1
.end method
