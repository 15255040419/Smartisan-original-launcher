.class public Lcom/android/quicksearchbox/panels/widget/VoiceView;
.super Landroid/widget/FrameLayout;
.source "VoiceView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/panels/widget/VoiceView$c;,
        Lcom/android/quicksearchbox/panels/widget/VoiceView$IVoiceAssistantCallbackImpl;,
        Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:J

.field public e:Landroid/view/View;

.field public f:Landroid/widget/ImageButton;

.field public g:Landroid/app/AlertDialog;

.field public h:Landroid/os/Vibrator;

.field public i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

.field public j:Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

.field public k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

.field public l:Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;

.field public m:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView$a;-><init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->m:Landroid/content/ServiceConnection;

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->e()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/VoiceView;Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;)Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l:Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;

    return-object p1
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lsmartisanos/app/voiceassistant/IVoiceAssistantService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/VoiceView;Lsmartisanos/app/voiceassistant/IVoiceAssistantService;)Lsmartisanos/app/voiceassistant/IVoiceAssistantService;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    return-object p1
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/VoiceView;ZZ)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(ZZ)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->e:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j:Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b:Z

    return p1
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a:Z

    return p0
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/panels/widget/VoiceView;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c:Z

    return p1
.end method

.method public static synthetic e(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Landroid/os/Vibrator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->h:Landroid/os/Vibrator;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->h()V

    return-void
.end method

.method public static synthetic g(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d()V

    return-void
.end method

.method private getRecongnizeType()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object v0

    check-cast v0, Lb/a/a/e0;

    .line 4
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpora;->getAllCorpora()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quicksearchbox/Corpus;

    .line 5
    invoke-virtual {v0, v3}, Lb/a/a/e0;->isCorpusEnabled(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6
    invoke-interface {v3}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.contacts/.activities.ContactDetailActivity"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "com.smartisanos.music/.activities.PlaybackActivity"

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    const-string v4, "apps"

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x4

    goto :goto_0

    :cond_3
    return v2
.end method

.method public static synthetic h(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->f()V

    return-void
.end method

.method public static synthetic i(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a()V

    return-void
.end method

.method public static synthetic j(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b:Z

    return p0
.end method

.method public static synthetic k(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c:Z

    return p0
.end method

.method public static synthetic l(Lcom/android/quicksearchbox/panels/widget/VoiceView;)Lcom/android/quicksearchbox/panels/widget/VoiceView$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    return-object p0
.end method

.method public static synthetic m(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->g()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const-string v0, "QSB.VoiceView"

    const-string v1, "bindVoiceService"

    .line 6
    invoke-static {v0, v1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VoiceAssistantService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.smartisanos.voice"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->m:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "QSB.VoiceView"

    const-string v2, "unregisterCallback"

    .line 11
    invoke-static {v0, v2}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    iget-object v2, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l:Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;

    invoke-interface {v0, v2}, Lsmartisanos/app/voiceassistant/IVoiceAssistantService;->unregisterCallback(Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "onServiceDisconnected"

    .line 13
    invoke-static {v2, v0}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    iput-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    :cond_0
    if-eqz p1, :cond_1

    .line 15
    iput-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l:Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;

    :cond_1
    return-void
.end method

.method public final a(ZZ)V
    .locals 3

    const-string v0, "QSB.VoiceView"

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    if-eqz v1, :cond_0

    const-string v1, "stopRecongnize"

    .line 17
    invoke-static {v0, v1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    invoke-interface {v1, p1}, Lsmartisanos/app/voiceassistant/IVoiceAssistantService;->stopRecongnize(Z)V

    :cond_0
    if-eqz p2, :cond_1

    .line 19
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d()V

    .line 22
    iget-boolean p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c:Z

    if-eqz p1, :cond_2

    .line 23
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j:Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    if-eqz p1, :cond_2

    .line 24
    :goto_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;->onRecordStop()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 25
    :try_start_1
    invoke-static {v0, p1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d()V

    .line 27
    iget-boolean p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c:Z

    if-eqz p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j:Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 29
    :goto_2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d()V

    .line 30
    iget-boolean p2, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c:Z

    if-eqz p2, :cond_3

    .line 31
    iget-object p2, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j:Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    if-eqz p2, :cond_3

    .line 32
    invoke-interface {p2}, Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;->onRecordStop()V

    .line 33
    :cond_3
    throw p1
.end method

.method public b()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    invoke-virtual {p0, v1, v2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(ZZ)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i()V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(Z)V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->e:Landroid/view/View;

    invoke-static {v0}, Lb/a/a/o1/c/a;->d(Landroid/view/View;)V

    return-void
.end method

.method public final e()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00bb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f080262

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->e:Landroid/view/View;

    const v1, 0x7f08025d

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->f:Landroid/widget/ImageButton;

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6
    new-instance v0, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/panels/widget/VoiceView$c;-><init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;Lcom/android/quicksearchbox/panels/widget/VoiceView$a;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->h:Landroid/os/Vibrator;

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a()V

    return-void
.end method

.method public final f()V
    .locals 4

    const-string v0, "QSB.VoiceView"

    :try_start_0
    const-string v1, "registerCallback"

    .line 2
    invoke-static {v0, v1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    iget-object v2, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->l:Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lsmartisanos/app/voiceassistant/IVoiceAssistantService;->registerCallback(Lsmartisanos/app/voiceassistant/IVoiceAssistantCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    invoke-static {v0, v1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->g:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f10011c

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10011b

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f100075

    new-instance v2, Lcom/android/quicksearchbox/panels/widget/VoiceView$b;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView$b;-><init>(Lcom/android/quicksearchbox/panels/widget/VoiceView;)V

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->g:Landroid/app/AlertDialog;

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->g:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final h()V
    .locals 5

    const-string v0, "QSB.VoiceView"

    const/4 v1, 0x1

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c:Z

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->getRecongnizeType()I

    move-result v1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startRecongnize, type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->k:Lsmartisanos/app/voiceassistant/IVoiceAssistantService;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lsmartisanos/app/voiceassistant/IVoiceAssistantService;->startRecongnize(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 2

    const-string v0, "QSB.VoiceView"

    const-string v1, "unBindVoiceService"

    .line 2
    invoke-static {v0, v1}, Lb/a/a/n1/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->m:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const-wide/16 v0, 0x96

    const/4 p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_0

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d()V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 4
    iget-wide v6, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d:J

    sub-long/2addr v4, v6

    cmp-long p1, v4, v0

    if-lez p1, :cond_2

    .line 5
    iget-boolean p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c:Z

    if-nez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10
    invoke-virtual {p0, v2, v3}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(ZZ)V

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j:Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    if-eqz p1, :cond_3

    .line 12
    invoke-interface {p1}, Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;->onVoiceCancel()V

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    invoke-virtual {p0, v3, v2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->a(ZZ)V

    goto :goto_1

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->f:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->h:Landroid/os/Vibrator;

    const-wide/16 v4, 0x32

    invoke-virtual {p1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->d:J

    .line 19
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    const-wide/16 v4, 0x2710

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 21
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->i:Lcom/android/quicksearchbox/panels/widget/VoiceView$c;

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return v2
.end method

.method public setVoiceListener(Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/VoiceView;->j:Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;

    return-void
.end method
