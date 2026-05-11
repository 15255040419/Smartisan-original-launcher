.class Landroid/support/v7/widget/FastScroller$1;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/FastScroller;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/FastScroller;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/FastScroller$1;->this$0:Landroid/support/v7/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/support/v7/widget/FastScroller$1;->this$0:Landroid/support/v7/widget/FastScroller;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/FastScroller;->hide(I)V

    return-void
.end method
