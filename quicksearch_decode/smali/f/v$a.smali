.class public Lf/v$a;
.super Lf/v;
.source "ResponseBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v;->a(Lf/n;JLokio/BufferedSource;)Lf/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lf/n;

.field public final synthetic c:J

.field public final synthetic d:Lokio/BufferedSource;


# direct methods
.method public constructor <init>(Lf/n;JLokio/BufferedSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/v$a;->b:Lf/n;

    iput-wide p2, p0, Lf/v$a;->c:J

    iput-object p4, p0, Lf/v$a;->d:Lokio/BufferedSource;

    invoke-direct {p0}, Lf/v;-><init>()V

    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lf/v$a;->c:J

    return-wide v0
.end method

.method public d()Lf/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v$a;->b:Lf/n;

    return-object v0
.end method

.method public e()Lokio/BufferedSource;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/v$a;->d:Lokio/BufferedSource;

    return-object v0
.end method
