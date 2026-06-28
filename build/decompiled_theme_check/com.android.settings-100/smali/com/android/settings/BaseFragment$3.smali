.class Lcom/android/settings/BaseFragment$3;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BaseFragment;->setupTitleView(Landroid/view/View;)V
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

    .line 316
    iput-object p1, p0, Lcom/android/settings/BaseFragment$3;->this$0:Lcom/android/settings/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 319
    iget-object v0, p0, Lcom/android/settings/BaseFragment$3;->this$0:Lcom/android/settings/BaseFragment;

    invoke-static {v0}, Lme/yokeyword/fragmentation/SupportHelper;->getPreFragment(Landroid/app/Fragment;)Lme/yokeyword/fragmentation/ISupportFragment;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/android/settings/BaseFragment$3;->this$0:Lcom/android/settings/BaseFragment;

    iget-object v1, v1, Lcom/android/settings/BaseFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: preFragment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 322
    iget-object v1, p0, Lcom/android/settings/BaseFragment$3;->this$0:Lcom/android/settings/BaseFragment;

    invoke-virtual {v1}, Lcom/android/settings/BaseFragment;->replacePreFragment()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BaseFragment$3;->this$0:Lcom/android/settings/BaseFragment;

    invoke-virtual {v1}, Lcom/android/settings/BaseFragment;->finish()V

    if-nez v0, :cond_1

    .line 327
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    iget-boolean p1, p1, Landroid/view/ViewRootImpl;->isInSmartisanStack:Z

    if-eqz p1, :cond_1

    .line 328
    iget-object p0, p0, Lcom/android/settings/BaseFragment$3;->this$0:Lcom/android/settings/BaseFragment;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/BaseFragment;->mFinishing:Z

    :cond_1
    return-void
.end method
