.class public Lf/z/i/f$j$c;
.super Lf/z/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/i/f$j;->a(Lf/z/i/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lf/z/i/j;

.field public final synthetic c:Lf/z/i/f$j;


# direct methods
.method public varargs constructor <init>(Lf/z/i/f$j;Ljava/lang/String;[Ljava/lang/Object;Lf/z/i/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/f$j$c;->c:Lf/z/i/f$j;

    iput-object p4, p0, Lf/z/i/f$j$c;->b:Lf/z/i/j;

    invoke-direct {p0, p2, p3}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lf/z/i/f$j$c;->c:Lf/z/i/f$j;

    iget-object v0, v0, Lf/z/i/f$j;->c:Lf/z/i/f;

    iget-object v0, v0, Lf/z/i/f;->r:Lf/z/i/h;

    iget-object v1, p0, Lf/z/i/f$j$c;->b:Lf/z/i/j;

    invoke-virtual {v0, v1}, Lf/z/i/h;->a(Lf/z/i/j;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    iget-object v0, p0, Lf/z/i/f$j$c;->c:Lf/z/i/f$j;

    iget-object v0, v0, Lf/z/i/f$j;->c:Lf/z/i/f;

    invoke-static {v0}, Lf/z/i/f;->a(Lf/z/i/f;)V

    :goto_0
    return-void
.end method
