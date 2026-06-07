.class public final Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;
.super Landroid/widget/FrameLayout;
.source "TNTSearchSettingView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;
    }
.end annotation


# instance fields
.field public final a:Lb/a/a/e0;

.field public b:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;

.field public c:Landroid/widget/EditText;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILd/q/c/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Lb/a/a/b0;->b(Landroid/content/Context;)Lb/a/a/b0;

    move-result-object p1

    const-string p2, "QsbApplication.get(context)"

    invoke-static {p1, p2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb/a/a/b0;->w()Lcom/android/quicksearchbox/SearchSettings;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lb/a/a/e0;

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a:Lb/a/a/e0;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->d:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

    invoke-direct {p1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V

    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->e:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

    return-void

    .line 6
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
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->e:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$a;

    return-object p0
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Ljava/util/List;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic a(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->setShortcutKeySettingState(Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)Lb/a/a/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a:Lb/a/a/e0;

    return-object p0
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->setShortcutLabel(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic b(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->setSwitchSysRecommendAppsChecked(Z)V

    return-void
.end method

.method public static final synthetic c(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b()V

    return-void
.end method

.method private final setShortcutKeySettingState(Z)V
    .locals 9

    .line 1
    sget v0, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_parent_container:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "shortcut_key_parent_container"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    const/4 v0, 0x0

    const-string v1, "searchEditor"

    const-string v2, "iv_pencil"

    const-string v3, "shortcut_key_container"

    const/4 v4, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v7, "et_shortcut_key"

    if-eqz p1, :cond_0

    .line 2
    sget v8, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v8}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    invoke-static {v8, v7}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 3
    sget v6, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-static {v6, v7}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 4
    sget v6, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100111

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    sget v6, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 6
    sget v6, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p0, v6}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {v6, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    sget v3, Lcom/smartisanos/quicksearch/R$id;->iv_pencil:I

    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v8, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->c:Landroid/widget/EditText;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    sget v8, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p0, v8}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-static {v8, v3}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 10
    sget v3, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-static {v3, v7}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 11
    sget v3, Lcom/smartisanos/quicksearch/R$id;->iv_pencil:I

    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->c:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    xor-int/2addr p1, v4

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void

    :cond_1
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_2
    invoke-static {v1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    throw v0
.end method

.method private final setShortcutLabel(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    sget v3, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p0, v3}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Landroid/widget/TextView;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1101d5

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060288

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 6
    sget v5, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p0, v5}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 7
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_1
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sget v0, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "shortcut_key_container"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    :goto_2
    if-ge p1, v0, :cond_3

    .line 10
    sget v1, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private final setSwitchSysRecommendAppsChecked(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a:Lb/a/a/e0;

    const-string v1, "enable_corpus_sys_recommend_apps"

    invoke-virtual {v0, v1, p1}, Lb/a/a/e0;->b(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->f:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->f:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 11
    sget v0, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, "et_shortcut_key"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 12
    sget v0, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 13
    sget v0, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    sget v0, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 15
    sget v0, Lcom/smartisanos/quicksearch/R$id;->et_shortcut_key:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 16
    sget v0, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_container:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const-string v1, "shortcut_key_container"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public final a(Landroid/view/KeyEvent;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a(Landroid/view/KeyEvent;Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "shortcutListener"

    invoke-static {p1}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v0, "event"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget v0, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_parent_container:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const-string v1, "shortcut_key_parent_container"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    sget v2, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_parent_container:I

    invoke-virtual {p0, v2}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->d:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->setShortcutLabel(Ljava/util/List;)V

    .line 10
    invoke-direct {p0, v1}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->setShortcutKeySettingState(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final b()V
    .locals 5

    .line 4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10302d2

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1000a6

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$h;

    const v2, 0x7f100061

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$i;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$i;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V

    const v2, 0x7f1000f7

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "dialog"

    .line 9
    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "dialog.window"

    invoke-static {v1, v2}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060294

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const/4 v4, 0x0

    .line 11
    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 12
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 13
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final getSearchEditor()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "searchEditor"

    invoke-static {v0}, Ld/q/c/d;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcom/smartisanos/quicksearch/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    const-string v1, "scrollView"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVerticalFadingEdgeEnabled(Z)V

    .line 3
    sget v0, Lcom/smartisanos/quicksearch/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060286

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFadingEdgeLength(I)V

    .line 4
    sget v0, Lcom/smartisanos/quicksearch/R$id;->btn_reset_configuration:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$b;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$b;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    sget v0, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_layout:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$c;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$c;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget v0, Lcom/smartisanos/quicksearch/R$id;->sys_recommend_app_layout:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$d;->a:Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$d;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget v0, Lcom/smartisanos/quicksearch/R$id;->shortcut_key_parent_container:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$e;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$e;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lcom/smartisanos/quicksearch/R$id;->sw_sys_recommend_app:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SwitchEx;

    new-instance v1, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$f;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$f;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 9
    sget v0, Lcom/smartisanos/quicksearch/R$id;->sw_sys_recommend_app:I

    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SwitchEx;

    const-string v1, "sw_sys_recommend_app"

    invoke-static {v0, v1}, Ld/q/c/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->a:Lb/a/a/e0;

    const-string v2, "enable_corpus_sys_recommend_apps"

    invoke-virtual {v1, v2}, Lb/a/a/e0;->a(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SwitchEx;->setChecked(Z)V

    .line 10
    new-instance v0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView$g;-><init>(Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;)V

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->b:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil$ShortKeyChangedListener;

    .line 11
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->a()V

    .line 12
    sget-object v0, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->k:Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quicksearchbox/tnt/KeyboardShortcutUtil;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->d:Ljava/util/List;

    .line 13
    iget-object v0, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->setShortcutLabel(Ljava/util/List;)V

    return-void
.end method

.method public final setSearchEditor(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ld/q/c/d;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/tnt/view/TNTSearchSettingView;->c:Landroid/widget/EditText;

    return-void
.end method
