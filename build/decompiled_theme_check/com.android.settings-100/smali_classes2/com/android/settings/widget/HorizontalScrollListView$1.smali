.class Lcom/android/settings/widget/HorizontalScrollListView$1;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/HorizontalScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/HorizontalScrollListView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/HorizontalScrollListView;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/widget/HorizontalScrollListView$1;->this$0:Lcom/android/settings/widget/HorizontalScrollListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    .line 202
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method
