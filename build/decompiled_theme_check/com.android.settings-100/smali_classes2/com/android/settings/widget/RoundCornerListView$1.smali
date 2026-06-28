.class Lcom/android/settings/widget/RoundCornerListView$1;
.super Ljava/lang/Object;
.source "RoundCornerListView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/RoundCornerListView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/RoundCornerListView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/RoundCornerListView;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/widget/RoundCornerListView$1;->this$0:Lcom/android/settings/widget/RoundCornerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method
