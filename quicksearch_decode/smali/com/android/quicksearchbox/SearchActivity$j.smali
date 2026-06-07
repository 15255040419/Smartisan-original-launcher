.class public Lcom/android/quicksearchbox/SearchActivity$j;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/WindowManager;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Landroid/view/WindowManager;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$j;->c:Lcom/android/quicksearchbox/SearchActivity;

    iput-object p2, p0, Lcom/android/quicksearchbox/SearchActivity$j;->a:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/android/quicksearchbox/SearchActivity$j;->b:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$j;->c:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/SearchSettings;->updateFirstBootQSBStatus(Z)V

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$j;->a:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$j;->c:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->f(Lcom/android/quicksearchbox/SearchActivity;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 3
    invoke-static {}, Lsmartisanos/api/ViewSmt;->getInstance()Lsmartisanos/api/ViewSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$j;->c:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v0, v0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity$j;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lsmartisanos/api/ViewSmt;->removeZoomStatusChangeListener(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
