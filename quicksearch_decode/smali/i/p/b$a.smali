.class public Li/p/b$a;
.super Ljava/lang/Object;
.source "MenuDialogListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/p/b;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lsmartisan/widget/ShadowButton;

.field public final synthetic c:Li/p/b;


# direct methods
.method public constructor <init>(Li/p/b;ILsmartisan/widget/ShadowButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/p/b$a;->c:Li/p/b;

    iput p2, p0, Li/p/b$a;->a:I

    iput-object p3, p0, Li/p/b$a;->b:Lsmartisan/widget/ShadowButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Li/p/b$a;->c:Li/p/b;

    invoke-static {p1}, Li/p/b;->a(Li/p/b;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Li/p/b$a;->c:Li/p/b;

    invoke-static {p1}, Li/p/b;->a(Li/p/b;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_0
    iget-object p1, p0, Li/p/b$a;->c:Li/p/b;

    invoke-static {p1}, Li/p/b;->b(Li/p/b;)Li/q/a/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Li/p/b$a;->c:Li/p/b;

    invoke-static {p1}, Li/p/b;->b(Li/p/b;)Li/q/a/a;

    move-result-object p1

    invoke-virtual {p1}, Li/q/a/a;->a()V

    .line 5
    :cond_1
    iget-object p1, p0, Li/p/b$a;->c:Li/p/b;

    invoke-static {p1}, Li/p/b;->c(Li/p/b;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Li/p/b$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View$OnClickListener;

    iget-object v0, p0, Li/p/b$a;->b:Lsmartisan/widget/ShadowButton;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
