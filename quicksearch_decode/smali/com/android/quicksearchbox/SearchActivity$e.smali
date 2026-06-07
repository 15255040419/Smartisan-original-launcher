.class public Lcom/android/quicksearchbox/SearchActivity$e;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/SearchActivity;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$e;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$e;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v0, v0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$e;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity$e;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, v1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.SearchActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
