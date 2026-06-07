.class public Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;
.super Landroid/database/ContentObserver;
.source "AppstoreSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quicksearchbox/SearchActivity;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lb/a/a/n1/n;->e()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quicksearchbox/SearchActivity;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    .line 5
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    if-eqz p1, :cond_3

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    new-instance v0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->c(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;

    move-result-object v1

    iget-object v1, v1, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$c;->c:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;-><init>(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->a(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$a;->a:Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;

    invoke-static {p1}, Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;->b(Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView;)Lcom/android/quicksearchbox/appstore/AppstoreSuggestionView$f;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    const-string p1, "QSB.ASV"

    const-string v0, "app store view not bound"

    .line 10
    invoke-static {p1, v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
