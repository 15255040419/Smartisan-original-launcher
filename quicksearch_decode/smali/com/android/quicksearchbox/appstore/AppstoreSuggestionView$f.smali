.class public Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;
.super Landroid/os/AsyncTask;
.source "AppstoreSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final synthetic b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Ljava/lang/String;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;->b:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {v0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;->a([Ljava/lang/Void;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;)V

    return-void
.end method
