.class public Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;
.super Landroid/widget/FrameLayout;
.source "TNTSearchActivityView.kt"

# interfaces
.implements Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;
.implements Lcom/android/quicksearchbox/tnt/QueryFinishListener;
.implements Lcom/android/quicksearchbox/tnt/QueryStartListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;,
        Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;,
        Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;
    }
.end annotation


# static fields
.field public static p:J

.field public static q:Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;

.field public static final r:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public e:Z

.field public f:Z

.field public g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;

.field public h:Z

.field public i:Z

.field public j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

.field public final k:Lb/a/a/e0;

.field public l:Z

.field public final m:I

.field public n:I

.field public o:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;-><init>(Ld/q/c/c;)V

    sput-object v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->r:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "TNTSearchActivityView"

    .line 3
    iput-object p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->b:Ljava/lang/String;

    const/16 p2, 0x12c

    .line 4
    iput p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c:I

    const/16 p2, 0x32

    .line 5
    iput p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->d:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->e:Z

    .line 7
    invoke-static {p1}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object p1

    const-string p2, "QsbApplication.get(context)"

    invoke-static {p1, p2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lb/a/a/e0;

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->k:Lb/a/a/e0;

    const/4 p1, 0x2

    .line 8
    iput p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->m:I

    return-void

    .line 9
    :cond_0
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type com.android.quicksearchbox.SearchSettingsImpl"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(J)V
    .locals 0

    .line 3
    sput-wide p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->p:J

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->i:Z

    return p0
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->e:Z

    return-void
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->e:Z

    return p0
.end method

.method public static final synthetic c(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    return-object p0
.end method

.method public static final synthetic d(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Lb/a/a/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->k:Lb/a/a/e0;

    return-object p0
.end method

.method public static final synthetic e(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->f:Z

    return p0
.end method

.method public static final getQueryStartTime()J
    .locals 2

    sget-wide v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->p:J

    return-wide v0
.end method

.method public static final synthetic k()Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->q:Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;

    return-object v0
.end method

.method public static final setQueryStartTime(J)V
    .locals 0

    sput-wide p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->p:J

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->o:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->o:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 1

    .line 28
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->c()V

    return-void
.end method

.method public final a(Landroid/app/Activity;Landroid/graphics/Rect;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p2, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Le/a/n0;->a()Le/a/v;

    move-result-object v0

    invoke-static {v0}, Le/a/a0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v4, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$i;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;Landroid/app/Activity;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Le/a/d;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Le/a/c0;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->f:Z

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->b(Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->f:Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish search by touch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "outside"

    goto :goto_0

    :cond_0
    const-string p1, "inside"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/n1/q;->c(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getActivity()Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 10
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->n:I

    iget v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->m:I

    const/4 v2, 0x1

    if-gt v0, v1, :cond_0

    add-int/2addr v0, v2

    .line 11
    iput v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->n:I

    .line 12
    :cond_0
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->e(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-nez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_4

    .line 14
    iput-boolean v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->l:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getActivity()Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return v2

    :cond_3
    invoke-static {}, Ld/q/c/d;->a()V

    throw v1

    .line 16
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 17
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->n:I

    if-ne v0, v2, :cond_5

    .line 18
    iput-boolean v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->l:Z

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_9

    .line 20
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->l:Z

    if-nez v0, :cond_a

    .line 21
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->d(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-nez v0, :cond_6

    :goto_2
    move p1, v2

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_7
    move p1, v3

    :goto_3
    if-eqz p1, :cond_a

    .line 23
    iput-boolean v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->l:Z

    .line 24
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getActivity()Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return v2

    :cond_8
    invoke-static {}, Ld/q/c/d;->a()V

    throw v1

    .line 25
    :cond_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_a

    .line 26
    iput-boolean v3, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->l:Z

    :cond_a
    return v3
.end method

.method public final b()V
    .locals 0

    .line 7
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    .line 6
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$j;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$j;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Z)V
    .locals 1

    .line 3
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_0

    .line 4
    sget p1, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 5
    :cond_0
    sget p1, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    sget p2, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->i()V

    .line 3
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->setContentChangeListener(Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;)V

    .line 4
    sput-object v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->q:Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;

    return-void
.end method

.method public final d()V
    .locals 1

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->j()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_d

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xa0

    if-ne v0, v1, :cond_2

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 4
    sget v0, Lcom/smartisanos/quicksearch/R$id;->btn_setting:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->callOnClick()Z

    goto/16 :goto_5

    .line 5
    :cond_1
    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    const-string v2, "tnt_search_content"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 6
    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b(I)V

    goto/16 :goto_5

    :cond_2
    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 7
    :goto_1
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eq v1, v2, :cond_d

    .line 8
    :cond_4
    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b(I)V

    goto/16 :goto_5

    :cond_5
    const/16 v1, 0x10

    const/16 v3, 0x8

    if-le v3, v0, :cond_6

    goto :goto_2

    :cond_6
    if-lt v1, v0, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    const/16 v1, 0x99

    const/16 v3, 0x91

    if-le v3, v0, :cond_8

    goto :goto_4

    :cond_8
    if-lt v1, v0, :cond_b

    .line 9
    :goto_3
    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v1

    if-eq v1, v2, :cond_d

    .line 10
    :cond_9
    sget-object v1, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v1, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->c(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    xor-int/2addr v3, v2

    and-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    xor-int/2addr v3, v2

    and-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    xor-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 12
    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b(I)V

    goto :goto_5

    .line 13
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    xor-int/2addr v3, v2

    and-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v3

    xor-int/2addr v3, v2

    and-int/2addr v1, v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    xor-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_d

    .line 14
    sget v1, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->b(I)V

    goto :goto_5

    :cond_b
    :goto_4
    const/16 v1, 0x6f

    if-ne v0, v1, :cond_d

    .line 15
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getActivity()Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    goto :goto_5

    :cond_c
    invoke-static {}, Ld/q/c/d;->a()V

    const/4 p1, 0x0

    throw p1

    .line 16
    :cond_d
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->f(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-nez v0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    const/4 p1, -0x1

    .line 4
    invoke-static {p1}, Landroid/app/SmtPCUtilsInner;->smtScreenshot(I)V

    goto :goto_4

    .line 5
    :cond_3
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->g(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-nez v0, :cond_4

    :goto_2
    move v2, v1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    const/4 p1, -0x2

    .line 7
    invoke-static {p1}, Landroid/app/SmtPCUtilsInner;->smtScreenshot(I)V

    goto :goto_4

    .line 8
    :cond_6
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_7

    goto :goto_4

    .line 9
    :cond_7
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 10
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_4
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "ev"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->j:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->i:Z

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Z)V

    .line 5
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final e()V
    .locals 1

    .line 2
    iget v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->c:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->b(I)V

    return-void
.end method

.method public final f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->h:Z

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->h()V

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v1, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->h:Z

    return-void
.end method

.method public final getActivity()Lcom/android/quicksearchbox/tnt/TNTSearchActivity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/android/quicksearchbox/tnt/TNTSearchActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getDBG()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a:Z

    return v0
.end method

.method public final getMQueryListener()Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;

    return-object v0
.end method

.method public final getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->h:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->getQueryInner()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getQueryInner()Ljava/lang/String;
    .locals 8

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "search_editor"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    const-string v0, ""

    goto :goto_6

    .line 3
    :cond_2
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    iget v4, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->d:I

    if-le v3, v4, :cond_3

    invoke-interface {v0, v1, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 4
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v2

    move v5, v1

    move v4, v3

    move v3, v5

    :goto_2
    if-gt v3, v4, :cond_9

    if-nez v5, :cond_4

    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v4

    .line 6
    :goto_3
    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-gt v6, v7, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v1

    :goto_4
    if-nez v5, :cond_7

    if-nez v6, :cond_6

    move v5, v2

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_9
    :goto_5
    add-int/2addr v4, v2

    .line 7
    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lb/a/a/n1/h0;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->m()V

    .line 2
    invoke-static {}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->getInstance()Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$k;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V

    .line 4
    invoke-virtual {v0, v1}, Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory;->setContentChangeListener(Lsmartisanos/app/settings/search/EnablerObserverAndReceiverFactory$ContentChangeListener;)V

    return-void
.end method

.method public onEvaluation(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tv_search_calculator_result:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "tv_search_calculator_result"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tv_search_calculator_result:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget p1, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "search_editor"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    sget p1, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f1

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setMaxWidth(I)V

    .line 7
    sget p1, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestLayout()V

    .line 8
    sget p1, Lcom/smartisanos/quicksearch/R$id;->tv_search_calculator_result:I

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    sget v1, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "search_editor"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->setSearchEditor(Landroid/widget/EditText;)V

    .line 3
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_bar:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$c;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$c;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 5
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sget-object v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$d;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 6
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$e;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$e;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 7
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$a;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    sput-object p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->q:Lcom/android/quicksearchbox/tnt/InternalSearchableSource$CalculatorCallback;

    .line 9
    sget v0, Lcom/smartisanos/quicksearch/R$id;->btn_setting:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$f;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$g;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$g;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->f:Z

    .line 12
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_dialog_bg:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/RoundedRectLinearLayout;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$h;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onQueryFinished(Ljava/lang/String;)V
    .locals 2

    const-string v0, "query"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "search_editor"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ld/v/n;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget p1, Lcom/smartisanos/quicksearch/R$id;->progress_bar:I

    invoke-virtual {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    const-string v0, "progress_bar"

    invoke-static {p1, v0}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p1, Ld/h;

    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {p1, v0}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onQueryStart()V
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "progress_bar"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lcom/smartisanos/quicksearch/R$id;->search_editor:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    const-string v2, "search_editor"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ld/v/n;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :cond_1
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setCorpus(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->tnt_search_content:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchContentView;->setCorpus(Ljava/lang/String;)V

    return-void
.end method

.method public final setMQueryListener(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;

    return-void
.end method

.method public final setQueryListener(Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView;->g:Lcom/android/quicksearchbox/tnt/view/TNTSearchActivityView$QueryListener;

    return-void
.end method
