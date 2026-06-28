.class Landroidx/fragment/app/FragmentManagerImpl$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FragmentManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/fragment/app/FragmentManagerImpl;

.field final synthetic val$animatingView:Landroid/view/View;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 1177
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->this$0:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$animatingView:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1180
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$animatingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1181
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1182
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_0

    .line 1183
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl$5;->val$fragment:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
