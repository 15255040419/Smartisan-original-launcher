.class public Lb/a/a/n1/d0$b$a;
.super Ljava/lang/Object;
.source "SidebarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/n1/d0$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/a/n1/d0$c;

.field public final synthetic b:Lb/a/a/n1/d0$b;


# direct methods
.method public constructor <init>(Lb/a/a/n1/d0$b;Lb/a/a/n1/d0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/a/n1/d0$b$a;->b:Lb/a/a/n1/d0$b;

    iput-object p2, p0, Lb/a/a/n1/d0$b$a;->a:Lb/a/a/n1/d0$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lb/a/a/n1/d0$b$a;->b:Lb/a/a/n1/d0$b;

    iget-object v1, v0, Lb/a/a/n1/d0$b;->f:Lb/a/a/n1/d0;

    iget-object v2, v0, Lb/a/a/n1/d0$b;->c:Landroid/view/View;

    iget-object v3, p0, Lb/a/a/n1/d0$b$a;->a:Lb/a/a/n1/d0$c;

    iget v4, v0, Lb/a/a/n1/d0$b;->d:I

    iget-boolean v0, v0, Lb/a/a/n1/d0$b;->e:Z

    invoke-static {v1, v2, v3, v4, v0}, Lb/a/a/n1/d0;->a(Lb/a/a/n1/d0;Landroid/view/View;Lb/a/a/n1/d0$c;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/a/n1/d0$b$a;->b:Lb/a/a/n1/d0$b;

    iget-object v0, v0, Lb/a/a/n1/d0$b;->a:Landroid/content/Context;

    const v1, 0x7f1001b4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
