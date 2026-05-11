.class Landroid/support/v7/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActionBarContextView;

.field final synthetic val$mode:Landroid/support/v7/view/ActionMode;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/ActionBarContextView$1;->this$0:Landroid/support/v7/widget/ActionBarContextView;

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarContextView$1;->val$mode:Landroid/support/v7/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarContextView$1;->val$mode:Landroid/support/v7/view/ActionMode;

    invoke-virtual {p0}, Landroid/support/v7/view/ActionMode;->finish()V

    return-void
.end method
