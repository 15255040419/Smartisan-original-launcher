.class public Lcom/android/quicksearchbox/SearchActivity$v;
.super Landroid/content/BroadcastReceiver;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "v"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/quicksearchbox/SearchActivity;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/SearchActivity$v;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "reason"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p2, "homekey"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SearchSettings;->isFirstBootQSB()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->f(Lcom/android/quicksearchbox/SearchActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->f(Lcom/android/quicksearchbox/SearchActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->a()V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->w()V

    goto :goto_0

    :cond_1
    const-string p2, "recentapps"

    .line 9
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/quicksearchbox/SearchSettings;->isFirstBootQSB()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->f(Lcom/android/quicksearchbox/SearchActivity;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-static {p1}, Lcom/android/quicksearchbox/SearchActivity;->f(Lcom/android/quicksearchbox/SearchActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->a()V

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity$v;->a:Lcom/android/quicksearchbox/SearchActivity;

    iget-object p1, p1, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->x()V

    :cond_3
    :goto_0
    return-void
.end method
