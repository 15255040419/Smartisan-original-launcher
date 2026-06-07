.class public abstract Lcom/android/quicksearchbox/ui/SearchActivityView;
.super Landroid/widget/RelativeLayout;
.source "SearchActivityView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;
.implements Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;
.implements Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/ui/SearchActivityView$w;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$k;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$q;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$n;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$o;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$s;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$j;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$l;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$m;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$x;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$r;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$v;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$i;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$t;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$p;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$y;,
        Lcom/android/quicksearchbox/ui/SearchActivityView$u;
    }
.end annotation


# static fields
.field public static g0:Landroid/os/Handler;

.field public static h0:I

.field public static i0:I

.field public static j0:I

.field public static k0:I


# instance fields
.field public A:Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;

.field public B:Landroid/view/View$OnClickListener;

.field public C:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

.field public D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

.field public E:Landroid/graphics/drawable/Drawable;

.field public F:Landroid/graphics/drawable/Drawable;

.field public G:Landroid/graphics/drawable/Drawable;

.field public H:Landroid/graphics/drawable/Drawable;

.field public I:Landroid/graphics/drawable/Drawable;

.field public J:Z

.field public K:Lcom/android/quicksearchbox/ui/SearchActivityView$s;

.field public L:Lcom/android/quicksearchbox/ui/SearchActivityView$o;

.field public M:Lcom/android/quicksearchbox/ui/SearchActivityView$n;

.field public N:Ljava/lang/String;

.field public O:Li/p/a;

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Landroid/content/pm/PackageManager;

.field public W:Landroid/widget/LinearLayout;

.field public a:Lcom/android/quicksearchbox/Corpus;

.field public a0:Landroid/widget/LinearLayout;

.field public b:Lsmartisan/widget/SearchBar;

.field public b0:Landroid/widget/TextView;

.field public c:Landroid/widget/EditText;

.field public c0:Landroid/widget/TextView;

.field public d:Z

.field public d0:Landroid/widget/TextView;

.field public e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

.field public e0:Landroid/view/View;

.field public f:Lcom/android/quicksearchbox/ui/WebViewLayout;

.field public f0:Ljava/lang/Runnable;

.field public g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public h:Landroid/view/View;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/view/View;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/LinearLayout;

.field public n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

.field public o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/widget/TextView;

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/ImageButton;

.field public v:Landroid/widget/ImageButton;

.field public w:Lsmartisan/widget/SmartisanBlankView;

.field public x:Lcom/android/quicksearchbox/ui/SearchActivityView$i;

.field public y:Z

.field public z:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->d:Z

    .line 5
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->P:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->Q:Z

    .line 7
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->R:Z

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->S:I

    .line 9
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->T:Z

    .line 10
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->U:Z

    .line 11
    new-instance p1, Lcom/android/quicksearchbox/ui/SearchActivityView$c;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$c;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f0:Ljava/lang/Runnable;

    .line 12
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->l()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/SearchActivityView;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->S:I

    return p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/SearchActivityView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->I:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/SearchActivityView;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/SearchActivityView;J)V
    .locals 0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Lcom/android/quicksearchbox/ui/SearchActivityView;J)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/SearchActivityView;Ljava/util/List;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/ui/SearchActivityView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;JILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "*>;JI",
            "Landroid/view/KeyEvent;",
            ")Z"
        }
    .end annotation

    const/4 p4, 0x0

    const/16 v0, 0x42

    if-eq p3, v0, :cond_1

    const/16 v0, 0x54

    if-eq p3, v0, :cond_1

    const/16 v0, 0x17

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    return p4

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    const/4 p3, 0x0

    .line 37
    invoke-interface {p0, p3, p1, p2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->onSuggestionClicked(Landroid/view/View;J)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return p4
.end method

.method public static synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->R()V

    return-void
.end method

.method public static b(Lcom/android/quicksearchbox/ui/SearchActivityView;J)V
    .locals 4

    .line 21
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 22
    sget-object v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->T:Z

    if-nez v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 24
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->L:Lcom/android/quicksearchbox/ui/SearchActivityView$o;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p1

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq p1, v0, :cond_0

    const-string p1, "Previous fetch net hot words task is not finished"

    .line 26
    invoke-static {p1}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->L:Lcom/android/quicksearchbox/ui/SearchActivityView$o;

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 28
    :cond_0
    new-instance p1, Lcom/android/quicksearchbox/ui/SearchActivityView$o;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$o;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->L:Lcom/android/quicksearchbox/ui/SearchActivityView$o;

    .line 29
    :try_start_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->L:Lcom/android/quicksearchbox/ui/SearchActivityView$o;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Fetch net hot words RejectedExecutionException"

    .line 30
    invoke-static {p1}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 31
    :goto_0
    iput-boolean p2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->T:Z

    goto :goto_1

    .line 32
    :cond_1
    sget-object p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public static b(I)Z
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_0

    const/16 v0, 0x54

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Landroid/view/View;)V
    .locals 2

    .line 2
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x3

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/ui/SearchActivityView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->J:Z

    return p0
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->k(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/quicksearchbox/ui/SearchActivityView;)Lcom/android/quicksearchbox/ui/SearchActivityView$s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->K:Lcom/android/quicksearchbox/ui/SearchActivityView$s;

    return-object p0
.end method

.method public static synthetic f(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a0:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e0:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic h(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->F()V

    return-void
.end method

.method public static synthetic i(Lcom/android/quicksearchbox/ui/SearchActivityView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->I:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public static synthetic j(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->U()V

    return-void
.end method

.method public static k(Lcom/android/quicksearchbox/ui/SearchActivityView;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->U:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->M:Lcom/android/quicksearchbox/ui/SearchActivityView$n;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v2, :cond_0

    const-string v0, "Previous fetch search\'s history data task is not finished"

    .line 4
    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->M:Lcom/android/quicksearchbox/ui/SearchActivityView$n;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 6
    :cond_0
    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityView$n;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$n;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->M:Lcom/android/quicksearchbox/ui/SearchActivityView$n;

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->M:Lcom/android/quicksearchbox/ui/SearchActivityView$n;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Fetch search\'s history data task RejectedExecutionException"

    .line 8
    invoke-static {v0}, Lb/a/a/n1/q;->d(Ljava/lang/String;)V

    .line 9
    :goto_0
    iput-boolean v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->U:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->J:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->T:Z

    .line 3
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->U:Z

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Ljava/lang/String;)V

    .line 5
    iget-boolean v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->P:Z

    invoke-static {}, Lb/a/a/c1/d;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->Q:Z

    .line 6
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->R:Z

    .line 7
    invoke-static {}, Lb/a/a/c1/d;->b()Z

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    move v0, v3

    .line 8
    :cond_1
    invoke-static {}, Lb/a/a/c1/d;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->P:Z

    .line 9
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->Q:Z

    .line 10
    invoke-static {}, Lb/a/a/c1/d;->b()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->R:Z

    const-wide/16 v1, 0x0

    .line 11
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(JZZ)V

    .line 12
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->H()V

    return-void
.end method

.method public B()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->J:Z

    return-void
.end method

.method public C()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->V()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->G()V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    sget-object v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public E()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x12c

    .line 1
    invoke-virtual {p0, v1, v2, v0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(JZZ)V

    return-void
.end method

.method public final F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 3
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v2}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/android/quicksearchbox/ui/SearchActivityView;->i0:I

    goto :goto_1

    :cond_1
    sget v2, Lcom/android/quicksearchbox/ui/SearchActivityView;->h0:I

    :goto_1
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v0, -0x2

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    .line 5
    :goto_2
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public final G()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    .line 2
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lb/a/a/n1/c0;->a(Lcom/android/quicksearchbox/SuggestionCursor;Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4
    invoke-virtual {v1, v2, v0}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->registerObserverAndReceiver(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public H()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZ)V

    return-void
.end method

.method public final I()V
    .locals 2

    .line 1
    invoke-static {}, Lb/a/a/c1/d;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    sget-object v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->c(Z)V

    :goto_0
    return-void
.end method

.method public J()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/y0;->j()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Z)V

    return v0
.end method

.method public final K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->w:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->w:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getPrimaryHintView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->w:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getSecondaryHintView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->w:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getSecondaryHintView()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->w:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getSecondaryHintView()Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x40c00000    # 6.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->w:Lsmartisan/widget/SmartisanBlankView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanBlankView;->getActionButton()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$d;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$d;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public L()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->O:Li/p/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Li/p/a;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Li/p/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->O:Li/p/a;

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->O:Li/p/a;

    const v1, 0x7f100069

    invoke-virtual {v0, v1}, Li/p/a;->setTitle(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->O:Li/p/a;

    const v1, 0x7f100068

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityView$f;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$f;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1, v2}, Li/p/a;->a(ILandroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->O:Li/p/a;

    sget-object v1, Lsmartisan/widget/ShadowButton$b;->b:Lsmartisan/widget/ShadowButton$b;

    invoke-virtual {v0, v1}, Li/p/a;->a(Lsmartisan/widget/ShadowButton$b;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->O:Li/p/a;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public abstract M()V
.end method

.method public N()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->o()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    const-string v0, "A170056"

    .line 2
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public O()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b(Z)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->P()V

    :goto_0
    return-void
.end method

.method public P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lb/a/a/n1/h0;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public Q()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityView$g;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$g;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final R()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->i:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->l:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$x;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$x;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 3
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v0

    new-instance v1, Lcom/android/quicksearchbox/ui/SearchActivityView$e;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$e;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->setContentChangeListener(Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;)V

    return-void
.end method

.method public final U()V
    .locals 4

    const-string v0, "A170078"

    .line 1
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lb/a/a/n1/h0;->a()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v2

    const-class v3, Lcom/android/quicksearchbox/preferences/SearchSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "A170057"

    .line 4
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public V()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lb/a/a/y0;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lb/a/a/n1/h0;->c(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    return-void
.end method

.method public W()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->p()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j(Z)V

    return-void
.end method

.method public final a(Lb/a/a/e1/b;)I
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 83
    :goto_0
    invoke-virtual {p1}, Lb/a/a/e1/b;->d()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 84
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->f(I)Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    invoke-virtual {v3}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->getWord()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 87
    iget-object v5, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 88
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v7, 0x7f0b00a5

    .line 89
    invoke-virtual {v5, v7, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v7, 0x1

    goto :goto_1

    .line 90
    :cond_1
    check-cast v5, Landroid/widget/TextView;

    const v7, 0x7f07015a

    .line 91
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f050142

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    move v7, v0

    .line 93
    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f0800fe

    .line 94
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setId(I)V

    .line 95
    invoke-virtual {v5, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f0800fd

    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 98
    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_2

    .line 99
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-lez v2, :cond_5

    .line 100
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/a/e1/a;->b()V

    .line 101
    :cond_5
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const-string v0, "A170080"

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->a(Ljava/lang/String;)V

    return v2
.end method

.method public a(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/quicksearchbox/Corpora;->getCorpus(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;

    move-result-object v1

    if-nez v1, :cond_1

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown corpus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "QSB.SearchActivityView"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final a()V
    .locals 2

    .line 36
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->clearObserverAndReceivers(Landroid/content/Context;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->C:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->b(IZ)V

    return-void
.end method

.method public a(JZZ)V
    .locals 2

    if-nez p4, :cond_1

    .line 44
    iget-object p4, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 45
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object p4

    invoke-virtual {p4}, Lb/a/a/e1/a;->c()Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    .line 46
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 p1, 0x12c

    .line 47
    invoke-static {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Lcom/android/quicksearchbox/ui/SearchActivityView;J)V

    .line 48
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->I()V

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    sget-object p4, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 50
    sget-object p4, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-static {p4, v0, p3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p3

    .line 51
    sget-object p4, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    invoke-virtual {p4, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .line 16
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZZ)V

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setQueryAndUpdate(Ljava/lang/String;)V

    const v0, 0x7f0800f6

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lb/a/a/n1/d$j;->a(I)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lb/a/a/n1/d$j;->b(I)V

    .line 20
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    return-void
.end method

.method public synthetic a(Landroid/view/View;IIII)V
    .locals 0

    .line 9
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    if-le p1, p2, :cond_0

    if-eqz p5, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    :cond_0
    return-void
.end method

.method public final a(Lb/a/a/e1/b;I)V
    .locals 7

    .line 57
    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v0

    if-gtz v0, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v2

    if-le v0, v2, :cond_1

    move v0, v1

    .line 61
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 63
    :goto_1
    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 64
    invoke-virtual {p1, v0}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    add-int v2, v0, p2

    .line 65
    invoke-virtual {p1, v2}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/e1/b$a;->b:Ljava/lang/String;

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 68
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v2, 0x7f08004c

    .line 71
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setId(I)V

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 73
    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p1, v0}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/e1/b$a;->a:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f08004b

    .line 75
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 76
    invoke-virtual {p1, v0}, Lb/a/a/e1/b;->a(I)Lb/a/a/e1/b$a;

    move-result-object v2

    iget-object v2, v2, Lb/a/a/e1/b$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0601b0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 78
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 79
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v4, 0x0

    .line 80
    invoke-virtual {v3, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 81
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result p1

    const-string p2, "A170079"

    const-string v0, "use_suggestions_exposure"

    .line 82
    invoke-static {p2, v0, p1}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 21
    iget-object p2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "A170081"

    .line 11
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    const-string v0, "A170083"

    const-string v1, "associative_word_position"

    .line 12
    invoke-static {v0, v1, p2}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v0}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZZ)V

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setQueryAndUpdate(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->y:Z

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->y:Z

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 52
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    sget-object v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 54
    new-instance v0, Lb/a/a/e1/b;

    invoke-direct {v0}, Lb/a/a/e1/b;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lb/a/a/e1/b;->a(Ljava/util/List;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lb/a/a/e1/b;)I

    :cond_0
    return-void
.end method

.method public synthetic a(Lsmartisan/widget/search/WebSearchViewGroup;Lsmartisan/widget/search/WebSearchViewGroup$d;)V
    .locals 0

    .line 7
    invoke-virtual {p1, p2}, Lsmartisan/widget/search/WebSearchViewGroup;->setTrackerCallBack(Lsmartisan/widget/search/WebSearchViewGroup$TrackerCallback;)V

    .line 8
    invoke-virtual {p1}, Lsmartisan/widget/search/WebSearchViewGroup;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Lb/a/a/m1/b;

    invoke-direct {p2, p0}, Lb/a/a/m1/b;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->A:Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;->onSearchClicked(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 40
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lb/a/a/y0;)[Landroid/view/inputmethod/CompletionInfo;
    .locals 8

    .line 27
    invoke-virtual {p1}, Lb/a/a/y0;->l()Lcom/android/quicksearchbox/CorpusResult;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 28
    :cond_0
    invoke-interface {p1}, Lcom/android/quicksearchbox/SuggestionCursor;->getCount()I

    move-result v0

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->q()Z

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 31
    invoke-interface {p1, v3}, Lcom/android/quicksearchbox/SuggestionCursor;->moveTo(I)V

    if-eqz v2, :cond_1

    .line 32
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->isWebSearchSuggestion()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 33
    :cond_1
    invoke-interface {p1}, Lcom/android/quicksearchbox/Suggestion;->getSuggestionText1()Ljava/lang/String;

    move-result-object v4

    .line 34
    new-instance v5, Landroid/view/inputmethod/CompletionInfo;

    int-to-long v6, v3

    invoke-direct {v5, v6, v7, v3, v4}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/inputmethod/CompletionInfo;

    return-object p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .line 34
    new-instance v0, Lb/a/a/n1/o;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lb/a/a/n1/o;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQueryInner()Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0500ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, p1, v1, v2}, Lb/a/a/n1/o;->a(Ljava/lang/String;IZ)Lb/a/a/n1/o;

    .line 38
    invoke-virtual {v0}, Lb/a/a/n1/o;->a()Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b0:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->d0:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a0:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 15
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 4

    .line 3
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->J:Z

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/e1/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/a/e1/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/util/List;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Lb/a/a/e1/a;->d()Lb/a/a/e1/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/e1/a;->c()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide/16 v0, 0x12c

    .line 10
    invoke-static {p0, v0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Lcom/android/quicksearchbox/ui/SearchActivityView;J)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->h:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    if-eqz p1, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    if-eqz p1, :cond_5

    .line 13
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b()V

    :cond_5
    return-void
.end method

.method public c()V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void
.end method

.method public c(Z)V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->r:Landroid/view/View;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lb/a/a/y0;)V

    return-void
.end method

.method public final d(Z)V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->q:Landroid/view/View;

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public abstract e()V
.end method

.method public e(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->a(Z)V

    return-void
.end method

.method public f()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quicksearchbox/ui/SuggestionsAdapter<",
            "Landroid/widget/ListAdapter;",
            ">;"
        }
    .end annotation

    .line 23
    new-instance v0, Lb/a/a/m1/e;

    new-instance v1, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;

    .line 24
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/b0;->c(Landroid/content/Context;)Lcom/android/quicksearchbox/ui/SuggestionViewFactory;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lb/a/a/m1/e;-><init>(Lb/a/a/m1/g;)V

    return-object v0
.end method

.method public final f(Z)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f0:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->F:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->I:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702fa

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->I:Landroid/graphics/drawable/Drawable;

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->I:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->G:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702e9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->G:Landroid/graphics/drawable/Drawable;

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f0:Ljava/lang/Runnable;

    const-wide/16 v1, 0x190

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->F:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->F:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->H:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_5

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702fb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->H:Landroid/graphics/drawable/Drawable;

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 17
    :cond_6
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 19
    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_7

    .line 20
    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    .line 21
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_7
    return-void
.end method

.method public abstract g()Lcom/android/quicksearchbox/Promoter;
.end method

.method public g(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->a(ZLjava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->F()V

    return-void
.end method

.method public getActivity()Lcom/android/quicksearchbox/SearchActivity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/android/quicksearchbox/SearchActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/android/quicksearchbox/SearchActivity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAgentSearchMode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public getCorpora()Lcom/android/quicksearchbox/Corpora;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->p()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    return-object v0
.end method

.method public getCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a:Lcom/android/quicksearchbox/Corpus;

    return-object v0
.end method

.method public getCorpusName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCurrTabIndex()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->C:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->getCurrTabIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v0

    return-object v0
.end method

.method public getLastQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->N:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->N:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getQsbApplication()Lb/a/a/b0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->J:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQueryInner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueryInner()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract getSearchCorpus()Lcom/android/quicksearchbox/Corpus;
.end method

.method public getSuggestions()Lb/a/a/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getSuggestions()Lb/a/a/y0;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSearch()Lb/a/a/a1;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQsbApplication()Lb/a/a/b0;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/a/b0;->D()Lb/a/a/a1;

    move-result-object v0

    return-object v0
.end method

.method public getWebCorpus()Lcom/android/quicksearchbox/Corpus;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCorpora()Lcom/android/quicksearchbox/Corpora;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpora;->getWebCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "QSB.SearchActivityView"

    const-string v2, "No web corpus"

    .line 2
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public h()V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->O()V

    return-void
.end method

.method public h(Z)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->m()V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c(Z)Z

    move-result p1

    return p1
.end method

.method public i()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->O:Li/p/a;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final i(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 0

    .line 4
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e0:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->i(Z)V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->F:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->j0:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->k0:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->V:Landroid/content/pm/PackageManager;

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602af

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->h0:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602ae

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->i0:I

    .line 9
    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityView$q;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$q;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    sput-object v0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g0:Landroid/os/Handler;

    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f080062

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080061

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->setBottonPanelsViewListener(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;)V

    const v0, 0x7f080221

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/T9PanelView;

    .line 7
    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/T9PanelView;->setT9PanelOnClickListener(Lcom/android/quicksearchbox/panels/widget/T9PanelView$T9PanelOnClickListener;)V

    return-void
.end method

.method public abstract n()V
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lb/a/a/c1/d;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-virtual {p1, v2}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b(Z)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->P()V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZ)V

    goto/16 :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    .line 8
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/SearchActivity;->L()V

    const-string p1, "A170007"

    .line 9
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getCurrTabIndex()I

    move-result p1

    if-nez p1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lb/a/a/n1/h0;->f(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    :cond_3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->E()V

    goto/16 :goto_2

    .line 13
    :sswitch_1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->d0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 14
    :sswitch_2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 15
    :sswitch_3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b0:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 16
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;

    const v3, 0x7f0800fd

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 18
    invoke-virtual {v0}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->isAppWord()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    invoke-virtual {v0}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->getApp()Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$AppAd;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lb/a/a/n1/h0;->e(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-virtual {v0}, Lcom/android/quicksearchbox/network/entity/response/HotWordsResponse$HotWord;->getWord()Ljava/lang/String;

    move-result-object v0

    const-string v3, "A170021"

    const-string v4, "click_hotword"

    .line 22
    invoke-static {v3, v4, v0}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "A170053"

    const-string v4, "click_hotword_site"

    .line 23
    invoke-static {v3, v4, p1}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 25
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1, v2, v1, v2}, Lcom/android/quicksearchbox/SearchActivity;->a(ZZZ)V

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setQueryAndUpdate(Ljava/lang/String;)V

    .line 27
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    goto :goto_2

    :sswitch_5
    const v0, 0x7f0800f4

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7f0800f3

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-ne v0, v2, :cond_7

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 31
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    .line 32
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lb/a/a/n1/h0;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "A170077"

    .line 33
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 34
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Landroid/view/View;)V

    goto :goto_2

    .line 35
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Landroid/view/View;)V

    goto :goto_2

    .line 36
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->L()V

    goto :goto_2

    .line 37
    :sswitch_7
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->U()V

    goto :goto_2

    .line 38
    :sswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f08004b

    .line 39
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 40
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lb/a/a/n1/h0;->d(Landroid/content/Context;Ljava/lang/String;)Z

    .line 41
    invoke-static {p1, v0}, Lb/a/a/n1/d$d;->a(ILjava/lang/String;)V

    const-string v0, "A170052"

    const-string v1, "search_suggestions_site"

    .line 42
    invoke-static {v0, v1, p1}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    :cond_8
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f08004c -> :sswitch_8
        0x7f080064 -> :sswitch_7
        0x7f080094 -> :sswitch_6
        0x7f0800f7 -> :sswitch_5
        0x7f0800fe -> :sswitch_4
        0x7f080246 -> :sswitch_3
        0x7f080247 -> :sswitch_2
        0x7f080248 -> :sswitch_1
        0x7f080256 -> :sswitch_0
    .end sparse-switch
.end method

.method public onClickT9Panel(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a(Z)Z

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v1, p1, v0}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->n()V

    const v0, 0x7f080064

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080185

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    const v0, 0x7f080264

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/WebViewLayout;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    new-instance v1, Lb/a/a/m1/a;

    invoke-direct {v1, p0}, Lb/a/a/m1/a;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/WebViewLayout;->setWebSearchViewDelegate(Lcom/android/quicksearchbox/ui/WebViewLayout$WebSearchViewInitDelegate;)V

    const v0, 0x7f08020c

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityView$p;

    invoke-direct {v2, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$p;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    invoke-virtual {v0, v2}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityView$y;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$y;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    new-instance v2, Lcom/android/quicksearchbox/ui/SearchActivityView$v;

    invoke-direct {v2, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$v;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->a(Z)V

    .line 13
    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityView$w;

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$w;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    invoke-static {v0}, Lb/a/a/n1/k;->a(Lcom/android/quicksearchbox/util/Consumer;)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0b009b

    .line 15
    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->W:Landroid/widget/LinearLayout;

    .line 16
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->W:Landroid/widget/LinearLayout;

    const v3, 0x7f0800ee

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a0:Landroid/widget/LinearLayout;

    .line 17
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a0:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b0:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a0:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c0:Landroid/widget/TextView;

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a0:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->d0:Landroid/widget/TextView;

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->W:Landroid/widget/LinearLayout;

    const v3, 0x7f080256

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e0:Landroid/view/View;

    .line 21
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->b0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->d0:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e0:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->W:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 26
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f()Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    .line 27
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$v;

    invoke-direct {v3, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$v;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    invoke-interface {v0, v3}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 28
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    instance-of v3, v0, Lb/a/a/m1/e;

    if-eqz v3, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;

    .line 30
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$a;->a(Lcom/android/quicksearchbox/ui/SuggestionsListAdapter$SuggestionsListener;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$u;

    invoke-direct {v3, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$u;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 32
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$r;

    invoke-direct {v3, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$r;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0800ca

    .line 33
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->h:Landroid/view/View;

    const v0, 0x7f0800cb

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->i:Landroid/view/View;

    const v0, 0x7f0800ce

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->j:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->j:Landroid/widget/TextView;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$m;

    invoke-direct {v3}, Lcom/android/quicksearchbox/ui/SearchActivityView$m;-><init>()V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f08005a

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SmartisanBlankView;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->w:Lsmartisan/widget/SmartisanBlankView;

    .line 38
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->K()V

    const v0, 0x7f08020b

    .line 39
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->l:Landroid/view/View;

    .line 40
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->l:Landroid/view/View;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$a;

    invoke-direct {v3, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$a;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 41
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$b;

    invoke-direct {v3, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$b;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0800f5

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const v0, 0x7f080186

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const v0, 0x7f080094

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->p:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080250

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->q:Landroid/view/View;

    const v0, 0x7f0800f8

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->r:Landroid/view/View;

    .line 48
    new-instance v0, Lcom/android/quicksearchbox/ui/SearchActivityView$i;

    invoke-direct {v0, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$i;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->x:Lcom/android/quicksearchbox/ui/SearchActivityView$i;

    .line 49
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->u:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 50
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->x:Lcom/android/quicksearchbox/ui/SearchActivityView$i;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->u:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$t;

    invoke-direct {v3, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$t;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 53
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->x:Lcom/android/quicksearchbox/ui/SearchActivityView$i;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 55
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->x:Lcom/android/quicksearchbox/ui/SearchActivityView$i;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 56
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->s:Landroid/widget/TextView;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$l;

    invoke-direct {v3, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$l;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 58
    iget-object v3, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->x:Lcom/android/quicksearchbox/ui/SearchActivityView$i;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 59
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->t:Landroid/widget/TextView;

    new-instance v3, Lcom/android/quicksearchbox/ui/SearchActivityView$j;

    invoke-direct {v3, p0, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView$j;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;Lcom/android/quicksearchbox/ui/SearchActivityView$a;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    :cond_4
    iput-boolean v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->y:Z

    const v0, 0x7f08021c

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    iput-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->C:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    .line 62
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->C:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->setListener(Lcom/android/quicksearchbox/panels/widget/SwitchTabBar$Listener;)V

    const v0, 0x7f08021a

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    return-void
.end method

.method public onLongClickT9Panel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    return-void
.end method

.method public onRecordStop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Z)V

    return-void
.end method

.method public onTabSwitch(IIZ)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-static {v0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->m()V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    invoke-virtual {v0, p3}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const/16 v1, 0xb1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 8
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->P()V

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0, p3}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a(Z)Z

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/android/quicksearchbox/SearchActivity;->a(II)V

    return-void
.end method

.method public onVoiceCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const v1, 0x7f10015f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Z)V

    return-void
.end method

.method public onVoiceCompleted()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Z)V

    return-void
.end method

.method public onVoiceStart()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->i()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->f(Z)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "TAG_LAUNCHER_PULL_TO_ACTIVITY_NAME"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    new-instance p1, Lcom/android/quicksearchbox/ui/SearchActivityView$h;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/ui/SearchActivityView$h;-><init>(Lcom/android/quicksearchbox/ui/SearchActivityView;)V

    sget-boolean v0, Lb/a/a/c1/a;->e:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x96

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x64

    :goto_0
    invoke-static {p1, v0, v1}, Lb/a/a/c1/g/b;->a(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public q()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getSearchCorpus()Lcom/android/quicksearchbox/Corpus;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/Corpus;->isWebCorpus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setLimitSuggestionsToViewHeight(Z)V

    return-void
.end method

.method public setCorpus(Lcom/android/quicksearchbox/Corpus;)V
    .locals 1

    .line 4
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->a:Lcom/android/quicksearchbox/Corpus;

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->g()Lcom/android/quicksearchbox/Promoter;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setPromoter(Lcom/android/quicksearchbox/Promoter;)V

    return-void
.end method

.method public setCorpus(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Ljava/lang/String;)Lcom/android/quicksearchbox/Corpus;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->setCorpus(Lcom/android/quicksearchbox/Corpus;)V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->W()V

    return-void
.end method

.method public setExitClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->B:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setHistoryInfo(Lb/a/a/e1/b;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1
    invoke-virtual {p1}, Lb/a/a/e1/b;->c()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Lb/a/a/e1/b;->c()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    move v1, v0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lb/a/a/e1/b;->c()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_6

    .line 5
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->c(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->c(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 8
    iget-object v4, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0b00a4

    .line 10
    invoke-virtual {v4, v6, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move v6, v3

    goto :goto_1

    .line 11
    :cond_3
    check-cast v4, Landroid/widget/TextView;

    move v6, v0

    .line 12
    :goto_1
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v7, 0x7f0800f7

    .line 13
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    const v7, 0x7f0800f6

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 15
    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const v2, 0x7f0800f4

    .line 17
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->e(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const v2, 0x7f0800f3

    .line 18
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v7}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->e(I)I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 20
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 21
    :try_start_0
    invoke-virtual {p1, v1}, Lb/a/a/e1/b;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/quicksearchbox/LauncherIconBridge;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_launcher_icon_ready

    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->V:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_launcher_icon_ready

    .line 22
    sget v3, Lcom/android/quicksearchbox/ui/SearchActivityView;->j0:I

    sget v7, Lcom/android/quicksearchbox/ui/SearchActivityView;->j0:I

    invoke-virtual {v2, v0, v0, v3, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual {v4, v2, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 24
    sget v2, Lcom/android/quicksearchbox/ui/SearchActivityView;->k0:I

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 25
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 26
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 27
    :cond_4
    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-eqz v6, :cond_5

    .line 28
    iget-object v2, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {v2, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 29
    :cond_6
    :goto_3
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_7

    move v0, v3

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->c(Z)V

    .line 30
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_8

    .line 31
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const-string v0, "A170054"

    const-string v1, "search_history_impressions"

    .line 33
    invoke-static {v0, v1, p1}, Lb/a/a/n1/d$h;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    :cond_8
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    const-string v0, "A170044"

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/ui/FlowLayoutEx;->a(Ljava/lang/String;)V

    return-void

    .line 35
    :cond_9
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->c(Z)V

    .line 36
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->o:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    if-eqz p1, :cond_a

    .line 37
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_a
    return-void
.end method

.method public setLastQuery(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->N:Ljava/lang/String;

    return-void
.end method

.method public setListOverScroll(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method

.method public setMaxPromotedResults(I)V
    .locals 0

    return-void
.end method

.method public setMaxPromotedSuggestions(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setLimitSuggestionsToViewHeight(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setMaxPromoted(I)V

    return-void
.end method

.method public setQueryAndUpdate(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public setQueryListener(Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->z:Lcom/android/quicksearchbox/ui/SearchActivityView$QueryListener;

    return-void
.end method

.method public setRecommendInfo(Lb/a/a/e1/b;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lb/a/a/e1/b;->b()I

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lb/a/a/e1/b;->d()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lb/a/a/c1/d;->c()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lb/a/a/e1/b;I)V

    const-string v1, "A170051"

    .line 6
    invoke-static {v1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(Lb/a/a/e1/b;)I

    move-result p1

    iput p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->S:I

    .line 9
    invoke-static {}, Lb/a/a/c1/d;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string p1, "A170022"

    .line 12
    invoke-static {p1}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->q:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->n:Lcom/android/quicksearchbox/ui/FlowLayoutEx;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void

    .line 15
    :cond_3
    :goto_2
    iput v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->S:I

    .line 16
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->d(Z)V

    return-void
.end method

.method public setSearchClickListener(Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->A:Lcom/android/quicksearchbox/ui/SearchActivityView$SearchClickListener;

    return-void
.end method

.method public abstract setSuggestionClickListener(Lcom/android/quicksearchbox/ui/SuggestionClickListener;)V
.end method

.method public setSuggestions(Lb/a/a/y0;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lb/a/a/y0;->a()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0, p1}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->setSuggestions(Lb/a/a/y0;)V

    return-void
.end method

.method public setVoiceSearchButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->v:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->g:Lcom/android/quicksearchbox/ui/SuggestionsAdapter;

    invoke-interface {v0}, Lcom/android/quicksearchbox/ui/SuggestionsAdapter;->getListAdapter()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    .line 3
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->f()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->D:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->e:Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/ui/pinnedheaderlist/HeadersListView;->setSuggestionsAdapter(Lcom/android/quicksearchbox/ui/SuggestionsAdapter;)V

    .line 4
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->setContentChangeListener(Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/WebViewLayout;->b()V

    return-void
.end method

.method public w()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->J:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->k(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, v3, v1, v1}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(JZZ)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-static {v1}, Lb/a/a/n1/d$i;->a(I)V

    return-void
.end method

.method public x()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->J:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x64

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a(JZZ)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->c:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    .line 6
    invoke-static {v0}, Lb/a/a/n1/d$i;->a(I)V

    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/WebViewLayout;->c()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->i()V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->a()V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->C:Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/SwitchTabBar;->e()V

    return-void
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/ui/SearchActivityView;->f:Lcom/android/quicksearchbox/ui/WebViewLayout;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/ui/WebViewLayout;->d()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->getActivity()Lcom/android/quicksearchbox/SearchActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quicksearchbox/SearchActivity;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->j()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/ui/SearchActivityView;->Q()V

    :goto_0
    return-void
.end method
