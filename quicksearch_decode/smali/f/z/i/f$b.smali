.class public Lf/z/i/f$b;
.super Lf/z/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/i/f;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:J

.field public final synthetic d:Lf/z/i/f;


# direct methods
.method public varargs constructor <init>(Lf/z/i/f;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/f$b;->d:Lf/z/i/f;

    iput p4, p0, Lf/z/i/f$b;->b:I

    iput-wide p5, p0, Lf/z/i/f$b;->c:J

    invoke-direct {p0, p2, p3}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/z/i/f$b;->d:Lf/z/i/f;

    iget-object v0, v0, Lf/z/i/f;->r:Lf/z/i/h;

    iget v1, p0, Lf/z/i/f$b;->b:I

    iget-wide v2, p0, Lf/z/i/f$b;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lf/z/i/h;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lf/z/i/f$b;->d:Lf/z/i/f;

    invoke-static {v0}, Lf/z/i/f;->a(Lf/z/i/f;)V

    :goto_0
    return-void
.end method
