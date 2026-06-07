.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$g;
.super Ljava/lang/Object;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$g;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Z)V

    :cond_0
    return-void
.end method
