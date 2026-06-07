.class public Lb/a/a/n1/d0$b;
.super Ljava/lang/Object;
.source "SidebarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;Landroid/net/Uri;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/net/Uri;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:I

.field public final synthetic e:Z

.field public final synthetic f:Lb/a/a/n1/d0;


# direct methods
.method public constructor <init>(Lb/a/a/n1/d0;Landroid/content/Context;Landroid/net/Uri;Landroid/view/View;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/d0$b;->f:Lb/a/a/n1/d0;

    iput-object p2, p0, Lb/a/a/n1/d0$b;->a:Landroid/content/Context;

    iput-object p3, p0, Lb/a/a/n1/d0$b;->b:Landroid/net/Uri;

    iput-object p4, p0, Lb/a/a/n1/d0$b;->c:Landroid/view/View;

    iput p5, p0, Lb/a/a/n1/d0$b;->d:I

    iput-boolean p6, p0, Lb/a/a/n1/d0$b;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/a/n1/d0$b;->f:Lb/a/a/n1/d0;

    iget-object v1, p0, Lb/a/a/n1/d0$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lb/a/a/n1/d0$b;->b:Landroid/net/Uri;

    invoke-static {v0, v1, v2}, Lb/a/a/n1/d0;->a(Lb/a/a/n1/d0;Landroid/content/Context;Landroid/net/Uri;)Lb/a/a/n1/d0$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lb/a/a/n1/d0$b;->c:Landroid/view/View;

    new-instance v2, Lb/a/a/n1/d0$b$a;

    invoke-direct {v2, p0, v0}, Lb/a/a/n1/d0$b$a;-><init>(Lb/a/a/n1/d0$b;Lb/a/a/n1/d0$c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
