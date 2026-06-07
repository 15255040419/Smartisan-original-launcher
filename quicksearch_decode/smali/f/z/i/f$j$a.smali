.class public Lf/z/i/f$j$a;
.super Lf/z/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/i/f$j;->headers(ZIILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lf/z/i/g;

.field public final synthetic c:Lf/z/i/f$j;


# direct methods
.method public varargs constructor <init>(Lf/z/i/f$j;Ljava/lang/String;[Ljava/lang/Object;Lf/z/i/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/f$j$a;->c:Lf/z/i/f$j;

    iput-object p4, p0, Lf/z/i/f$j$a;->b:Lf/z/i/g;

    invoke-direct {p0, p2, p3}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/z/i/f$j$a;->c:Lf/z/i/f$j;

    iget-object v0, v0, Lf/z/i/f$j;->c:Lf/z/i/f;

    iget-object v0, v0, Lf/z/i/f;->b:Lf/z/i/f$h;

    iget-object v1, p0, Lf/z/i/f$j$a;->b:Lf/z/i/g;

    invoke-virtual {v0, v1}, Lf/z/i/f$h;->a(Lf/z/i/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Lf/z/j/f;->c()Lf/z/j/f;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Http2Connection.Listener failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf/z/i/f$j$a;->c:Lf/z/i/f$j;

    iget-object v4, v4, Lf/z/i/f$j;->c:Lf/z/i/f;

    iget-object v4, v4, Lf/z/i/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lf/z/j/f;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :try_start_1
    iget-object v0, p0, Lf/z/i/f$j$a;->b:Lf/z/i/g;

    sget-object v1, Lf/z/i/b;->c:Lf/z/i/b;

    invoke-virtual {v0, v1}, Lf/z/i/g;->a(Lf/z/i/b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method
