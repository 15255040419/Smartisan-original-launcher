.class public Lf/z/i/f$j$b;
.super Lf/z/b;
.source "Http2Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/z/i/f$j;->settings(ZLf/z/i/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lf/z/i/f$j;


# direct methods
.method public varargs constructor <init>(Lf/z/i/f$j;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/z/i/f$j$b;->b:Lf/z/i/f$j;

    invoke-direct {p0, p2, p3}, Lf/z/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/z/i/f$j$b;->b:Lf/z/i/f$j;

    iget-object v0, v0, Lf/z/i/f$j;->c:Lf/z/i/f;

    iget-object v1, v0, Lf/z/i/f;->b:Lf/z/i/f$h;

    invoke-virtual {v1, v0}, Lf/z/i/f$h;->a(Lf/z/i/f;)V

    return-void
.end method
