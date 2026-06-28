.class Landroid/support/design/widget/f;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/design/widget/f;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/design/widget/f;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->v(I)V

    const/4 p0, 0x1

    return p0
.end method
