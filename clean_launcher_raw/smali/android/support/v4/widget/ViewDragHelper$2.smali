.class Landroid/support/v4/widget/ViewDragHelper$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/widget/ViewDragHelper;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ViewDragHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper$2;->this$0:Landroid/support/v4/widget/ViewDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v4/widget/ViewDragHelper$2;->this$0:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method
