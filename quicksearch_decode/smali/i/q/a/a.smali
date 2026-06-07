.class public abstract Li/q/a/a;
.super Ljava/lang/Object;
.source "SmartisanPopupWindowBase.java"


# instance fields
.field public a:Landroid/widget/PopupWindow;

.field public b:Landroid/widget/PopupWindow$OnDismissListener;


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/q/a/a;->a:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3
    iget-object v0, p0, Li/q/a/a;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object v0, p0, Li/q/a/a;->b:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/q/a/a;->b:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOnShowListener(Lsmartisan/tablet/widget/SmartisanPopupWindowInterface$OnShowListener;)V
    .locals 0

    return-void
.end method
