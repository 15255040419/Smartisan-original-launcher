.class public final Lh/h$b;
.super Lf/v;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final b:Lf/v;

.field public c:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Lf/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/v;-><init>()V

    .line 2
    iput-object p1, p0, Lh/h$b;->b:Lf/v;

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lh/h$b;->b:Lf/v;

    invoke-virtual {v0}, Lf/v;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/h$b;->b:Lf/v;

    invoke-virtual {v0}, Lf/v;->close()V

    return-void
.end method

.method public d()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/h$b;->b:Lf/v;

    invoke-virtual {v0}, Lf/v;->d()Lf/n;

    move-result-object v0

    return-object v0
.end method

.method public e()Lokio/BufferedSource;
    .locals 2

    .line 1
    new-instance v0, Lh/h$b$a;

    iget-object v1, p0, Lh/h$b;->b:Lf/v;

    invoke-virtual {v1}, Lf/v;->e()Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lh/h$b$a;-><init>(Lh/h$b;Lokio/Source;)V

    invoke-static {v0}, Lg/j;->a(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lh/h$b;->c:Ljava/io/IOException;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    throw v0
.end method
