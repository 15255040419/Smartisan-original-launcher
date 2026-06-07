.class public Lh/l$a;
.super Lf/t;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lf/t;

.field public final b:Lf/n;


# direct methods
.method public constructor <init>(Lf/t;Lf/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/t;-><init>()V

    .line 2
    iput-object p1, p0, Lh/l$a;->a:Lf/t;

    .line 3
    iput-object p2, p0, Lh/l$a;->b:Lf/n;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Lh/l$a;->a:Lf/t;

    invoke-virtual {v0}, Lf/t;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Lokio/BufferedSink;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lh/l$a;->a:Lf/t;

    invoke-virtual {v0, p1}, Lf/t;->a(Lokio/BufferedSink;)V

    return-void
.end method

.method public b()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/l$a;->b:Lf/n;

    return-object v0
.end method
