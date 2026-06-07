.class public final Lcom/android/quicksearchbox/tnt/TNTSearchActivity;
.super Lcom/android/quicksearchbox/BaseActivity;
.source "TNTSearchActivity.kt"


# instance fields
.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

.field public j:Z

.field public k:Landroid/graphics/Rect;

.field public l:Lb/a/a/l1/d;

.field public m:Landroid/os/Bundle;

.field public n:Lb/a/a/l1/b;

.field public final o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/quicksearchbox/BaseActivity;-><init>()V

    const-string v0, "TNTSearchActivity"

    .line 2
    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    const-string v0, "qsb.corpus"

    .line 3
    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->g:Ljava/lang/String;

    const-string v0, "com.smartisanos.quicksearch_ACTION_CLEAR_SUGGESTIONS"

    .line 4
    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->h:Ljava/lang/String;

    .line 5
    new-instance v0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity$mReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity$mReceiver$1;-><init>(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->o:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final a(Landroid/content/Intent;Z)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupFromIntent("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->k:Landroid/graphics/Rect;

    if-eqz v3, :cond_4

    invoke-virtual {v0, p0, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Landroid/app/Activity;Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "query"

    .line 6
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    const-string p2, "app_data"

    .line 7
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v3, "select_query"

    .line 8
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 9
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->l:Lb/a/a/l1/d;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1}, Lb/a/a/l1/d;->a(Ljava/lang/String;Z)V

    .line 10
    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->m:Landroid/os/Bundle;

    return-void

    :cond_3
    const-string p1, "mSuggestionListener"

    .line 11
    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2

    :cond_4
    const-string p1, "mWindowRect"

    .line 12
    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2

    :cond_5
    const-string p1, "mSearchActivityView"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->setCorpus(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "mSearchActivityView"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->l:Lb/a/a/l1/d;

    const-string v1, "mSuggestionListener"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lb/a/a/l1/d;->a(Ljava/lang/String;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->h()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->x()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRefresher;->reset()V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->l:Lb/a/a/l1/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lb/a/a/l1/d;->b(Z)V

    return-void

    :cond_0
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2

    .line 4
    :cond_1
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public final g()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->m:Landroid/os/Bundle;

    return-object v0
.end method

.method public final h()Lb/a/a/b0;
    .locals 2

    .line 1
    invoke-static {p0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    const-string v1, "QsbApplication.get(this)"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final i()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mSearchActivityView"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p3, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x7e0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const-string p1, "extra_SearchResultItem"

    .line 1
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lsmartisanos/app/settings/search/SearchResultItem;

    const/4 p2, 0x1

    .line 2
    invoke-static {p2}, Lsmartisanos/app/settings/search/SettingsEnabler;->setConfirm(Z)V

    .line 3
    invoke-static {p0, p1}, Lsmartisanos/app/settings/search/SettingsEnabler;->trigger(Landroid/content/Context;Lsmartisanos/app/settings/search/SearchResultItem;)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->l:Lb/a/a/l1/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lb/a/a/l1/d;->l()V

    :goto_0
    return-void

    :cond_2
    const-string p1, "mSuggestionListener"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a()V

    .line 2
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    const-string p1, "mSearchActivityView"

    .line 3
    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "activityWindow"

    .line 5
    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v2, "window"

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v3, 0x1

    .line 7
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v4, 0x11

    .line 9
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 11
    new-instance p1, Lb/a/a/l1/b;

    invoke-direct {p1, p0}, Lb/a/a/l1/b;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    .line 12
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b00aa

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_f

    check-cast p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    .line 13
    invoke-static {}, Lsmartisanos/api/TextViewSmt;->getInstance()Lsmartisanos/api/TextViewSmt;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    const-string v6, "mSearchActivityView"

    if-eqz v0, :cond_e

    sget v7, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {v0, v7}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {p1, v0, v7}, Lsmartisanos/api/TextViewSmt;->setHiddenContextMenuItem(Landroid/widget/TextView;I)V

    .line 14
    invoke-static {p0, v5}, Lb/a/a/n1/h0;->b(Landroid/app/Activity;Landroid/app/ActivityOptions;)Landroid/graphics/Rect;

    move-result-object p1

    const-string v0, "Util.getTNTWindowRect(this, null)"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->k:Landroid/graphics/Rect;

    .line 15
    new-instance p1, Lb/a/a/l1/d;

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_d

    if-eqz v0, :cond_c

    invoke-direct {p1, p0, v0, v0}, Lb/a/a/l1/d;-><init>(Lcom/android/quicksearchbox/tnt/TNTSearchActivity;Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Lcom/android/quicksearchbox/tnt/QueryFinishListener;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->l:Lb/a/a/l1/d;

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_a

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 19
    invoke-virtual {p1, v4}, Landroid/view/Window;->setGravity(I)V

    .line 20
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 21
    invoke-static {p1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060298

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 23
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060296

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 24
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f060297

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    neg-int v2, v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 25
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x7f1101d0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 26
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 27
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1

    const v0, 0x40200

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 28
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x7e4

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 29
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->a(Landroid/content/Intent;Z)V

    .line 31
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j()V

    .line 32
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->j()V

    return-void

    .line 33
    :cond_3
    invoke-static {v6}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v5

    .line 34
    :cond_4
    invoke-static {}, Ld/q/c/d;->a()V

    throw v5

    .line 35
    :cond_5
    invoke-static {}, Ld/q/c/d;->a()V

    throw v5

    .line 36
    :cond_6
    invoke-static {}, Ld/q/c/d;->a()V

    throw v5

    .line 37
    :cond_7
    invoke-static {}, Ld/q/c/d;->a()V

    throw v5

    .line 38
    :cond_8
    invoke-static {}, Ld/q/c/d;->a()V

    throw v5

    .line 39
    :cond_9
    invoke-static {}, Ld/q/c/d;->a()V

    throw v5

    .line 40
    :cond_a
    invoke-static {v6}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v5

    :cond_b
    invoke-static {}, Ld/q/c/d;->a()V

    throw v5

    .line 41
    :cond_c
    invoke-static {v6}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v5

    :cond_d
    invoke-static {v6}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v5

    .line 42
    :cond_e
    invoke-static {v6}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v5

    .line 43
    :cond_f
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type com.android.quicksearchbox.tnt.view.TNTSearchActivityView"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-nez v0, :cond_1

    .line 3
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onDestroy()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lb/a/a/l1/b;->a()V

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->k()V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->l:Lb/a/a/l1/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lb/a/a/l1/d;->k()V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c()V

    .line 8
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 9
    invoke-static {v0}, Lsmartisanos/app/settings/search/SettingsEnabler;->setConfirm(Z)V

    .line 10
    iput-object v1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->n:Lb/a/a/l1/b;

    return-void

    :cond_2
    const-string v0, "mSearchActivityView"

    .line 11
    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string v0, "mSuggestionListener"

    .line 12
    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_4
    invoke-static {}, Ld/q/c/d;->a()V

    throw v1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-static {p1}, Lb/a/a/n1/h0;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->a(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->d()V

    return-void

    :cond_1
    const-string v0, "mSearchActivityView"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onResume()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3
    invoke-static {}, Lsmartisanos/util/LaunchPadUtils;->isLaunchPadVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-static {v1, v0}, Lsmartisanos/util/LaunchPadUtils;->setLaunchPadVisible(ZZ)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->h()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->x()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRefresher;->reset()V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->l:Lb/a/a/l1/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lb/a/a/l1/d;->c(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->e()V

    return-void

    :cond_2
    const-string v0, "mSearchActivityView"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string v0, "mSuggestionListener"

    .line 8
    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->f()V

    return-void

    :cond_1
    const-string v0, "mSearchActivityView"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->i:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->g()V

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lsmartisanos/app/settings/search/SettingsEnabler;->setConfirm(Z)V

    .line 4
    iget-boolean v1, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->j:Z

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->f()V

    goto :goto_0

    .line 7
    :cond_1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->j:Z

    .line 8
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onStop()V

    return-void

    :cond_3
    const-string v0, "mSearchActivityView"

    .line 9
    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez p2, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;->j:Z

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "startActivityForResult fail"

    .line 3
    invoke-static {p2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
