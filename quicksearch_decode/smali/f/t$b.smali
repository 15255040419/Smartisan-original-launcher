.class public Lf/t$b;
.super Lf/t;
.source "RequestBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/t;->a(Lf/n;[BII)Lf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/n;

.field public final synthetic b:I

.field public final synthetic c:[B

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lf/n;I[BI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/t$b;->a:Lf/n;

    iput p2, p0, Lf/t$b;->b:I

    iput-object p3, p0, Lf/t$b;->c:[B

    iput p4, p0, Lf/t$b;->d:I

    invoke-direct {p0}, Lf/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget v0, p0, Lf/t$b;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lf/t$b;->c:[B

    iget v1, p0, Lf/t$b;->d:I

    iget v2, p0, Lf/t$b;->b:I

    invoke-interface {p1, v0, v1, v2}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    return-void
.end method

.method public b()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t$b;->a:Lf/n;

    return-object v0
.end method
