.class public final Lf/p$b;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public A:I

.field public B:I

.field public a:Lf/i;

.field public b:Ljava/net/Proxy;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/q;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
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

.field public g:Lokhttp3/EventListener$Factory;

.field public h:Ljava/net/ProxySelector;

.field public i:Lokhttp3/CookieJar;

.field public j:Lf/b;

.field public k:Lokhttp3/internal/cache/InternalCache;

.field public l:Ljavax/net/SocketFactory;

.field public m:Ljavax/net/ssl/SSLSocketFactory;

.field public n:Lf/z/l/c;

.field public o:Ljavax/net/ssl/HostnameVerifier;

.field public p:Lf/d;

.field public q:Lokhttp3/Authenticator;

.field public r:Lokhttp3/Authenticator;

.field public s:Lf/f;

.field public t:Lokhttp3/Dns;

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/p$b;->e:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/p$b;->f:Ljava/util/List;

    .line 4
    new-instance v0, Lf/i;

    invoke-direct {v0}, Lf/i;-><init>()V

    iput-object v0, p0, Lf/p$b;->a:Lf/i;

    .line 5
    sget-object v0, Lf/p;->C:Ljava/util/List;

    iput-object v0, p0, Lf/p$b;->c:Ljava/util/List;

    .line 6
    sget-object v0, Lf/p;->D:Ljava/util/List;

    iput-object v0, p0, Lf/p$b;->d:Ljava/util/List;

    .line 7
    sget-object v0, Lokhttp3/EventListener;->a:Lokhttp3/EventListener;

    invoke-static {v0}, Lokhttp3/EventListener;->a(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lf/p$b;->g:Lokhttp3/EventListener$Factory;

    .line 8
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lf/p$b;->h:Ljava/net/ProxySelector;

    .line 9
    iget-object v0, p0, Lf/p$b;->h:Ljava/net/ProxySelector;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lf/z/k/a;

    invoke-direct {v0}, Lf/z/k/a;-><init>()V

    iput-object v0, p0, Lf/p$b;->h:Ljava/net/ProxySelector;

    .line 11
    :cond_0
    sget-object v0, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    iput-object v0, p0, Lf/p$b;->i:Lokhttp3/CookieJar;

    .line 12
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lf/p$b;->l:Ljavax/net/SocketFactory;

    .line 13
    sget-object v0, Lf/z/l/d;->a:Lf/z/l/d;

    iput-object v0, p0, Lf/p$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 14
    sget-object v0, Lf/d;->c:Lf/d;

    iput-object v0, p0, Lf/p$b;->p:Lf/d;

    .line 15
    sget-object v0, Lokhttp3/Authenticator;->NONE:Lokhttp3/Authenticator;

    iput-object v0, p0, Lf/p$b;->q:Lokhttp3/Authenticator;

    .line 16
    iput-object v0, p0, Lf/p$b;->r:Lokhttp3/Authenticator;

    .line 17
    new-instance v0, Lf/f;

    invoke-direct {v0}, Lf/f;-><init>()V

    iput-object v0, p0, Lf/p$b;->s:Lf/f;

    .line 18
    sget-object v0, Lokhttp3/Dns;->SYSTEM:Lokhttp3/Dns;

    iput-object v0, p0, Lf/p$b;->t:Lokhttp3/Dns;

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lf/p$b;->u:Z

    .line 20
    iput-boolean v0, p0, Lf/p$b;->v:Z

    .line 21
    iput-boolean v0, p0, Lf/p$b;->w:Z

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lf/p$b;->x:I

    const/16 v1, 0x2710

    .line 23
    iput v1, p0, Lf/p$b;->y:I

    .line 24
    iput v1, p0, Lf/p$b;->z:I

    .line 25
    iput v1, p0, Lf/p$b;->A:I

    .line 26
    iput v0, p0, Lf/p$b;->B:I

    return-void
.end method

.method public constructor <init>(Lf/p;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/p$b;->e:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf/p$b;->f:Ljava/util/List;

    .line 30
    iget-object v0, p1, Lf/p;->a:Lf/i;

    iput-object v0, p0, Lf/p$b;->a:Lf/i;

    .line 31
    iget-object v0, p1, Lf/p;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lf/p$b;->b:Ljava/net/Proxy;

    .line 32
    iget-object v0, p1, Lf/p;->c:Ljava/util/List;

    iput-object v0, p0, Lf/p$b;->c:Ljava/util/List;

    .line 33
    iget-object v0, p1, Lf/p;->d:Ljava/util/List;

    iput-object v0, p0, Lf/p$b;->d:Ljava/util/List;

    .line 34
    iget-object v0, p0, Lf/p$b;->e:Ljava/util/List;

    iget-object v1, p1, Lf/p;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lf/p$b;->f:Ljava/util/List;

    iget-object v1, p1, Lf/p;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    iget-object v0, p1, Lf/p;->g:Lokhttp3/EventListener$Factory;

    iput-object v0, p0, Lf/p$b;->g:Lokhttp3/EventListener$Factory;

    .line 37
    iget-object v0, p1, Lf/p;->h:Ljava/net/ProxySelector;

    iput-object v0, p0, Lf/p$b;->h:Ljava/net/ProxySelector;

    .line 38
    iget-object v0, p1, Lf/p;->i:Lokhttp3/CookieJar;

    iput-object v0, p0, Lf/p$b;->i:Lokhttp3/CookieJar;

    .line 39
    iget-object v0, p1, Lf/p;->k:Lokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lf/p$b;->k:Lokhttp3/internal/cache/InternalCache;

    .line 40
    iget-object v0, p1, Lf/p;->j:Lf/b;

    iput-object v0, p0, Lf/p$b;->j:Lf/b;

    .line 41
    iget-object v0, p1, Lf/p;->l:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lf/p$b;->l:Ljavax/net/SocketFactory;

    .line 42
    iget-object v0, p1, Lf/p;->m:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lf/p$b;->m:Ljavax/net/ssl/SSLSocketFactory;

    .line 43
    iget-object v0, p1, Lf/p;->n:Lf/z/l/c;

    iput-object v0, p0, Lf/p$b;->n:Lf/z/l/c;

    .line 44
    iget-object v0, p1, Lf/p;->o:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lf/p$b;->o:Ljavax/net/ssl/HostnameVerifier;

    .line 45
    iget-object v0, p1, Lf/p;->p:Lf/d;

    iput-object v0, p0, Lf/p$b;->p:Lf/d;

    .line 46
    iget-object v0, p1, Lf/p;->q:Lokhttp3/Authenticator;

    iput-object v0, p0, Lf/p$b;->q:Lokhttp3/Authenticator;

    .line 47
    iget-object v0, p1, Lf/p;->r:Lokhttp3/Authenticator;

    iput-object v0, p0, Lf/p$b;->r:Lokhttp3/Authenticator;

    .line 48
    iget-object v0, p1, Lf/p;->s:Lf/f;

    iput-object v0, p0, Lf/p$b;->s:Lf/f;

    .line 49
    iget-object v0, p1, Lf/p;->t:Lokhttp3/Dns;

    iput-object v0, p0, Lf/p$b;->t:Lokhttp3/Dns;

    .line 50
    iget-boolean v0, p1, Lf/p;->u:Z

    iput-boolean v0, p0, Lf/p$b;->u:Z

    .line 51
    iget-boolean v0, p1, Lf/p;->v:Z

    iput-boolean v0, p0, Lf/p$b;->v:Z

    .line 52
    iget-boolean v0, p1, Lf/p;->w:Z

    iput-boolean v0, p0, Lf/p$b;->w:Z

    .line 53
    iget v0, p1, Lf/p;->x:I

    iput v0, p0, Lf/p$b;->x:I

    .line 54
    iget v0, p1, Lf/p;->y:I

    iput v0, p0, Lf/p$b;->y:I

    .line 55
    iget v0, p1, Lf/p;->z:I

    iput v0, p0, Lf/p$b;->z:I

    .line 56
    iget v0, p1, Lf/p;->A:I

    iput v0, p0, Lf/p$b;->A:I

    .line 57
    iget p1, p1, Lf/p;->B:I

    iput p1, p0, Lf/p$b;->B:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lf/p$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/q;",
            ">;)",
            "Lf/p$b;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object p1, Lf/q;->f:Lf/q;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lf/q;->c:Lf/q;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Lf/q;->f:Lf/q;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-gt p1, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_3
    :goto_1
    sget-object p1, Lf/q;->b:Lf/q;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 9
    sget-object p1, Lf/q;->d:Lf/q;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lf/p$b;->c:Ljava/util/List;

    return-object p0

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "protocols must not contain null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lokhttp3/EventListener;)Lf/p$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 13
    invoke-static {p1}, Lokhttp3/EventListener;->a(Lokhttp3/EventListener;)Lokhttp3/EventListener$Factory;

    move-result-object p1

    iput-object p1, p0, Lf/p$b;->g:Lokhttp3/EventListener$Factory;

    return-object p0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "eventListener == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Lf/p;
    .locals 1

    .line 15
    new-instance v0, Lf/p;

    invoke-direct {v0, p0}, Lf/p;-><init>(Lf/p$b;)V

    return-object v0
.end method
