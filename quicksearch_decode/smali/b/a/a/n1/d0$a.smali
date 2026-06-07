.class public Lb/a/a/n1/d0$a;
.super Ljava/lang/Object;
.source "SidebarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/d0;->a(Landroid/view/View;Lb/a/a/m1/c;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:I

.field public final synthetic f:Z

.field public final synthetic g:Lb/a/a/n1/d0;


# direct methods
.method public constructor <init>(Lb/a/a/n1/d0;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/d0$a;->g:Lb/a/a/n1/d0;

    iput-object p2, p0, Lb/a/a/n1/d0$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lb/a/a/n1/d0$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lb/a/a/n1/d0$a;->c:Ljava/lang/String;

    iput-object p5, p0, Lb/a/a/n1/d0$a;->d:Landroid/view/View;

    iput p6, p0, Lb/a/a/n1/d0$a;->e:I

    iput-boolean p7, p0, Lb/a/a/n1/d0$a;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/n1/d0$a;->g:Lb/a/a/n1/d0;

    iget-object v1, p0, Lb/a/a/n1/d0$a;->a:Landroid/content/Context;

    invoke-static {}, Lb/a/a/n1/d0;->a()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lb/a/a/n1/d0$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lb/a/a/n1/d0$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lb/a/a/n1/d0;->a(Lb/a/a/n1/d0;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lb/a/a/n1/d0$c;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lb/a/a/n1/d0$a;->d:Landroid/view/View;

    new-instance v2, Lb/a/a/n1/d0$a$a;

    invoke-direct {v2, p0, v0}, Lb/a/a/n1/d0$a$a;-><init>(Lb/a/a/n1/d0$a;Lb/a/a/n1/d0$c;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
