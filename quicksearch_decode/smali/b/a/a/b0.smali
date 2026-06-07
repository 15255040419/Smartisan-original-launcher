.class public Lb/a/a/b0;
.super Ljava/lang/Object;
.source "QsbApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/b0$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public b:I

.field public c:Landroid/os/Handler;

.field public d:Lb/a/a/m;

.field public e:Lcom/android/quicksearchbox/SearchSettings;

.field public f:Lcom/android/quicksearchbox/Sources;

.field public g:Lcom/android/quicksearchbox/Corpora;

.field public h:Lcom/android/quicksearchbox/CorpusRanker;

.field public i:Lcom/android/quicksearchbox/ShortcutRepository;

.field public j:Lcom/android/quicksearchbox/ShortcutRefresher;

.field public k:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field public l:Ljava/util/concurrent/ThreadFactory;

.field public m:Lcom/android/quicksearchbox/SuggestionsProvider;

.field public n:Lb/a/a/a1;

.field public o:Lcom/android/quicksearchbox/Logger;

.field public p:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

.field public q:Landroid/content/res/Configuration;

.field public r:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f11016b

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lb/a/a/b0;->a:Landroid/content/Context;

    .line 3
    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lb/a/a/b0;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lb/a/a/b0;->q:Landroid/content/res/Configuration;

    .line 4
    invoke-static {p1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Landroid/content/Context;)Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->r:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    .line 5
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.search.action.SEARCHABLES_CHANGED"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.search.action.SETTINGS_CHANGED"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9
    sget-object v1, Lb/a/a/n1/f0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    sget-object v1, Lb/a/a/n1/f0;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    new-instance v1, Lcom/android/quicksearchbox/CorporaUpdateReceiver;

    invoke-direct {v1}, Lcom/android/quicksearchbox/CorporaUpdateReceiver;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static G()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accessed Application object from thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static H()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/n1/x;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lb/a/a/n1/x;-><init>(I)V

    .line 2
    new-instance v1, Lb/a/a/n1/w;

    invoke-static {v0}, Lb/a/a/n1/e0;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/n1/w;-><init>(Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method public static I()Ljava/util/concurrent/ThreadFactory;
    .locals 3

    .line 1
    invoke-static {}, Lb/a/a/m;->q()I

    move-result v0

    .line 2
    new-instance v1, Lb/c/a/j/a/a;

    invoke-direct {v1}, Lb/c/a/j/a/a;-><init>()V

    const-string v2, "QSB #%d"

    .line 3
    invoke-virtual {v1, v2}, Lb/c/a/j/a/a;->a(Ljava/lang/String;)Lb/c/a/j/a/a;

    new-instance v2, Lb/a/a/n1/x;

    invoke-direct {v2, v0}, Lb/a/a/n1/x;-><init>(I)V

    .line 4
    invoke-virtual {v1, v2}, Lb/c/a/j/a/a;->a(Ljava/util/concurrent/ThreadFactory;)Lb/c/a/j/a/a;

    .line 5
    invoke-virtual {v1}, Lb/c/a/j/a/a;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/android/quicksearchbox/Corpus;)Lcom/android/quicksearchbox/Promoter;
    .locals 2

    .line 23
    new-instance v0, Lb/a/a/o0;

    const v1, 0x7fffffff

    invoke-direct {v0, p0, v1}, Lb/a/a/o0;-><init>(Lcom/android/quicksearchbox/Corpus;I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    .locals 1

    .line 22
    new-instance v0, Lb/a/a/m1/d;

    invoke-direct {v0, p0}, Lb/a/a/m1/d;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lb/a/a/b0;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/android/quicksearchbox/QsbApplicationWrapper;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/QsbApplicationWrapper;->b()Lb/a/a/b0;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Lcom/android/quicksearchbox/ui/SuggestionViewFactory;
    .locals 0

    .line 2
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 3
    invoke-static {p0}, Lb/a/a/b0;->a(Landroid/content/Context;)Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Lcom/android/quicksearchbox/Sources;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->f:Lcom/android/quicksearchbox/Sources;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->k()Lcom/android/quicksearchbox/Sources;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->f:Lcom/android/quicksearchbox/Sources;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->f:Lcom/android/quicksearchbox/Sources;

    return-object v0
.end method

.method public B()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->m:Lcom/android/quicksearchbox/SuggestionsProvider;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->l()Lcom/android/quicksearchbox/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->m:Lcom/android/quicksearchbox/SuggestionsProvider;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->m:Lcom/android/quicksearchbox/SuggestionsProvider;

    return-object v0
.end method

.method public C()I
    .locals 3

    .line 1
    iget v0, p0, Lb/a/a/b0;->b:I

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lb/a/a/b0;->b:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 6
    :cond_0
    :goto_0
    iget v0, p0, Lb/a/a/b0;->b:I

    return v0
.end method

.method public D()Lb/a/a/a1;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->n:Lb/a/a/a1;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->m()Lb/a/a/a1;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->n:Lb/a/a/a1;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->n:Lb/a/a/a1;

    return-object v0
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F()V
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->g:Lcom/android/quicksearchbox/Corpora;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpora;->update()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)Lb/a/a/k1/c;
    .locals 2

    .line 24
    new-instance v0, Lb/a/a/k1/c;

    invoke-virtual {p0}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lb/a/a/k1/c;-><init>(Lcom/android/quicksearchbox/SearchSettings;Landroid/content/Context;)V

    return-object v0
.end method

.method public a(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpora;
    .locals 4

    .line 17
    new-instance v0, Lb/a/a/f0;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v2

    .line 18
    invoke-virtual {p0}, Lb/a/a/b0;->d()Lcom/android/quicksearchbox/CorpusFactory;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lb/a/a/f0;-><init>(Landroid/content/Context;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/Sources;Lcom/android/quicksearchbox/CorpusFactory;)V

    .line 19
    invoke-virtual {v0}, Lb/a/a/f0;->update()V

    return-object v0
.end method

.method public a(I)Lcom/android/quicksearchbox/util/Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/quicksearchbox/util/Factory<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lb/a/a/b0;->v()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 21
    new-instance v1, Lb/a/a/b0$a;

    invoke-direct {v1, p1, v0}, Lb/a/a/b0$a;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v1
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->d:Lb/a/a/m;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/a/m;->a()V

    .line 4
    iput-object v1, p0, Lb/a/a/b0;->d:Lb/a/a/m;

    .line 5
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->i:Lcom/android/quicksearchbox/ShortcutRepository;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/quicksearchbox/ShortcutRepository;->close()V

    .line 7
    iput-object v1, p0, Lb/a/a/b0;->i:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 8
    :cond_1
    iget-object v0, p0, Lb/a/a/b0;->k:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/android/quicksearchbox/util/NamedTaskExecutor;->close()V

    .line 10
    iput-object v1, p0, Lb/a/a/b0;->k:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 11
    :cond_2
    iget-object v0, p0, Lb/a/a/b0;->m:Lcom/android/quicksearchbox/SuggestionsProvider;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionsProvider;->close()V

    .line 13
    iput-object v1, p0, Lb/a/a/b0;->m:Lcom/android/quicksearchbox/SuggestionsProvider;

    .line 14
    :cond_3
    iget-object v0, p0, Lb/a/a/b0;->r:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a()V

    :cond_4
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lb/a/a/b0;->q:Landroid/content/res/Configuration;

    invoke-static {v0, p1}, Lb/a/a/n1/f0;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lb/a/a/b0;->a:Landroid/content/Context;

    invoke-static {v0}, Lsmartisanos/util/NameAvatarController;->getInstances(Landroid/content/Context;)Lsmartisanos/util/NameAvatarController;

    move-result-object v0

    invoke-virtual {v0}, Lsmartisanos/util/NameAvatarController;->reInitRoundBG()V

    .line 27
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lb/a/a/b0;->q:Landroid/content/res/Configuration;

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    .line 16
    invoke-virtual {p0}, Lb/a/a/b0;->u()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()Lcom/android/quicksearchbox/Promoter;
    .locals 6

    .line 2
    new-instance v0, Lb/a/a/l0;

    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v1

    new-instance v2, Lb/a/a/d0;

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v3

    new-instance v4, Lb/a/a/y;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lb/a/a/y;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lb/a/a/d0;-><init>(Lb/a/a/m;Lcom/android/quicksearchbox/SuggestionFilter;Lcom/android/quicksearchbox/Promoter;)V

    new-instance v3, Lb/a/a/y;

    .line 4
    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lb/a/a/y;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2, v3}, Lb/a/a/l0;-><init>(Lb/a/a/m;Lcom/android/quicksearchbox/Promoter;Lcom/android/quicksearchbox/SuggestionFilter;)V

    return-object v0
.end method

.method public c()Lb/a/a/m;
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/m;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public d()Lcom/android/quicksearchbox/CorpusFactory;
    .locals 5

    .line 1
    invoke-static {}, Lb/a/a/m;->o()I

    move-result v0

    .line 2
    new-instance v1, Lb/a/a/g0;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v4

    .line 3
    invoke-virtual {p0, v0}, Lb/a/a/b0;->a(I)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lb/a/a/g0;-><init>(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/SearchSettings;Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method public e()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 3

    .line 1
    new-instance v0, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b0;->y()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/a/a/q;-><init>(Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRepository;)V

    return-object v0
.end method

.method public f()Lcom/android/quicksearchbox/Logger;
    .locals 3

    .line 1
    new-instance v0, Lb/a/a/s;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/a/a/s;-><init>(Landroid/content/Context;Lb/a/a/m;)V

    return-object v0
.end method

.method public g()Lcom/android/quicksearchbox/SearchSettings;
    .locals 3

    .line 1
    new-instance v0, Lb/a/a/e0;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lb/a/a/e0;-><init>(Landroid/content/Context;Lb/a/a/m;)V

    return-object v0
.end method

.method public h()Lcom/android/quicksearchbox/ShortcutRefresher;
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/r0;

    invoke-virtual {p0}, Lb/a/a/b0;->j()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/r0;-><init>(Lcom/android/quicksearchbox/util/NamedTaskExecutor;)V

    return-object v0
.end method

.method public i()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 7

    .line 1
    new-instance v0, Lb/c/a/j/a/a;

    invoke-direct {v0}, Lb/c/a/j/a/a;-><init>()V

    const-string v1, "ShortcutRepository #%d"

    .line 2
    invoke-virtual {v0, v1}, Lb/c/a/j/a/a;->a(Ljava/lang/String;)Lb/c/a/j/a/a;

    new-instance v1, Lb/a/a/n1/x;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lb/a/a/n1/x;-><init>(I)V

    .line 3
    invoke-virtual {v0, v1}, Lb/c/a/j/a/a;->a(Ljava/util/concurrent/ThreadFactory;)Lb/c/a/j/a/a;

    .line 4
    invoke-virtual {v0}, Lb/c/a/j/a/a;->a()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    .line 6
    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v2

    invoke-virtual {p0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v3

    .line 7
    invoke-virtual {p0}, Lb/a/a/b0;->x()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v4

    invoke-virtual {p0}, Lb/a/a/b0;->u()Landroid/os/Handler;

    move-result-object v5

    .line 8
    invoke-static/range {v1 .. v6}, Lb/a/a/m0;->a(Landroid/content/Context;Lb/a/a/m;Lcom/android/quicksearchbox/Corpora;Lcom/android/quicksearchbox/ShortcutRefresher;Landroid/os/Handler;Ljava/util/concurrent/Executor;)Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/a/b0;->v()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    .line 2
    new-instance v1, Lb/a/a/n1/w;

    invoke-static {v0}, Lb/a/a/n1/e0;->a(Ljava/util/concurrent/ThreadFactory;)Lcom/android/quicksearchbox/util/Factory;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/n1/w;-><init>(Lcom/android/quicksearchbox/util/Factory;)V

    return-object v1
.end method

.method public k()Lcom/android/quicksearchbox/Sources;
    .locals 5

    .line 1
    new-instance v0, Lb/a/a/i0;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/b0;->u()Landroid/os/Handler;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lb/a/a/b0;->s()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/i0;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Lb/a/a/m;)V

    return-object v0
.end method

.method public l()Lcom/android/quicksearchbox/SuggestionsProvider;
    .locals 5

    .line 1
    new-instance v0, Lb/a/a/z0;

    invoke-virtual {p0}, Lb/a/a/b0;->n()Lb/a/a/m;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lb/a/a/b0;->z()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->u()Landroid/os/Handler;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lb/a/a/b0;->t()Lcom/android/quicksearchbox/Logger;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lb/a/a/z0;-><init>(Lb/a/a/m;Lcom/android/quicksearchbox/util/NamedTaskExecutor;Landroid/os/Handler;Lcom/android/quicksearchbox/Logger;)V

    return-object v0
.end method

.method public m()Lb/a/a/a1;
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/a1;

    invoke-virtual {p0}, Lb/a/a/b0;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lb/a/a/a1;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public declared-synchronized n()Lb/a/a/m;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b0;->d:Lb/a/a/m;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/b0;->c()Lb/a/a/m;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->d:Lb/a/a/m;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->d:Lb/a/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public o()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b0;->a:Landroid/content/Context;

    return-object v0
.end method

.method public p()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->g:Lcom/android/quicksearchbox/Corpora;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->A()Lcom/android/quicksearchbox/Sources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb/a/a/b0;->a(Lcom/android/quicksearchbox/Sources;)Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->g:Lcom/android/quicksearchbox/Corpora;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->g:Lcom/android/quicksearchbox/Corpora;

    return-object v0
.end method

.method public q()Lcom/android/quicksearchbox/CorpusRanker;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->h:Lcom/android/quicksearchbox/CorpusRanker;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->e()Lcom/android/quicksearchbox/CorpusRanker;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->h:Lcom/android/quicksearchbox/CorpusRanker;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->h:Lcom/android/quicksearchbox/CorpusRanker;

    return-object v0
.end method

.method public r()Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/b0;->r:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    return-object v0
.end method

.method public declared-synchronized s()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b0;->p:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lb/a/a/b0;->H()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->p:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->p:Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public t()Lcom/android/quicksearchbox/Logger;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->o:Lcom/android/quicksearchbox/Logger;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->f()Lcom/android/quicksearchbox/Logger;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->o:Lcom/android/quicksearchbox/Logger;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->o:Lcom/android/quicksearchbox/Logger;

    return-object v0
.end method

.method public declared-synchronized u()Landroid/os/Handler;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b0;->c:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lb/a/a/b0;->c:Landroid/os/Handler;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->c:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public v()Ljava/util/concurrent/ThreadFactory;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->l:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lb/a/a/b0;->I()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->l:Ljava/util/concurrent/ThreadFactory;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->l:Ljava/util/concurrent/ThreadFactory;

    return-object v0
.end method

.method public declared-synchronized w()Lcom/android/quicksearchbox/SearchSettings;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lb/a/a/b0;->e:Lcom/android/quicksearchbox/SearchSettings;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lb/a/a/b0;->g()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->e:Lcom/android/quicksearchbox/SearchSettings;

    .line 3
    iget-object v0, p0, Lb/a/a/b0;->e:Lcom/android/quicksearchbox/SearchSettings;

    invoke-interface {v0}, Lcom/android/quicksearchbox/SearchSettings;->upgradeSettingsIfNeeded()V

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->e:Lcom/android/quicksearchbox/SearchSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()Lcom/android/quicksearchbox/ShortcutRefresher;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->j:Lcom/android/quicksearchbox/ShortcutRefresher;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->h()Lcom/android/quicksearchbox/ShortcutRefresher;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->j:Lcom/android/quicksearchbox/ShortcutRefresher;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->j:Lcom/android/quicksearchbox/ShortcutRefresher;

    return-object v0
.end method

.method public y()Lcom/android/quicksearchbox/ShortcutRepository;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->i:Lcom/android/quicksearchbox/ShortcutRepository;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->i()Lcom/android/quicksearchbox/ShortcutRepository;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->i:Lcom/android/quicksearchbox/ShortcutRepository;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->i:Lcom/android/quicksearchbox/ShortcutRepository;

    return-object v0
.end method

.method public z()Lcom/android/quicksearchbox/util/NamedTaskExecutor;
    .locals 1

    .line 1
    invoke-static {}, Lb/a/a/b0;->G()V

    .line 2
    iget-object v0, p0, Lb/a/a/b0;->k:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lb/a/a/b0;->j()Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/b0;->k:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/b0;->k:Lcom/android/quicksearchbox/util/NamedTaskExecutor;

    return-object v0
.end method
