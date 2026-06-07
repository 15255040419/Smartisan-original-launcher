.class public final Lf/z/i/f$i;
.super Lf/z/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/z/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "i"
.end annotation


# instance fields
.field public final b:Z

.field public final c:I

.field public final d:I

.field public final synthetic e:Lf/z/i/f;


# direct methods
.method public constructor <init>(Lf/z/i/f;ZII)V
    .locals 2

    .line 1
    iput-object p1, p0, Lf/z/i/f$i;->e:Lf/z/i/f;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    iget-object p1, p1, Lf/z/i/f;->d:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s ping %08x%08x"

    invoke-direct {p0, p1, v0}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-boolean p2, p0, Lf/z/i/f$i;->b:Z

    .line 4
    iput p3, p0, Lf/z/i/f$i;->c:I

    .line 5
    iput p4, p0, Lf/z/i/f$i;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf/z/i/f$i;->e:Lf/z/i/f;

    iget-boolean v1, p0, Lf/z/i/f$i;->b:Z

    iget v2, p0, Lf/z/i/f$i;->c:I

    iget v3, p0, Lf/z/i/f$i;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lf/z/i/f;->a(ZII)V

    return-void
.end method
