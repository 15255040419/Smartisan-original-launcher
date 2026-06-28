.class Landroid/support/v4/app/FragmentManagerImpl$2;
.super Landroid/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;
.source "FragmentManager.java"


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    iput-object p4, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;-><init>(Landroid/view/animation/Animation$AnimationListener;Landroid/support/v4/app/FragmentManagerImpl$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimationListenerWrapper;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 2
    iget-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$container:Landroid/view/ViewGroup;

    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$2$1;

    invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$2$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl$2;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
