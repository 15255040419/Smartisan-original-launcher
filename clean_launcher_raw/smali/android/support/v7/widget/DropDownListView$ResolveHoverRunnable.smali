.class Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "DropDownListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/DropDownListView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/DropDownListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/support/v7/widget/DropDownListView;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/DropDownListView;->access$102(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;)Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public post()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/DropDownListView;->access$102(Landroid/support/v7/widget/DropDownListView;Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;)Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 2
    iget-object p0, p0, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroid/support/v7/widget/DropDownListView;

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    return-void
.end method
