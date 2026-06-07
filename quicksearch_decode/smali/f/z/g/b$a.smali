.class public final Lf/z/g/b$a;
.super Lg/e;
.source "CallServerInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:J


# direct methods
.method public constructor <init>(Lokio/Sink;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg/e;-><init>(Lokio/Sink;)V

    return-void
.end method


# virtual methods
.method public write(Lg/c;J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lg/e;->write(Lg/c;J)V

    .line 2
    iget-wide v0, p0, Lf/z/g/b$a;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lf/z/g/b$a;->b:J

    return-void
.end method
