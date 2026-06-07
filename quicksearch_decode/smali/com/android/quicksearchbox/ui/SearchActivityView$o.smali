.class public Lcom/android/quicksearchbox/ui/SearchActivityView$o;
.super Landroid/os/AsyncTask;
.source "SearchActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/ui/SearchActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
        ">;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/android/quicksearchbox/ui/SearchActivityView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$o;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$o;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SearchActivityView;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lb/a/a/c1/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$o;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lcom/android/quicksearchbox/ui/SearchActivityView;Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView$o;->a:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$o;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/android/quicksearchbox/network/QsbHttpManager;->c()Lcom/android/quicksearchbox/network/QsbHttpManager;

    move-result-object p1

    invoke-static {}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->c()Lcom/android/quicksearchbox/QsbApplicationWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/network/QsbHttpManager;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$o;->a(Ljava/util/List;)V

    return-void
.end method
