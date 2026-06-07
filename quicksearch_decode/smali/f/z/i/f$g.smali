.class public Lf/z/i/f$g;
.super Ljava/lang/Object;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:Ljava/net/Socket;

.field public b:Ljava/lang/String;

.field public c:Lokio/BufferedSource;

.field public d:Lokio/BufferedSink;

.field public e:Lf/z/i/f$h;

.field public f:Lokhttp3/internal/http2/PushObserver;

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lf/z/i/f$h;->a:Lf/z/i/f$h;

    iput-object v0, p0, Lf/z/i/f$g;->e:Lf/z/i/f$h;

    .line 3
    sget-object v0, Lokhttp3/internal/http2/PushObserver;->CANCEL:Lokhttp3/internal/http2/PushObserver;

    iput-object v0, p0, Lf/z/i/f$g;->f:Lokhttp3/internal/http2/PushObserver;

    .line 4
    iput-boolean p1, p0, Lf/z/i/f$g;->g:Z

    return-void
.end method


# virtual methods
.method public a(I)Lf/z/i/f$g;
    .locals 0

    .line 6
    iput p1, p0, Lf/z/i/f$g;->h:I

    return-object p0
.end method

.method public a(Lf/z/i/f$h;)Lf/z/i/f$g;
    .locals 0

    .line 5
    iput-object p1, p0, Lf/z/i/f$g;->e:Lf/z/i/f$h;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lokio/BufferedSource;Lokio/BufferedSink;)Lf/z/i/f$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/f$g;->a:Ljava/net/Socket;

    .line 2
    iput-object p2, p0, Lf/z/i/f$g;->b:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lf/z/i/f$g;->c:Lokio/BufferedSource;

    .line 4
    iput-object p4, p0, Lf/z/i/f$g;->d:Lokio/BufferedSink;

    return-object p0
.end method

.method public a()Lf/z/i/f;
    .locals 1

    .line 7
    new-instance v0, Lf/z/i/f;

    invoke-direct {v0, p0}, Lf/z/i/f;-><init>(Lf/z/i/f$g;)V

    return-object v0
.end method
