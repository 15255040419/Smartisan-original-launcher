.class public Lf/t$a;
.super Lf/t;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/t;->a(Lf/n;Lg/d;)Lf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/n;

.field public final synthetic b:Lg/d;


# direct methods
.method public constructor <init>(Lf/n;Lg/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/t$a;->a:Lf/n;

    iput-object p2, p0, Lf/t$a;->b:Lg/d;

    invoke-direct {p0}, Lf/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lf/t$a;->b:Lg/d;

    invoke-virtual {v0}, Lg/d;->f()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lf/t$a;->b:Lg/d;

    invoke-interface {p1, v0}, Lokio/BufferedSink;->write(Lg/d;)Lokio/BufferedSink;

    return-void
.end method

.method public b()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t$a;->a:Lf/n;

    return-object v0
.end method
