.class public final Lf/z/g/g;
.super Lf/v;
.source "RealResponseBody.java"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLokio/BufferedSource;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/v;-><init>()V

    .line 2
    iput-object p1, p0, Lf/z/g/g;->b:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lf/z/g/g;->c:J

    .line 4
    iput-object p4, p0, Lf/z/g/g;->d:Lokio/BufferedSource;

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/z/g/g;->c:J

    return-wide v0
.end method

.method public d()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/g/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lf/n;->b(Ljava/lang/String;)Lf/n;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public e()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/z/g/g;->d:Lokio/BufferedSource;

    return-object v0
.end method
