.class public Lcom/android/quicksearchbox/SearchActivity;
.super Lcom/android/quicksearchbox/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;
.implements Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/SearchActivity$v;,
        Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;,
        Lcom/android/quicksearchbox/SearchActivity$t;,
        Lcom/android/quicksearchbox/SearchActivity$s;,
        Lcom/android/quicksearchbox/SearchActivity$u;
    }
.end annotation


# static fields
.field public static H:Z


# instance fields
.field public A:Landroid/content/BroadcastReceiver;

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Landroid/view/View;

.field public G:Lcom/android/quicksearchbox/SearchActivity$v;

.field public e:Landroid/widget/ImageView;

.field public f:Z

.field public g:Lb/a/a/v;

.field public h:Lb/a/a/v;

.field public i:Lb/a/a/v;

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Lcom/android/quicksearchbox/ui/SearchActivityView;

.field public n:Lcom/android/quicksearchbox/SearchActivity$t;

.field public o:Landroid/os/Bundle;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Lcom/android/quicksearchbox/util/PinObserver;

.field public final u:Landroid/os/Handler;

.field public v:Landroid/database/ContentObserver;

.field public w:Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;

.field public x:Landroid/app/AlertDialog;

.field public y:Landroid/content/BroadcastReceiver;

.field public z:Landroid/content/BroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/n1/h0;->b()Z

    move-result v0

    sput-boolean v0, Lcom/android/quicksearchbox/SearchActivity;->H:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/quicksearchbox/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->r:Z

    .line 3
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$g;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$g;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    .line 4
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$k;

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/quicksearchbox/SearchActivity$k;-><init>(Lcom/android/quicksearchbox/SearchActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->v:Landroid/database/ContentObserver;

    .line 5
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$l;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$l;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->y:Landroid/content/BroadcastReceiver;

    .line 6
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$m;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$m;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->z:Landroid/content/BroadcastReceiver;

    .line 7
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$n;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$n;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    iput-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->A:Landroid/content/BroadcastReceiver;

    .line 8
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->C:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->D:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->E:Z

    return-void
.end method

.method public static S()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static T()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "qsb.corpus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 9
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-static {}, Lcom/android/quicksearchbox/SearchActivity;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "calendar"

    const-string v1, "calendar tasks"

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->M()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V
    .locals 0

    .line 4
    invoke-virtual/range {p0 .. p5}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/SearchActivity;Z)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->d(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Ljava/util/ArrayList;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/android/quicksearchbox/SearchActivity;->b(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/SearchActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/SearchActivity;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->b(Z)V

    return-void
.end method

.method public static b(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_2

    const v0, 0x7f1000f3

    .line 67
    invoke-static {v0}, Lb/a/a/n1/g0;->a(I)V

    :cond_2
    return p0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/SearchActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    return p0
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/SearchActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->m()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->f()V

    return-void
.end method

.method public static synthetic f(Lcom/android/quicksearchbox/SearchActivity;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/SearchActivity;->F:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/quicksearchbox/SearchActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/SearchActivity;->p:Z

    return p0
.end method

.method public static synthetic h(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->O()V

    return-void
.end method

.method public static i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)",
            "Lb/a/a/w0;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestion(J)Lb/a/a/w0;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p2

    .line 4
    invoke-virtual {p0}, Lb/a/a/w0;->getPosition()I

    move-result v0

    if-nez p2, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v1

    if-ltz v0, :cond_3

    if-lt v0, v1, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p2, v0}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    return-object p0

    .line 7
    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid suggestion position "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", count = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "QSB.SearchActivity"

    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public static synthetic i(Lcom/android/quicksearchbox/SearchActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->Q()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    return v0
.end method

.method public final C()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    const-class v1, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "window-type"

    const-string v2, "window_without_caption_view"

    .line 3
    invoke-static {v0, v1, v2}, Lsmartisanos/api/IntentSmt;->putSmtExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x10200000

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    .line 6
    invoke-static {p0, v1}, Lb/a/a/n1/h0;->a(Landroid/app/Activity;Landroid/app/ActivityOptions;)Landroid/graphics/Rect;

    .line 7
    new-instance v2, Lb/a/a/a;

    invoke-direct {v2, p0, v0, v1}, Lb/a/a/a;-><init>(Lcom/android/quicksearchbox/SearchActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-static {v2}, Lsmartisanos/util/UIHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public D()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->u()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/quicksearchbox/Logger;->logVoiceSearch(Lcom/android/quicksearchbox/Corpus;)V

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->o:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpus;->createVoiceSearchIntent(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;Z)V

    return-void
.end method

.method public final E()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->h:Lb/a/a/v;

    invoke-virtual {v0}, Lb/a/a/v;->a()I

    move-result v0

    iput v0, p0, Lcom/android/quicksearchbox/SearchActivity;->j:I

    return-void
.end method

.method public final F()V
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/v;

    invoke-direct {v0}, Lb/a/a/v;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->g:Lb/a/a/v;

    .line 2
    new-instance v0, Lb/a/a/v;

    invoke-direct {v0}, Lb/a/a/v;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->h:Lb/a/a/v;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->k:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    return-void
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->t()V

    :cond_0
    return-void
.end method

.method public final H()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "smartisanos.android.intent.action.MENU_UP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.smartisanos.quicksearch_ACTION_CLEAR_SUGGESTIONS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4
    new-instance v0, Lcom/android/quicksearchbox/SearchActivity$v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/SearchActivity$v;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$g;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->G:Lcom/android/quicksearchbox/SearchActivity$v;

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->G:Lcom/android/quicksearchbox/SearchActivity$v;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final J()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public K()Lcom/android/quicksearchbox/ui/SearchActivityView;
    .locals 1

    const v0, 0x7f0b0084

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f080125

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f0801b7

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SearchActivityView;

    return-object v0
.end method

.method public L()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lb/c/a/a/d;->c()Lb/c/a/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lb/c/a/a/d;->b(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://search?q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v0, "com.smartisanos.appstore"

    .line 4
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 5
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "QSB.SearchActivity"

    const-string v2, "Error"

    .line 7
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final M()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->y()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->h(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->H()V

    .line 4
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->q:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->J()V

    :cond_1
    return-void
.end method

.method public N()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.quicksearchbox.action.QSB_AND_SELECT_CORPUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final O()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "mMenuUpReceiver is not regist."

    .line 2
    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->y:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->G:Lcom/android/quicksearchbox/SearchActivity$v;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final Q()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "mScreenReceiver is not regist."

    .line 2
    invoke-static {v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$e;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$e;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(II)V
    .locals 0

    if-eq p1, p2, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->i()V

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->b(I)V

    return-void
.end method

.method public final a(J)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 102
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public synthetic a(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 2

    .line 7
    :try_start_0
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMainActivity intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " Exception e:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Intent;Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, -0x1

    .line 38
    :try_start_0
    invoke-static {p0, p1, p2}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Landroid/content/Intent;I)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSB.SearchActivity"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "corpus"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "query"

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public final a(Lb/a/a/y0;)V
    .locals 8

    .line 104
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->k:Z

    .line 106
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->g:Lb/a/a/v;

    invoke-virtual {v0}, Lb/a/a/v;->a()I

    move-result v4

    .line 108
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    iget v3, p0, Lcom/android/quicksearchbox/SearchActivity;->j:I

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->l()Lcom/android/quicksearchbox/Corpus;

    move-result-object v6

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lb/a/a/y0;->f()Ljava/util/List;

    move-result-object p1

    :goto_0
    move-object v7, p1

    .line 110
    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logStart(IILjava/lang/String;Lcom/android/quicksearchbox/Corpus;Ljava/util/List;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/b0;->E()V

    :cond_1
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V
    .locals 1

    .line 27
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.WEB_SEARCH"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "query"

    .line 28
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, 0x1

    const-string v0, "smartisan_search"

    .line 29
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "create_new_tab"

    .line 30
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.android.browser.SOURCE_PACKAGE_NAME"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.android.browser.SOURCE_POSITION"

    const-string v0, "com.smartisanos.quicksearch_web_search"

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->q()Ljava/lang/String;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "com.android.browser"

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 7

    .line 49
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getExtras()Lcom/android/quicksearchbox/SuggestionExtras;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v3, "is_switch"

    .line 51
    invoke-interface {v0, v3}, Lcom/android/quicksearchbox/SuggestionExtras;->getExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->o:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lb/a/a/x0;->a(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.android.providers.applications/.ApplicationLauncher"

    .line 53
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0, v0, v2}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;Z)V

    .line 56
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getAgentSearchMode()I

    move-result v0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lb/a/a/n1/d$o;->a(Landroid/content/Context;I)V

    .line 58
    sget-object v3, Lb/a/a/n1/i;->a:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_3

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sConfigMap doesn\'t contain name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QSB.SearchActivity"

    invoke-static {p2, p1}, Lb/a/a/n1/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_3
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentExtraData()Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v4

    .line 62
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_4

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    invoke-static {v5, v4, p2, v6}, Lb/a/a/n1/h0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p2

    iget-object v4, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v4}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQueryInner()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    :goto_1
    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->E()V

    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_c

    const/4 v3, 0x2

    if-eq p2, v2, :cond_b

    if-eq p2, v3, :cond_a

    const/4 p1, 0x3

    if-eq p2, p1, :cond_9

    const/4 p1, 0x5

    if-eq p2, p1, :cond_8

    const/4 p1, 0x7

    if-eq p2, p1, :cond_7

    const/16 p1, 0x8

    if-eq p2, p1, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string p1, "A170059"

    .line 67
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 68
    iget-boolean p1, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    if-eqz p1, :cond_6

    .line 69
    invoke-static {v2}, Lb/a/a/n1/d$e;->a(I)V

    .line 70
    :cond_6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "A170066"

    .line 71
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string p1, "A170060"

    .line 72
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string p1, "A170058"

    .line 73
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 74
    :cond_9
    invoke-static {v1, v0}, Lb/a/a/n1/d$l;->a(II)V

    goto :goto_2

    .line 75
    :cond_a
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/d$q;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 76
    :cond_b
    invoke-static {v1, v0}, Lb/a/a/n1/d$g;->a(II)V

    .line 77
    iget-boolean p1, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    if-eqz p1, :cond_f

    .line 78
    invoke-static {v3}, Lb/a/a/n1/d$g;->a(I)V

    goto :goto_2

    .line 79
    :cond_c
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "A170020"

    .line 80
    invoke-static {p2}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 81
    invoke-static {p1}, Lb/a/a/x0;->b(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p2

    if-eqz p2, :cond_d

    const-string p1, "A170028"

    .line 82
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 83
    :cond_d
    invoke-static {p1}, Lb/a/a/x0;->d(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p1, "A170029"

    .line 84
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_e
    iget-boolean p1, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    if-eqz p1, :cond_f

    const-string p1, "A170033"

    .line 86
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    :cond_f
    :goto_2
    return-void
.end method

.method public a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 90
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result v1

    .line 93
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 94
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.ContactDetailActivity"

    .line 95
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 96
    iput-boolean v1, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    .line 97
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->o()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x4

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->w()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 99
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 100
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p2

    new-instance p3, Lcom/android/quicksearchbox/SearchActivity$d;

    invoke-direct {p3, p0, p1}, Lcom/android/quicksearchbox/SearchActivity$d;-><init>(Lcom/android/quicksearchbox/SearchActivity;Landroid/net/Uri;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lb/a/a/m1/c;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;Landroid/view/View;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;",
            "Landroid/view/View;",
            "JZ)V"
        }
    .end annotation

    .line 41
    invoke-static {p1, p3, p4}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    .line 43
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    .line 44
    invoke-interface {p3, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 45
    invoke-static {}, Lb/a/a/n1/d0;->b()Lb/a/a/n1/d0;

    move-result-object p1

    if-eqz p5, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p1, p2, p3, p4, p5}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lcom/android/quicksearchbox/Suggestion;Lb/a/a/m1/c;Z)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p1, p4}, Lb/a/a/n1/d0;->a(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 48
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p4

    invoke-virtual {p1, p2, p3, p4}, Lb/a/a/n1/d0;->a(Landroid/view/View;Lcom/android/quicksearchbox/Suggestion;Lb/a/a/m1/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/quicksearchbox/util/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/util/Consumer<",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;>;)V"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->l()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->n()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    invoke-static {v1, p1}, Lb/a/a/n1/k;->a(Landroid/os/Handler;Lcom/android/quicksearchbox/util/Consumer;)Lcom/android/quicksearchbox/util/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/CorpusRanker;->getCorporaInAll(Lcom/android/quicksearchbox/util/Consumer;)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->u()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 116
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;Z)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    move v6, v1

    goto :goto_1

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    const-string v0, "A170061"

    .line 120
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 121
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/SearchActivity;->c(I)V

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->x()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v2

    .line 124
    invoke-static {p0}, Lb/a/a/n1/h0;->k(Landroid/content/Context;)Z

    move-result v7

    invoke-static {p0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v8

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 125
    invoke-interface/range {v2 .. v8}, Lcom/android/quicksearchbox/SuggestionsProvider;->getSuggestions(Ljava/lang/String;Ljava/util/List;ZIZZ)Lb/a/a/y0;

    move-result-object p2

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/SearchActivity;->a(Lb/a/a/y0;)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/SearchActivity;->b(Lb/a/a/y0;)V

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 129
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->J()Z

    goto :goto_2

    .line 130
    :cond_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->R()V

    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed query from history, success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSB.SearchActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 88
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->d(Z)V

    if-nez p1, :cond_0

    const p1, 0x7f100121

    const/4 v0, 0x0

    .line 89
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZZ)V

    return-void
.end method

.method public a(ZZZ)V
    .locals 1

    .line 134
    iput-boolean p3, p0, Lcom/android/quicksearchbox/SearchActivity;->C:Z

    .line 135
    iput-boolean p1, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {p0, p3}, Lcom/android/quicksearchbox/SearchActivity;->d(Z)V

    .line 137
    :cond_0
    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setListOverScroll(Z)V

    if-nez p1, :cond_1

    .line 138
    invoke-static {}, Lb/a/a/n1/n;->a()V

    .line 139
    :cond_1
    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    xor-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Z)V

    return-void
.end method

.method public a(I)Z
    .locals 6

    .line 21
    invoke-static {}, Lb/c/a/a/d;->c()Lb/c/a/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lb/c/a/a/d;->b(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->u()Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    .line 25
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->l()Lcom/android/quicksearchbox/Corpus;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v3, v4, p1, v5}, Lcom/android/quicksearchbox/Logger;->logSearch(Lcom/android/quicksearchbox/Corpus;II)V

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/Corpus;Ljava/lang/String;)V

    return v2
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const-string v2, "intent_extra_for_search"

    .line 140
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 141
    invoke-static {}, Lb/a/a/c1/d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public b(I)V
    .locals 9

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->k()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpora;->getCorporaInAll()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/Corpus;

    if-ne p1, v4, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->j()Lb/a/a/m;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/a/a/m;->e(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 7
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->j()Lb/a/a/m;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lb/a/a/m;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 11
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$u;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/SearchActivity$u;-><init>(Lcom/android/quicksearchbox/SearchActivity$g;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz v1, :cond_b

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    if-eq v1, v4, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_6

    const v5, 0x7f100132

    .line 14
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 15
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_4

    .line 16
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/quicksearchbox/Corpus;

    .line 17
    invoke-interface {v8}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v1, -0x3

    if-lt v7, v8, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne p1, v4, :cond_5

    const p1, 0x7f10013e

    goto :goto_3

    :cond_5
    const p1, 0x7f100131

    :goto_3
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 19
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    add-int/lit8 v2, v1, -0x2

    .line 20
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {v2}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v4

    add-int/lit8 v2, v1, -0x1

    .line 21
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 22
    invoke-virtual {p0, p1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_6
    if-ne p1, v4, :cond_7

    const p1, 0x7f100140

    goto :goto_4

    :cond_7
    const p1, 0x7f100134

    :goto_4
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {v5}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 24
    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_8
    if-ne p1, v4, :cond_9

    const p1, 0x7f10013f

    goto :goto_5

    :cond_9
    const p1, 0x7f100133

    :goto_5
    new-array v3, v4, [Ljava/lang/Object;

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/Corpus;

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 26
    invoke-virtual {p0, p1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    const p1, 0x7f100135

    .line 27
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_b
    const-string p1, ""

    .line 28
    :goto_6
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public final b(Landroid/content/Intent;Z)V
    .locals 5

    .line 29
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(IZ)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "TAG_LAUNCHER_PULL_TO_ACTIVITY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "start_search"

    const-string v3, "A170035"

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x2

    .line 31
    invoke-static {v3, v2, v0}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "TAG_BITMAP_THUMBNAIL"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 33
    sget-object v2, Lb/a/a/c1/f/a;->d:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    sget-object v2, Lb/a/a/c1/f/a;->d:Landroid/graphics/Bitmap;

    .line 34
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 35
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v3, v2, v1}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->e:Landroid/widget/ImageView;

    invoke-static {p0}, Lb/a/a/c1/g/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    const/4 v0, -0x1

    const-string v2, "VoiceType"

    .line 38
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_2

    move v0, v4

    goto :goto_1

    :cond_2
    move v0, v1

    .line 39
    :goto_1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->p:Z

    .line 40
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->p:Z

    if-eqz v0, :cond_5

    const-string v0, "keyguard"

    .line 41
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_3

    .line 42
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->q:Z

    .line 44
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->q:Z

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 46
    :cond_4
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->u:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 49
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_6

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;)V

    :cond_6
    const-string v0, "query"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_7

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string p2, "app_data"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    const-string v2, "select_query"

    .line 53
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 54
    invoke-virtual {p0, v0, p1}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;Z)V

    .line 55
    iput-object p2, p0, Lcom/android/quicksearchbox/SearchActivity;->o:Landroid/os/Bundle;

    .line 56
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->N()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 57
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->M()V

    :cond_8
    return-void
.end method

.method public b(Lb/a/a/y0;)V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->D:Z

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->D:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iput-boolean v1, p0, Lcom/android/quicksearchbox/SearchActivity;->D:Z

    const-string v0, "A170074"

    .line 72
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestions(Lb/a/a/y0;)V

    .line 74
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->e(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->g(Z)V

    .line 76
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->p()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    if-nez p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->S()V

    goto :goto_0

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->k()V

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    check-cast p1, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->k(Z)V

    return-void
.end method

.method public b(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/SearchActivity;->c(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    const/4 p1, 0x1

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->a(Z)V

    return-void
.end method

.method public b(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 61
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->o()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x2

    move-wide v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->w()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setQueryAndUpdate(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    instance-of v1, v0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    if-eqz v1, :cond_0

    .line 81
    check-cast v0, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityViewSinglePane;->setCancelButtonEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 5

    .line 42
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->isFirstUseSearch()Z

    move-result v0

    const-string v1, "QSB.SearchActivity"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v0, "upload first use keyboard event"

    .line 43
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_0

    move v3, v2

    .line 44
    :cond_0
    invoke-static {v3}, Lb/a/a/n1/d$v;->a(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/quicksearchbox/SearchSettings;->updateFirstUseStatus(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SearchSettings;->savePreSearchKeyBoardType(I)V

    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->getPreSearchKeyBoardType()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    if-eq v0, p1, :cond_4

    :cond_2
    const-string v0, "keyboard changed, upload event"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 49
    :goto_0
    invoke-static {v2}, Lb/a/a/n1/d$v;->a(I)V

    .line 50
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/SearchSettings;->savePreSearchKeyBoardType(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public c(Lcom/android/quicksearchbox/SuggestionCursor;I)V
    .locals 1

    .line 35
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->w()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/quicksearchbox/ShortcutRepository;->removeFromHistory(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 37
    invoke-static {}, Lb/c/a/a/d;->c()Lb/c/a/a/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/c/a/a/d;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 39
    invoke-virtual {p0, v1, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZ)V

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/b0;->z()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->cancelPendingTasks()V

    .line 41
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$f;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/quicksearchbox/SearchActivity$f;-><init>(Lcom/android/quicksearchbox/SearchActivity;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/util/Consumer;)V

    return-void
.end method

.method public final c(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)Z"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    .line 4
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v8

    .line 5
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    .line 6
    invoke-interface {v8, p1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 7
    instance-of v2, v8, Lb/a/a/w;

    if-eqz v2, :cond_5

    .line 8
    move-object v2, v8

    check-cast v2, Lb/a/a/w;

    .line 9
    invoke-virtual {v2}, Lb/a/a/w;->e()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v2, p0}, Lb/a/a/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    .line 11
    invoke-virtual {v2, p1, p2}, Lb/a/a/w;->a(II)V

    return v1

    .line 12
    :cond_1
    invoke-virtual {v2}, Lb/a/a/w;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->h()V

    return v1

    .line 14
    :cond_2
    invoke-virtual {v2}, Lb/a/a/w;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(I)Z

    const-string p1, "A170006"

    .line 16
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return v1

    .line 17
    :cond_3
    invoke-virtual {v2}, Lb/a/a/w;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->L()V

    const-string p1, "A170007"

    .line 19
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return v1

    .line 20
    :cond_4
    invoke-virtual {v2}, Lb/a/a/w;->d()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZ)V

    const-string p1, "A170031"

    .line 22
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->P()V

    return v1

    .line 24
    :cond_5
    invoke-static {v8}, Lb/a/a/x0;->c(Lcom/android/quicksearchbox/Suggestion;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 25
    new-instance v2, Ljava/io/File;

    invoke-interface {v8}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    const p1, 0x7f1000b3

    .line 27
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return v1

    .line 28
    :cond_6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->o()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    move-wide v3, p2

    move-object v5, v8

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 29
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->w()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-interface {p2, v8, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 30
    iget-object p2, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    if-eqz p2, :cond_7

    .line 31
    invoke-virtual {p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    .line 32
    :cond_7
    invoke-interface {v8}, Lcom/android/quicksearchbox/Suggestion;->isHistorySuggestion()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-interface {v8}, Lcom/android/quicksearchbox/Suggestion;->isSuggestionShortcut()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 33
    :cond_8
    invoke-static {p1}, Lb/a/a/n1/d$j;->d(I)V

    .line 34
    :cond_9
    invoke-virtual {p0, v8, p1}, Lcom/android/quicksearchbox/SearchActivity;->a(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return v1
.end method

.method public d(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result v1

    .line 5
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 6
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 8
    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10
    invoke-static {p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(Landroid/content/Context;)Lcom/android/quicksearchbox/music/MusicServiceManager;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getAgentSearchMode()I

    move-result v3

    .line 12
    invoke-virtual {v2}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b()Lb/a/a/h1/b;

    move-result-object v4

    invoke-virtual {v4}, Lb/a/a/h1/b;->c()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {v2, v3}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(I)V

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(JI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    .line 16
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v1

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->o()Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x3

    move-wide v2, p2

    invoke-interface/range {v1 .. v6}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 17
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->w()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    :catch_0
    return-void
.end method

.method public final d(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 18
    invoke-static {}, Lb/a/a/m;->r()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(J)V

    return-void
.end method

.method public e(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lb/a/a/i;->getSuggestionQuery()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->o()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x1

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;Z)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/SearchActivity;->c(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->h()V

    return-void
.end method

.method public final f()V
    .locals 8

    return-void

    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->F:Landroid/view/View;

    .line 5
    invoke-static {p0}, Lsmartisan/util/NavigationBarHelper;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->F:Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v0, 0x7f6

    goto :goto_0

    :cond_1
    const/16 v0, 0x7d3

    :goto_0
    move v4, v0

    const-string v0, "window"

    .line 10
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 11
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const v5, 0x5040508

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const-string v1, "QSB.SearchActivity"

    .line 12
    invoke-virtual {v7, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 14
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$i;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$i;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    .line 15
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->F:Landroid/view/View;

    new-instance v3, Lcom/android/quicksearchbox/SearchActivity$j;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity$j;-><init>(Lcom/android/quicksearchbox/SearchActivity;Landroid/view/WindowManager;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->F:Landroid/view/View;

    invoke-interface {v0, v2, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    invoke-static {}, Lsmartisanos/api/ViewSmt;->getInstance()Lsmartisanos/api/ViewSmt;

    move-result-object v0

    iget-object v2, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, v2, v1}, Lsmartisanos/api/ViewSmt;->addZoomStatusChangeListener(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method

.method public f(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/quicksearchbox/SearchActivity;->b(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-void
.end method

.method public final g()V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lsmartisanos/app/appstore/AutoUpdateUtils;->getInstance()Lsmartisanos/app/appstore/AutoUpdateUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lsmartisanos/app/appstore/AutoUpdateUtils;->onStartCheckUpdate(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/q;->b(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public g(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 4
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Lb/a/a/i;->getSuggestionText1()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100120

    .line 8
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1000f7

    new-instance v2, Lcom/android/quicksearchbox/SearchActivity$b;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity$b;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f100061

    const/4 p3, 0x0

    .line 10
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final h()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->w()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRepository;->clearHistory()V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Z)V

    const-string v0, "A170005"

    .line 4
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;J)V"
        }
    .end annotation

    .line 5
    invoke-static {p1, p2, p3}, Lcom/android/quicksearchbox/SearchActivity;->i(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;J)Lb/a/a/w0;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result v1

    .line 8
    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    .line 9
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionSource()Lcom/android/quicksearchbox/Source;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.contacts/.activities.ContactDetailActivity"

    .line 10
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    .line 12
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->o()Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x3

    move-wide v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/android/quicksearchbox/Logger;->logSuggestionClick(JLcom/android/quicksearchbox/SuggestionCursor;Ljava/util/Collection;I)V

    .line 13
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->w()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/a/w0;->c()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object p3

    invoke-virtual {p1}, Lb/a/a/w0;->getPosition()I

    move-result p1

    invoke-interface {p2, p3, p1}, Lcom/android/quicksearchbox/ShortcutRepository;->reportClick(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 14
    invoke-interface {v0}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionIntentDataString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->b()Lb/a/a/m1/c;

    move-result-object p2

    new-instance p3, Lcom/android/quicksearchbox/SearchActivity$c;

    invoke-direct {p3, p0, p1}, Lcom/android/quicksearchbox/SearchActivity$c;-><init>(Lcom/android/quicksearchbox/SearchActivity;Landroid/net/Uri;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lb/a/a/m1/c;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public i()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;Z)V

    .line 9
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/b0;->x()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/quicksearchbox/ShortcutRefresher;->reset()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->c(Z)V

    return-void
.end method

.method public final j()Lb/a/a/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    return-object v0
.end method

.method public final l()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpusName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final n()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->q()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/quicksearchbox/Corpus;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lb/a/a/y0;->g()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

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
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->G()V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->isFirstBootQSB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->u()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->C:Z

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->H()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZ)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->P()V

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->b(Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->P()V

    goto :goto_1

    .line 12
    :cond_3
    invoke-static {v1}, Lb/a/a/n1/d$i;->a(I)V

    .line 13
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onBackPressed()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onClearHistory()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->h()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/j1/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->s:Z

    .line 2
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->s:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/j1/a/a;->b(Landroid/content/Context;)V

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "trace_start_up"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->f:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->f:Z

    const-string v1, "QSB.SearchActivity"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/io/File;

    const-string v3, "traces"

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    const-string v4, "qsb-start.trace"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing start-up trace to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->F()V

    const-string v0, "qsearch app onCreate()"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    .line 14
    :cond_2
    invoke-static {p0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->C()V

    .line 16
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    .line 17
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    .line 19
    :cond_4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->K()Lcom/android/quicksearchbox/ui/SearchActivityView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    .line 20
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->j()Lb/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/m;->h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->j()Lb/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/m;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setMaxPromotedSuggestions(I)V

    goto :goto_0

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->s()V

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->j()Lb/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/m;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->j()Lb/a/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/a/m;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setMaxPromotedResults(I)V

    goto :goto_1

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->r()V

    .line 26
    :goto_1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$o;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$o;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSearchClickListener(Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;)V

    .line 27
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$p;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$p;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setQueryListener(Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;)V

    .line 28
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$s;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/quicksearchbox/SearchActivity$s;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$g;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V

    .line 29
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$q;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$q;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    new-instance v0, Lcom/android/quicksearchbox/SearchActivity$r;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/SearchActivity$r;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    .line 31
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setExitClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    invoke-virtual {p0, v0, v2}, Lcom/android/quicksearchbox/SearchActivity;->b(Landroid/content/Intent;Z)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/os/Bundle;)V

    .line 35
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->T()V

    .line 36
    new-instance p1, Lcom/android/quicksearchbox/SearchActivity$t;

    invoke-direct {p1, p0, v3}, Lcom/android/quicksearchbox/SearchActivity$t;-><init>(Lcom/android/quicksearchbox/SearchActivity;Lcom/android/quicksearchbox/SearchActivity$g;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->n:Lcom/android/quicksearchbox/SearchActivity$t;

    .line 37
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->k()Lcom/android/quicksearchbox/Corpora;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->n:Lcom/android/quicksearchbox/SearchActivity$t;

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/Corpora;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->E()V

    .line 39
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->I()V

    .line 40
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->H()V

    .line 41
    new-instance p1, Lcom/android/quicksearchbox/util/PinObserver;

    invoke-direct {p1, p0, v3}, Lcom/android/quicksearchbox/util/PinObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->t:Lcom/android/quicksearchbox/util/PinObserver;

    .line 42
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->t:Lcom/android/quicksearchbox/util/PinObserver;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/util/PinObserver;->a(Z)V

    .line 43
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->t:Lcom/android/quicksearchbox/util/PinObserver;

    new-instance v0, Lcom/android/quicksearchbox/SearchActivity$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/SearchActivity$a;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/util/PinObserver;->setOnPinListener(Lcom/android/quicksearchbox/util/PinObserver$OnPinListener;)V

    .line 44
    invoke-static {p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(Landroid/content/Context;)Lcom/android/quicksearchbox/music/MusicServiceManager;

    move-result-object p1

    .line 45
    invoke-virtual {p1, p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V

    .line 46
    invoke-virtual {p1}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a()V

    .line 47
    invoke-static {}, Lb/a/a/n1/d;->c()V

    .line 48
    sget-boolean p1, Lcom/android/quicksearchbox/SearchActivity;->H:Z

    if-eqz p1, :cond_7

    :try_start_1
    const-string p1, "maybe_launch_pkg_from_predict_result"

    .line 49
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 51
    sget-boolean v1, Lcom/android/quicksearchbox/SearchActivity;->H:Z

    if-eqz v1, :cond_7

    .line 52
    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->v:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 53
    invoke-static {p1}, Lb/a/a/n1/q;->a(Ljava/lang/Throwable;)V

    .line 54
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->g()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onDestroy()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->k()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->n:Lcom/android/quicksearchbox/SearchActivity$t;

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/Corpora;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->P()V

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->O()V

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->Q()V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->t:Lcom/android/quicksearchbox/util/PinObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/util/PinObserver;->a(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->v()V

    .line 9
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onDestroy()V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->w:Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;->onDestroyed()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->x:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 14
    :cond_2
    invoke-static {v1}, Lsmartisanos/app/settings/search/SettingsEnabler;->setConfirm(Z)V

    .line 15
    invoke-static {p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->a(Landroid/content/Context;)Lcom/android/quicksearchbox/music/MusicServiceManager;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->c()V

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b(Lcom/android/quicksearchbox/music/MusicServiceManager$Callback;)V

    .line 18
    invoke-static {p0}, Lcom/android/quicksearchbox/music/MusicServiceManager;->b(Landroid/content/Context;)Z

    .line 19
    sget-boolean v0, Lcom/android/quicksearchbox/SearchActivity;->H:Z

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/SearchActivity;->v:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->v()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->isFirstBootQSB()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->F:Landroid/view/View;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->E:Z

    if-nez v0, :cond_0

    .line 3
    invoke-static {p0}, Landroid/app/SmtPCUtils;->isPcMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->E:Z

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcom/android/quicksearchbox/SearchActivity$h;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/SearchActivity$h;-><init>(Lcom/android/quicksearchbox/SearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onMusicServiceConnected()V
    .locals 0

    return-void
.end method

.method public onMusicStateChange()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->G()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lb/a/a/n1/h0;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/SearchActivity;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->F()V

    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->e:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p0}, Lb/a/a/c1/g/c;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/SearchActivity;->b(Landroid/content/Intent;Z)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->i:Lb/a/a/v;

    invoke-virtual {v0}, Lb/a/a/v;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lb/a/a/n1/d$k;->a(J)V

    const/4 v0, 0x4

    .line 3
    invoke-static {v0}, Lb/a/a/n1/d$i;->a(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->y()V

    return-void
.end method

.method public onRestart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 1
    invoke-static {}, Lb/a/a/n1/d$i;->a()V

    .line 2
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->x()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRefresher;->reset()V

    .line 4
    invoke-static {}, Lcom/android/quicksearchbox/SearchActivity;->T()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/SearchActivity;->d(Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.quicksearchbox.action.QUICK_SEARCH"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(IZ)V

    goto :goto_0

    :cond_1
    const-string v3, "com.android.quicksearchbox.action.GLOBAL_SEARCH"

    .line 11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0, v1, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(IZ)V

    .line 14
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->z()V

    .line 15
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->f:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->i:Lb/a/a/v;

    if-nez v0, :cond_4

    .line 17
    new-instance v0, Lb/a/a/v;

    invoke-direct {v0}, Lb/a/a/v;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->i:Lb/a/a/v;

    goto :goto_1

    .line 18
    :cond_4
    invoke-virtual {v0}, Lb/a/a/v;->b()V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "corpus"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->A()V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(Ljava/lang/String;Z)V

    :cond_0
    const-string v0, "A170011"

    .line 5
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->l:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->r()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->p()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/quicksearchbox/Logger;->logExit(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->d()V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->B()V

    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Lsmartisanos/app/settings/search/SettingsEnabler;->setConfirm(Z)V

    .line 6
    iget-boolean v1, p0, Lcom/android/quicksearchbox/SearchActivity;->r:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->i()V

    goto :goto_0

    .line 9
    :cond_1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->r:Z

    .line 10
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onStop()V

    .line 11
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->a()V

    return-void
.end method

.method public p()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "http"

    .line 2
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    .line 4
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "smartisanos"

    .line 7
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "com.android.browser"

    :goto_0
    return-object v0
.end method

.method public final r()Lcom/android/quicksearchbox/Logger;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->t()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    return-object v0
.end method

.method public final s()Lb/a/a/b0;
    .locals 1

    .line 1
    invoke-static {p0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    return-object v0
.end method

.method public setOnDestroyListener(Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/SearchActivity;->w:Lcom/android/quicksearchbox/SearchActivity$OnDestroyListener;

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    if-lez p2, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->r:Z

    .line 2
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/util/AndroidRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityNotFoundException for intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "startActivityForResult fail"

    .line 4
    invoke-static {p2, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/SearchActivity;->m:Lcom/android/quicksearchbox/ui/SearchActivityView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->y()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->s()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->B()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v0

    return-object v0
.end method

.method public y()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "permission_allowed"

    .line 2
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/SearchActivity;->B:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/SearchActivity;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
