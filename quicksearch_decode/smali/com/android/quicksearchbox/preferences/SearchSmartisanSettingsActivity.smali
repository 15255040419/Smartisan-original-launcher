.class public Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;
.super Lcom/android/quicksearchbox/BaseActivity;
.source "SearchSmartisanSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$g;,
        Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;
    }
.end annotation


# instance fields
.field public e:Lb/a/a/e0;

.field public f:Lcom/android/quicksearchbox/dslv/DragSortListView;

.field public g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

.field public h:Lb/a/a/n1/l;

.field public i:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

.field public j:Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/quicksearchbox/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$a;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->i:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

    .line 3
    new-instance v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$e;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->j:Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/dslv/DragSortListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)Lb/a/a/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->e:Lb/a/a/e0;

    return-object p0
.end method

.method public static synthetic d(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->j()V

    return-void
.end method

.method public static synthetic e(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->h()V

    return-void
.end method

.method public static synthetic f(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->i()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 3

    .line 2
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f070338

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->e:Lb/a/a/e0;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lb/a/a/e0;->b(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->e:Lb/a/a/e0;

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v1, v1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lb/a/a/e0;->a(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 4
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->clearSortScore()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->h:Lb/a/a/n1/l;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quicksearchbox/Corpus;

    .line 2
    invoke-interface {v1}, Lcom/android/quicksearchbox/Corpus;->clearSortScore()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v1, v1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    .line 5
    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->e:Lb/a/a/e0;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb/a/a/e0;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v1, v1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/Corpus;

    .line 3
    iget-object v3, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->e:Lb/a/a/e0;

    invoke-virtual {v3, v2}, Lb/a/a/e0;->d(Lcom/android/quicksearchbox/Corpus;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2}, Lcom/android/quicksearchbox/SuggestionCursorProvider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb/a/a/n1/d$s;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/d$s;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->getDragState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    .line 2
    invoke-virtual {v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->getDragState()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/android/quicksearchbox/BaseActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/android/quicksearchbox/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->e()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/BaseActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0b0088

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    invoke-static {p0}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    check-cast p1, Lb/a/a/e0;

    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->e:Lb/a/a/e0;

    const p1, 0x7f080238

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TitleBar;

    const/4 v0, 0x0

    const v1, 0x7f100122

    .line 8
    invoke-virtual {p1, v0, v1}, Lsmartisan/widget/TitleBar;->b(II)Lsmartisan/widget/SmartisanButton;

    move-result-object v0

    .line 9
    new-instance v1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$b;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$b;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    sget v0, Lsmartisan/widget/TitleBar;->u:I

    invoke-virtual {p1, v0}, Lsmartisan/widget/TitleBar;->a(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 11
    new-instance v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$c;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$c;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Lb/a/a/n1/l;

    invoke-direct {p1, p0}, Lb/a/a/n1/l;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->h:Lb/a/a/n1/l;

    .line 13
    new-instance p1, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    const p1, 0x7f080136

    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quicksearchbox/dslv/DragSortListView;

    iput-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    .line 15
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 16
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g()V

    .line 17
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f()V

    .line 18
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    new-instance v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$d;-><init>(Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->j:Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setDropListener(Lcom/android/quicksearchbox/dslv/DragSortListView$DropListener;)V

    .line 20
    new-instance p1, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;

    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-direct {p1, v0}, Lcom/android/quicksearchbox/dslv/SearchFloatViewManager;-><init>(Landroid/widget/ListView;)V

    .line 21
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    invoke-virtual {v0, p1}, Lcom/android/quicksearchbox/dslv/DragSortListView;->setFloatViewManager(Lcom/android/quicksearchbox/dslv/DragSortListView$FloatViewManager;)V

    .line 22
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/DragSortListView;

    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->i:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

    invoke-virtual {p1, v0}, Lcom/android/quicksearchbox/dslv/SlideListView;->setSlideListener(Lcom/android/quicksearchbox/dslv/SlideListView$Listener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->i()V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    iget-object v0, v0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->h:Lb/a/a/n1/l;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    invoke-static {p0}, Lb/a/a/n1/h0;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    invoke-virtual {v1, v0}, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;->a(Ljava/util/ArrayList;)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity;->g:Lcom/android/quicksearchbox/preferences/SearchSmartisanSettingsActivity$f;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
