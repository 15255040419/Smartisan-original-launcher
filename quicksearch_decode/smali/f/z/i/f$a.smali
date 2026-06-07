.class public Lf/z/i/f$a;
.super Lf/z/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/i/f;->c(ILf/z/i/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf/z/i/b;

.field public final synthetic d:Lf/z/i/f;


# direct methods
.method public varargs constructor <init>(Lf/z/i/f;Ljava/lang/String;[Ljava/lang/Object;ILf/z/i/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/f$a;->d:Lf/z/i/f;

    iput p4, p0, Lf/z/i/f$a;->b:I

    iput-object p5, p0, Lf/z/i/f$a;->c:Lf/z/i/b;

    invoke-direct {p0, p2, p3}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/z/i/f$a;->d:Lf/z/i/f;

    iget v1, p0, Lf/z/i/f$a;->b:I

    iget-object v2, p0, Lf/z/i/f$a;->c:Lf/z/i/b;

    invoke-virtual {v0, v1, v2}, Lf/z/i/f;->b(ILf/z/i/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lf/z/i/f$a;->d:Lf/z/i/f;

    invoke-static {v0}, Lf/z/i/f;->a(Lf/z/i/f;)V

    :goto_0
    return-void
.end method
