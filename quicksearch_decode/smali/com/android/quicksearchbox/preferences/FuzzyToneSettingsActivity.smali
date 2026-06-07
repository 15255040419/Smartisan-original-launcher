.class public Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;
.super Lcom/android/quicksearchbox/BaseActivity;
.source "FuzzyToneSettingsActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;,
        Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;,
        Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/quicksearchbox/BaseActivity;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lcom/android/quicksearchbox/dslv/SlideListView;

.field public f:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/quicksearchbox/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$d;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->h()V

    return-void
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)Lcom/android/quicksearchbox/dslv/SlideListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$a;)V

    const/4 v2, 0x0

    .line 5
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->a:J

    const/4 v3, 0x1

    .line 6
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->b:Ljava/lang/String;

    const/4 v4, 0x2

    .line 7
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->c:Ljava/lang/String;

    const/4 v4, 0x3

    .line 8
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$e;->d:Z

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 11
    throw v0

    .line 12
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    new-instance v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;

    invoke-static {p0}, Lb/a/a/n1/h0;->i(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$f;-><init>(Landroid/content/Context;Ljava/util/List;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final f()V
    .locals 2

    const v0, 0x7f080238

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TitleBar;

    .line 2
    sget v1, Lsmartisan/widget/TitleBar;->u:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/TitleBar;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$a;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$a;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b0048

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const v1, 0x7f08016f

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SwitchEx;

    .line 3
    invoke-static {p0}, Lb/a/a/n1/h0;->i(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    .line 4
    new-instance v2, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$b;

    invoke-direct {v2, p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$b;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V

    invoke-virtual {v1, v2}, Lsmartisan/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 6
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    invoke-static {p0, v3, v4}, Lb/a/a/n1/h0;->b(Landroid/content/Context;D)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0800e4

    .line 8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/quicksearchbox/dslv/SlideListView;

    iput-object v2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    .line 9
    iget-object v2, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 10
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    new-instance v1, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$c;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$c;-><init>(Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    iget-object v1, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->f:Lcom/android/quicksearchbox/dslv/SlideListView$Listener;

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/dslv/SlideListView;->setSlideListener(Lcom/android/quicksearchbox/dslv/SlideListView$Listener;)V

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->e:Lcom/android/quicksearchbox/dslv/SlideListView;

    invoke-static {v0}, Lsmartisan/util/NavigationBarHelper;->a(Landroid/view/View;)V

    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

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
    const p1, 0x7f0b0047

    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 5
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->f()V

    .line 6
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->g()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/16 p2, 0x9

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    sget-object p1, Lb/a/a/t;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "query_all"

    const-string v0, "true"

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 3
    new-instance p1, Landroid/content/CursorLoader;

    sget-object v3, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity$g;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->a(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/preferences/FuzzyToneSettingsActivity;->h()V

    return-void
.end method
