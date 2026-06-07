.class public Lf/z/f/c$a;
.super Lf/z/m/a$g;
.source "RealConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/f/c;->a(Lf/z/f/g;)Lf/z/m/a$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lf/z/f/g;


# direct methods
.method public constructor <init>(Lf/z/f/c;ZLokio/BufferedSource;Lokio/BufferedSink;Lf/z/f/g;)V
    .locals 0

    .line 1
    iput-object p5, p0, Lf/z/f/c$a;->d:Lf/z/f/g;

    invoke-direct {p0, p2, p3, p4}, Lf/z/m/a$g;-><init>(ZLokio/BufferedSource;Lokio/BufferedSink;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/z/f/c$a;->d:Lf/z/f/g;

    invoke-virtual {v0}, Lf/z/f/g;->b()Lokhttp3/internal/http/HttpCodec;

    move-result-object v2

    const/4 v1, 0x1

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lf/z/f/g;->a(ZLokhttp3/internal/http/HttpCodec;JLjava/io/IOException;)V

    return-void
.end method
