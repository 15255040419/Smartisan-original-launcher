.class public final Lb/a/a/l1/c;
.super Lb/a/a/m1/g;
.source "TNTSuggestionsListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/l1/c$a;,
        Lb/a/a/l1/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/m1/g<",
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Lb/a/a/l1/c$b;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:Ljava/lang/String;

.field public C:Z

.field public D:I

.field public final E:Landroid/content/Context;

.field public final F:Landroid/view/ViewGroup;

.field public final G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

.field public final m:Landroidx/recyclerview/widget/RecyclerView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "Lb/a/a/l1/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public n:I

.field public final o:I

.field public final p:I

.field public q:Z

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public x:I

.field public y:I

.field public final z:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/quicksearchbox/ui/SuggestionViewFactory;Landroid/view/ViewGroup;Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;)V
    .locals 1

    const-string v0, "mContext"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchContentView"

    invoke-static {p3, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mRecyclerView"

    invoke-static {p4, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Lb/a/a/m1/g;-><init>(Lcom/android/quicksearchbox/ui/SuggestionViewFactory;)V

    iput-object p1, p0, Lb/a/a/l1/c;->E:Landroid/content/Context;

    iput-object p3, p0, Lb/a/a/l1/c;->F:Landroid/view/ViewGroup;

    iput-object p4, p0, Lb/a/a/l1/c;->G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    .line 2
    iget-object p1, p0, Lb/a/a/l1/c;->E:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060251

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lb/a/a/l1/c;->o:I

    const/16 p1, 0x9

    .line 3
    iput p1, p0, Lb/a/a/l1/c;->p:I

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lb/a/a/l1/c;->r:I

    const/4 p2, 0x2

    .line 5
    iput p2, p0, Lb/a/a/l1/c;->s:I

    const/4 p2, 0x3

    .line 6
    iput p2, p0, Lb/a/a/l1/c;->t:I

    const/4 p2, 0x4

    .line 7
    iput p2, p0, Lb/a/a/l1/c;->u:I

    const/4 p2, 0x5

    .line 8
    iput p2, p0, Lb/a/a/l1/c;->v:I

    const/4 p2, 0x7

    .line 9
    iput p2, p0, Lb/a/a/l1/c;->w:I

    .line 10
    iget-object p2, p0, Lb/a/a/l1/c;->G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p2, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    const-string p2, "cmd"

    .line 11
    iput-object p2, p0, Lb/a/a/l1/c;->A:Ljava/lang/String;

    const-string p2, "alt"

    .line 12
    iput-object p2, p0, Lb/a/a/l1/c;->B:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lb/a/a/l1/c;->E:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "mContext.resources"

    invoke-static {p2, p3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput p2, p0, Lb/a/a/l1/c;->D:I

    .line 14
    new-instance p2, Lb/a/a/l1/c$a;

    invoke-direct {p2, p0}, Lb/a/a/l1/c$a;-><init>(Lb/a/a/l1/c;)V

    iput-object p2, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 15
    iget-object p2, p0, Lb/a/a/l1/c;->E:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x0

    const-string p4, "keyboard_preference"

    invoke-static {p2, p4, p3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 16
    :goto_0
    iput-boolean p1, p0, Lb/a/a/l1/c;->C:Z

    return-void

    .line 17
    :cond_1
    new-instance p1, Ld/h;

    const-string p2, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-direct {p1, p2}, Ld/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic a(Lb/a/a/l1/c;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lb/a/a/l1/c;->B:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic a(Lb/a/a/l1/c;Lcom/android/quicksearchbox/SuggestionCursor;I)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lb/a/a/m1/g;->b(Lcom/android/quicksearchbox/SuggestionCursor;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lb/a/a/l1/c;I)V
    .locals 0

    .line 4
    iput p1, p0, Lb/a/a/l1/c;->x:I

    return-void
.end method

.method public static final synthetic a(Lb/a/a/l1/c;Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lb/a/a/m1/g;->a(Lcom/android/quicksearchbox/SuggestionCursor;IJLandroid/view/View;)V

    return-void
.end method

.method public static final synthetic b(Lb/a/a/l1/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/l1/c;->A:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic b(Lb/a/a/l1/c;I)V
    .locals 0

    .line 2
    iput p1, p0, Lb/a/a/l1/c;->y:I

    return-void
.end method

.method public static final synthetic c(Lb/a/a/l1/c;)Landroid/view/LayoutInflater;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/l1/c;->k()Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lb/a/a/l1/c;I)V
    .locals 0

    .line 2
    iput p1, p0, Lb/a/a/l1/c;->n:I

    return-void
.end method

.method public static final synthetic d(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->x:I

    return p0
.end method

.method public static final synthetic e(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->D:I

    return p0
.end method

.method public static final synthetic f(Lb/a/a/l1/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/l1/c;->E:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic g(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->y:I

    return p0
.end method

.method public static final synthetic h(Lb/a/a/l1/c;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method

.method public static final synthetic i(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->n:I

    return p0
.end method

.method public static final synthetic j(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/m1/g;->a()I

    move-result p0

    return p0
.end method

.method public static final synthetic k(Lb/a/a/l1/c;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/a/l1/c;->F:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static final synthetic l(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->p:I

    return p0
.end method

.method public static final synthetic m(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->s:I

    return p0
.end method

.method public static final synthetic n(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->u:I

    return p0
.end method

.method public static final synthetic o(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->r:I

    return p0
.end method

.method public static final synthetic p(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->v:I

    return p0
.end method

.method public static final synthetic q(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->t:I

    return p0
.end method

.method public static final synthetic r(Lb/a/a/l1/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lb/a/a/l1/c;->w:I

    return p0
.end method

.method public static final synthetic s(Lb/a/a/l1/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/a/l1/c;->C:Z

    return p0
.end method

.method public static final synthetic t(Lb/a/a/l1/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/a/a/l1/c;->o()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lb/a/a/l1/c;->q:Z

    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lb/a/a/l1/c;->n:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lb/a/a/m1/g;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lb/a/a/l1/c;->q:Z

    if-nez p1, :cond_0

    .line 8
    invoke-virtual {p0}, Lb/a/a/m1/g;->h()V

    .line 9
    iget-object p1, p0, Lb/a/a/l1/c;->F:Landroid/view/ViewGroup;

    new-instance v0, Lb/a/a/l1/c$d;

    invoke-direct {v0, p0}, Lb/a/a/l1/c$d;-><init>(Lb/a/a/l1/c;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final b(I)Z
    .locals 2

    .line 3
    iget v0, p0, Lb/a/a/l1/c;->p:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I()I

    move-result v0

    add-int/2addr v0, p1

    .line 5
    iget-object p1, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result p1

    if-ge v0, p1, :cond_1

    .line 6
    new-instance p1, Lb/a/a/l1/c$c;

    invoke-direct {p1, p0, v0}, Lb/a/a/l1/c$c;-><init>(Lb/a/a/l1/c;I)V

    invoke-static {p1}, Lb/a/a/c1/g/b;->a(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public final b(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lb/a/a/l1/c;->n:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 11
    instance-of v1, v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    if-eqz v1, :cond_0

    .line 12
    check-cast v0, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/tnt/suggestion/TNTSuggestionFileView;->b(Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e()V
    .locals 3

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->c()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/a/l1/c;->n:I

    .line 4
    iget-object v1, p0, Lb/a/a/l1/c;->E:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mContext.resources"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lb/a/a/l1/c;->D:I

    .line 5
    iget-object v1, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lb/a/a/l1/c;->b(Z)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->c()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb/a/a/l1/c;->n:I

    .line 4
    iget-object v1, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lb/a/a/l1/c;->b(Z)V

    return-void
.end method

.method public getListAdapter()Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "Lb/a/a/l1/c$b;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    return-object v0
.end method

.method public bridge synthetic getListAdapter()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/a/a/l1/c;->getListAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestion(J)Lb/a/a/w0;
    .locals 2

    .line 1
    new-instance v0, Lb/a/a/w0;

    invoke-virtual {p0}, Lb/a/a/m1/g;->getCurrentPromotedSuggestions()Lcom/android/quicksearchbox/SuggestionCursor;

    move-result-object v1

    long-to-int p1, p1

    invoke-direct {v0, v1, p1}, Lb/a/a/w0;-><init>(Lcom/android/quicksearchbox/SuggestionCursor;I)V

    return-object v0
.end method

.method public final i()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lb/a/a/l1/c;->e()V

    .line 3
    iget-object v0, p0, Lb/a/a/l1/c;->G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;->g(I)V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()Landroidx/recyclerview/widget/RecyclerView$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "Lb/a/a/l1/c$b;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    return-object v0
.end method

.method public final k()Landroid/view/LayoutInflater;
    .locals 2

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c;->E:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0

    :cond_0
    new-instance v0, Ld/h;

    const-string v1, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {v0, v1}, Ld/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lb/a/a/l1/c;->o()V

    .line 3
    iget v0, p0, Lb/a/a/l1/c;->n:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lb/a/a/l1/c;->n:I

    .line 4
    iget v0, p0, Lb/a/a/l1/c;->n:I

    iget-object v2, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v2

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    .line 5
    iput v3, p0, Lb/a/a/l1/c;->n:I

    .line 6
    iget-object v0, p0, Lb/a/a/l1/c;->G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    iget v2, p0, Lb/a/a/l1/c;->o:I

    neg-int v2, v2

    iget-object v4, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v4

    iget v5, p0, Lb/a/a/l1/c;->p:I

    sub-int/2addr v4, v5

    mul-int/2addr v2, v4

    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 7
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget v0, p0, Lb/a/a/l1/c;->n:I

    iget-object v2, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->L()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Lb/a/a/l1/c;->G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    iget v2, p0, Lb/a/a/l1/c;->o:I

    invoke-virtual {v0, v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 10
    :cond_2
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v2, p0, Lb/a/a/l1/c;->n:I

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method public final m()V
    .locals 2

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lb/a/a/l1/c;->n:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    :cond_0
    return-void
.end method

.method public final n()V
    .locals 6

    .line 2
    invoke-virtual {p0}, Lb/a/a/l1/c;->o()V

    .line 3
    iget v0, p0, Lb/a/a/l1/c;->n:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lb/a/a/l1/c;->n:I

    .line 4
    iget v0, p0, Lb/a/a/l1/c;->n:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_1

    .line 5
    iget-object v0, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v0

    sub-int/2addr v0, v2

    iput v0, p0, Lb/a/a/l1/c;->n:I

    .line 6
    iget-object v0, p0, Lb/a/a/l1/c;->G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    iget v3, p0, Lb/a/a/l1/c;->o:I

    iget-object v4, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v4

    iget v5, p0, Lb/a/a/l1/c;->p:I

    sub-int/2addr v4, v5

    mul-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 7
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, Lb/a/a/l1/c;->m:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void

    .line 8
    :cond_1
    iget-object v3, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/LinearLayoutManager;->I()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 9
    iget-object v0, p0, Lb/a/a/l1/c;->G:Lcom/android/quicksearchbox/tnt/view/SnapRecyclerView;

    iget v3, p0, Lb/a/a/l1/c;->o:I

    neg-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 10
    :cond_2
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    iget v1, p0, Lb/a/a/l1/c;->n:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    return-void
.end method

.method public final o()V
    .locals 4

    .line 2
    iget-object v0, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->I()I

    move-result v0

    iget-object v1, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->L()I

    move-result v1

    if-gt v0, v1, :cond_1

    .line 3
    :goto_0
    iget-object v2, p0, Lb/a/a/l1/c;->z:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    if-eq v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
