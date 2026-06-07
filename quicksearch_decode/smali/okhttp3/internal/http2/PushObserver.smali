.class public interface abstract Lokhttp3/internal/http2/PushObserver;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final CANCEL:Lokhttp3/internal/http2/PushObserver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lokhttp3/internal/http2/PushObserver$a;

    invoke-direct {v0}, Lokhttp3/internal/http2/PushObserver$a;-><init>()V

    sput-object v0, Lokhttp3/internal/http2/PushObserver;->CANCEL:Lokhttp3/internal/http2/PushObserver;

    return-void
.end method


# virtual methods
.method public abstract onData(ILokio/BufferedSource;IZ)Z
.end method

.method public abstract onHeaders(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract onRequest(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract onReset(ILf/z/i/b;)V
.end method
