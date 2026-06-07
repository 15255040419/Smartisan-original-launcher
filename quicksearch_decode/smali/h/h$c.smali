.class public final Lh/h$c;
.super Lf/v;
.source "OkHttpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final b:Lf/n;

.field public final c:J


# direct methods
.method public constructor <init>(Lf/n;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/v;-><init>()V

    .line 2
    iput-object p1, p0, Lh/h$c;->b:Lf/n;

    .line 3
    iput-wide p2, p0, Lh/h$c;->c:J

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lh/h$c;->c:J

    return-wide v0
.end method

.method public d()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lh/h$c;->b:Lf/n;

    return-object v0
.end method

.method public e()Lokio/BufferedSource;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read raw response body of a converted body."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
