.class public Lf/p;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lokhttp3/Call$Factory;
.implements Lokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf/p$b;
    }
.end annotation


# static fields
.field public static final C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/q;",
            ">;"
        }
    .end annotation
.end field

.field public static final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:I

.field public final B:I

.field public final a:Lf/i;

.field public final b:Ljava/net/Proxy;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/q;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lokhttp3/EventListener$Factory;

.field public final h:Ljava/net/ProxySelector;

.field public final i:Lokhttp3/CookieJar;

.field public final j:Lf/b;

.field public final k:Lokhttp3/internal/cache/InternalCache;

.field public final l:Ljavax/net/SocketFactory;

.field public final m:Ljavax/net/ssl/SSLSocketFactory;

.field public final n:Lf/z/l/c;

.field public final o:Ljavax/net/ssl/HostnameVerifier;

.field public final p:Lf/d;

.field public final q:Lokhttp3/Authenticator;

.field public final r:Lokhttp3/Authenticator;

.field public final s:Lf/f;

.field public final t:Lokhttp3/Dns;

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lf/q;

    .line 1
    sget-object v2, Lf/q;->e:Lf/q;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lf/q;->c:Lf/q;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lf/z/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lf/p;->C:Ljava/util/List;

    new-array v0, v0, [Lf/g;

    .line 2
    sget-object v1, Lf/g;->g:Lf/g;

    aput-object v1, v0, v3

    sget-object v1, Lf/g;->h:Lf/g;

    aput-object v1, v0, v4

    invoke-static {v0}, Lf/z/c;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lf/p;->D:Ljava/util/List;

    .line 3
    new-instance v0, Lf/p$a;

    invoke-direct {v0}, Lf/p$a;-><init>()V

    sput-object v0, Lf/z/a;->a:Lf/z/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lf/p$b;

    invoke-direct {v0}, Lf/p$b;-><init>()V

    invoke-direct {p0, v0}, Lf/p;-><init>(Lf/p$b;)V

    return-void
.end method

.method public constructor <init>(Lf/p$b;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lf/p$b;->a:Lf/i;

    iput-object v0, p0, Lf/p;->a:Lf/i;

    .line 4
    iget-object v0, p1, Lf/p$b;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lf/p;->b:Ljava/net/Proxy;

    .line 5
    iget-object v0, p1, Lf/p$b;->c:Ljava/util/List;

    iput-object v0, p0, Lf/p;->c:Ljava/util/List;

    .line 6
    iget-object v0, p1, Lf/p$b;->d:Ljava/util/List;

    iput-object v0, p0, Lf/p;->d:Ljava/util/List;

    .line 7
    iget-object v0, p1, Lf/p$b;->e:Ljava/util/List;

    invoke-static {v0}, Lf/z/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/p;->e:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lf/p$b;->f:Ljava/util/List;

    invoke-static {v0}, Lf/z/c;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf/p;->f:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lf/p$b;->g:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lf/p;->g:Lokhttp3/EventListener$Factory;

    .line 10
    iget-object v0, p1, Lf/p$b;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lf/p;->h:Ljava/net/ProxySelector;

    .line 11
    iget-object v0, p1, Lf/p$b;->i:Lokhttp3/CookieJar;

    iput-object v0, p0, Lf/p;->i:Lokhttp3/CookieJar;

    .line 12
    iget-object v0, p1, Lf/p$b;->j:Lf/b;

    iput-object v0, p0, Lf/p;->j:Lf/b;

    .line 13
    iget-object v0, p1, Lf/p$b;->k:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lf/p;->k:Lokhttp3/internal/cache/InternalCache;

    .line 14
    iget-object v0, p1, Lf/p$b;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lf/p;->l:Ljavax/net/SocketFactory;

    .line 15
    iget-object v0, p0, Lf/p;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/g;

    if-nez v2, :cond_1

    .line 16
    invoke-virtual {v3}, Lf/g;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 17
    :cond_2
    iget-object v0, p1, Lf/p$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 18
    :cond_3
    invoke-static {}, Lf/z/c;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lf/p;->a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lf/p;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 20
    invoke-static {v0}, Lf/z/l/c;->a(Ljavax/net/ssl/X509TrustManager;)Lf/z/l/c;

    move-result-object v0

    iput-object v0, p0, Lf/p;->n:Lf/z/l/c;

    goto :goto_2

    .line 21
    :cond_4
    :goto_1
    iget-object v0, p1, Lf/p$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lf/p;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 22
    iget-object v0, p1, Lf/p$b;->n:Lf/z/l/c;

    iput-object v0, p0, Lf/p;->n:Lf/z/l/c;

    .line 23
    :goto_2
    iget-object v0, p0, Lf/p;->m:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 24
    invoke-static {}, Lf/z/j/f;->c()Lf/z/j/f;

    move-result-object v0

    iget-object v1, p0, Lf/p;->m:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lf/z/j/f;->a(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 25
    :cond_5
    iget-object v0, p1, Lf/p$b;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lf/p;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 26
    iget-object v0, p1, Lf/p$b;->p:Lf/d;

    iget-object v1, p0, Lf/p;->n:Lf/z/l/c;

    invoke-virtual {v0, v1}, Lf/d;->a(Lf/z/l/c;)Lf/d;

    move-result-object v0

    iput-object v0, p0, Lf/p;->p:Lf/d;

    .line 27
    iget-object v0, p1, Lf/p$b;->q:Lokhttp3/Authenticator;

    iput-object v0, p0, Lf/p;->q:Lokhttp3/Authenticator;

    .line 28
    iget-object v0, p1, Lf/p$b;->r:Lokhttp3/Authenticator;

    iput-object v0, p0, Lf/p;->r:Lokhttp3/Authenticator;

    .line 29
    iget-object v0, p1, Lf/p$b;->s:Lf/f;

    iput-object v0, p0, Lf/p;->s:Lf/f;

    .line 30
    iget-object v0, p1, Lf/p$b;->t:Lokhttp3/Dns;

    iput-object v0, p0, Lf/p;->t:Lokhttp3/Dns;

    .line 31
    iget-boolean v0, p1, Lf/p$b;->u:Z

    iput-boolean v0, p0, Lf/p;->u:Z

    .line 32
    iget-boolean v0, p1, Lf/p$b;->v:Z

    iput-boolean v0, p0, Lf/p;->v:Z

    .line 33
    iget-boolean v0, p1, Lf/p$b;->w:Z

    iput-boolean v0, p0, Lf/p;->w:Z

    .line 34
    iget v0, p1, Lf/p$b;->x:I

    iput v0, p0, Lf/p;->x:I

    .line 35
    iget v0, p1, Lf/p$b;->y:I

    iput v0, p0, Lf/p;->y:I

    .line 36
    iget v0, p1, Lf/p$b;->z:I

    iput v0, p0, Lf/p;->z:I

    .line 37
    iget v0, p1, Lf/p$b;->A:I

    iput v0, p0, Lf/p;->A:I

    .line 38
    iget p1, p1, Lf/p$b;->B:I

    iput p1, p0, Lf/p;->B:I

    .line 39
    iget-object p1, p0, Lf/p;->e:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 40
    iget-object p1, p0, Lf/p;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 41
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null network interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/p;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null interceptor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/p;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lf/z/j/f;->c()Lf/z/j/f;

    move-result-object v0

    invoke-virtual {v0}, Lf/z/j/f;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 2
    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    .line 4
    invoke-static {v0, p0}, Lf/z/c;->a(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lf/p;->A:I

    return v0
.end method

.method public a()Lokhttp3/Authenticator;
    .locals 1

    .line 5
    iget-object v0, p0, Lf/p;->r:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lf/p;->x:I

    return v0
.end method

.method public c()Lf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->p:Lf/d;

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lf/p;->y:I

    return v0
.end method

.method public e()Lf/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->s:Lf/f;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/p;->d:Ljava/util/List;

    return-object v0
.end method

.method public g()Lokhttp3/CookieJar;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->i:Lokhttp3/CookieJar;

    return-object v0
.end method

.method public h()Lf/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->a:Lf/i;

    return-object v0
.end method

.method public i()Lokhttp3/Dns;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->t:Lokhttp3/Dns;

    return-object v0
.end method

.method public j()Lokhttp3/EventListener$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->g:Lokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/p;->v:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/p;->u:Z

    return v0
.end method

.method public m()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->o:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/p;->e:Ljava/util/List;

    return-object v0
.end method

.method public newCall(Lf/s;)Lokhttp3/Call;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lf/r;->a(Lf/p;Lf/s;Z)Lf/r;

    move-result-object p1

    return-object p1
.end method

.method public newWebSocket(Lf/s;Lf/y;)Lokhttp3/WebSocket;
    .locals 7

    .line 1
    new-instance v6, Lf/z/m/a;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lf/p;->B:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lf/z/m/a;-><init>(Lf/s;Lf/y;Ljava/util/Random;J)V

    .line 2
    invoke-virtual {v6, p0}, Lf/z/m/a;->a(Lf/p;)V

    return-object v6
.end method

.method public o()Lokhttp3/internal/cache/InternalCache;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->j:Lf/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf/b;->a:Lokhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lf/p;->k:Lokhttp3/internal/cache/InternalCache;

    :goto_0
    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/p;->f:Ljava/util/List;

    return-object v0
.end method

.method public q()Lf/p$b;
    .locals 1

    .line 1
    new-instance v0, Lf/p$b;

    invoke-direct {v0, p0}, Lf/p$b;-><init>(Lf/p;)V

    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lf/p;->B:I

    return v0
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lf/q;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/p;->c:Ljava/util/List;

    return-object v0
.end method

.method public t()Ljava/net/Proxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public u()Lokhttp3/Authenticator;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->q:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public v()Ljava/net/ProxySelector;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->h:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget v0, p0, Lf/p;->z:I

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lf/p;->w:Z

    return v0
.end method

.method public y()Ljavax/net/SocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->l:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public z()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/p;->m:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method
