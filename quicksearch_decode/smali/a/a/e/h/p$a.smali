.class public La/a/e/h/p$a;
.super Ljava/lang/Object;
.source "StandardMenuPopup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/e/h/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/e/h/p;


# direct methods
.method public constructor <init>(La/a/e/h/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/e/h/p$a;->a:La/a/e/h/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, La/a/e/h/p$a;->a:La/a/e/h/p;

    invoke-virtual {v0}, La/a/e/h/p;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, La/a/e/h/p$a;->a:La/a/e/h/p;

    iget-object v0, v0, La/a/e/h/p;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->i()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, La/a/e/h/p$a;->a:La/a/e/h/p;

    iget-object v0, v0, La/a/e/h/p;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, La/a/e/h/p$a;->a:La/a/e/h/p;

    iget-object v0, v0, La/a/e/h/p;->i:Landroidx/appcompat/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, La/a/e/h/p$a;->a:La/a/e/h/p;

    invoke-virtual {v0}, La/a/e/h/p;->dismiss()V

    :cond_2
    :goto_1
    return-void
.end method
