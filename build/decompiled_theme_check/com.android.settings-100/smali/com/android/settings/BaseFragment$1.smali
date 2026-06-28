.class Lcom/android/settings/BaseFragment$1;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BaseFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/settings/BaseFragment$1;->this$0:Lcom/android/settings/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 118
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 119
    iget-object p2, p0, Lcom/android/settings/BaseFragment$1;->this$0:Lcom/android/settings/BaseFragment;

    iget-object p2, p2, Lcom/android/settings/BaseFragment;->_mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/android/settings/BaseFragment$1;->this$0:Lcom/android/settings/BaseFragment;

    iget-object v0, v0, Lcom/android/settings/BaseFragment;->mTitleView:Lsmartisanos/widget/TitleBar;

    iget-object v1, p0, Lcom/android/settings/BaseFragment$1;->this$0:Lcom/android/settings/BaseFragment;

    invoke-static {v1}, Lcom/android/settings/BaseFragment;->access$000(Lcom/android/settings/BaseFragment;)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/BaseFragment$1;->this$0:Lcom/android/settings/BaseFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p2, v0, v1, p0, p1}, Lcom/android/settings/BaseActivity;->setStatusBarByTinted(Landroid/content/Context;Lsmartisanos/widget/TitleBar;Landroid/view/View;Landroid/view/Window;Z)V

    return-void
.end method
