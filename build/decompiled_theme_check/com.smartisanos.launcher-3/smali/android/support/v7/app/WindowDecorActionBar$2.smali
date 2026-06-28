.class Landroid/support/v7/app/WindowDecorActionBar$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/WindowDecorActionBar;


# direct methods
.method constructor <init>(Landroid/support/v7/app/WindowDecorActionBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/app/WindowDecorActionBar$2;->this$0:Landroid/support/v7/app/WindowDecorActionBar;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/app/WindowDecorActionBar;->mCurrentShowAnim:Landroid/support/v7/view/ViewPropertyAnimatorCompatSet;

    .line 2
    iget-object p0, p0, Landroid/support/v7/app/WindowDecorActionBar;->mContainerView:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
