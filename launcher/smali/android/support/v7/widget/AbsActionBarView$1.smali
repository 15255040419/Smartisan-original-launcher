.class Landroid/support/v7/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/AbsActionBarView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AbsActionBarView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$1;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/AbsActionBarView$1;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->showOverflowMenu()Z

    return-void
.end method
