.class public Lcom/android/quicksearchbox/SearchActivity$m;
.super Landroid/content/BroadcastReceiver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
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
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$m;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "smartisanos.android.intent.action.MENU_UP"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$m;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->g(Lcom/android/quicksearchbox/SearchActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$m;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->h(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$m;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->h(Lcom/android/quicksearchbox/SearchActivity;)V

    :cond_0
    return-void
.end method
