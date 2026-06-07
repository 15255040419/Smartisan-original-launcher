.class public Lcom/android/quicksearchbox/SearchActivity$t;
.super Landroid/database/DataSetObserver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "t"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$t;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$t;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$t;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->d(Lcom/android/quicksearchbox/SearchActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$t;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object v1, v0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->b(I)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity$t;->a:Lcom/android/quicksearchbox/SearchActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->c(Z)V

    return-void
.end method
