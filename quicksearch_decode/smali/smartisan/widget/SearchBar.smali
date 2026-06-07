.class public Lsmartisan/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "SearchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SearchBar$Listener;,
        Lsmartisan/widget/SearchBar$OnCommitCompletionListener;,
        Lsmartisan/widget/SearchBar$OnSecondaryFilterClickListener;,
        Lsmartisan/widget/SearchBar$OnSearchIconClickListener;,
        Lsmartisan/widget/SearchBar$OnFilterClickListener;,
        Lsmartisan/widget/SearchBar$OnCancelClickListener;,
        Lsmartisan/widget/SearchBar$OnEditorClickListener;,
        Lsmartisan/widget/SearchBar$AnimationListenr;
    }
.end annotation


# static fields
.field public static final M:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:Z

.field public a:Lsmartisan/widget/SearchBarEditText;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/view/View;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Landroid/widget/ImageView;

.field public g:Landroid/view/View;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/view/View;

.field public j:Landroid/widget/TextView;

.field public k:Landroid/view/View;

.field public l:Lsmartisan/widget/SearchBar$Listener;

.field public m:Lsmartisan/widget/SearchBar$OnCancelClickListener;

.field public n:Lsmartisan/widget/SearchBar$OnEditorClickListener;

.field public o:Lsmartisan/widget/SearchBar$OnFilterClickListener;

.field public p:Lsmartisan/widget/SearchBar$OnSecondaryFilterClickListener;

.field public q:Lsmartisan/widget/SearchBar$OnSearchIconClickListener;

.field public r:Lsmartisan/widget/SearchBar$OnCommitCompletionListener;

.field public s:Lsmartisan/widget/SearchBar$AnimationListenr;

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_filter_selector:I

    sput v0, Lsmartisan/widget/SearchBar;->M:I

    .line 2
    const-class v0, Lsmartisan/widget/SearchBar;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lsmartisan/widget/SearchBar;->t:Z

    .line 5
    iput-boolean p3, p0, Lsmartisan/widget/SearchBar;->u:Z

    .line 6
    iput-boolean p3, p0, Lsmartisan/widget/SearchBar;->v:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->w:Z

    .line 8
    iput-boolean p3, p0, Lsmartisan/widget/SearchBar;->x:Z

    .line 9
    iput-boolean p3, p0, Lsmartisan/widget/SearchBar;->y:Z

    .line 10
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->z:Z

    .line 11
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->A:Z

    .line 12
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->B:Z

    .line 13
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->C:Z

    .line 14
    iput-boolean p3, p0, Lsmartisan/widget/SearchBar;->D:Z

    .line 15
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->L:Z

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v1, Lsmartisan/widget/R$layout;->search_bar:I

    invoke-virtual {p3, v1, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->bar_margin_edge:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SearchBar;->E:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->search_bar_margin_each:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SearchBar;->F:I

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->search_bar_margin_search_view:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SearchBar;->G:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->search_bar_anim_distance:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SearchBar;->H:I

    .line 21
    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/SearchBar;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$OnCommitCompletionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SearchBar;->r:Lsmartisan/widget/SearchBar$OnCommitCompletionListener;

    return-object p0
.end method

.method public static synthetic a(Lsmartisan/widget/SearchBar;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->u:Z

    return p1
.end method

.method public static synthetic b(Lsmartisan/widget/SearchBar;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->i()V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/SearchBar;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->d(Z)V

    return-void
.end method

.method public static synthetic c(Lsmartisan/widget/SearchBar;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->l()V

    return-void
.end method

.method public static synthetic c(Lsmartisan/widget/SearchBar;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->e(Z)V

    return-void
.end method

.method public static synthetic d(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SearchBar;->l:Lsmartisan/widget/SearchBar$Listener;

    return-object p0
.end method

.method public static synthetic e(Lsmartisan/widget/SearchBar;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SearchBar;->e:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic f(Lsmartisan/widget/SearchBar;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic g(Lsmartisan/widget/SearchBar;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic h(Lsmartisan/widget/SearchBar;)Lsmartisan/widget/SearchBar$AnimationListenr;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SearchBar;->s:Lsmartisan/widget/SearchBar$AnimationListenr;

    return-object p0
.end method


# virtual methods
.method public final a(Z)I
    .locals 2

    .line 59
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->v:Z

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SearchBar;->I:I

    sub-int/2addr v0, v1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :goto_0
    return v0

    .line 61
    :cond_1
    iget v0, p0, Lsmartisan/widget/SearchBar;->I:I

    iget v1, p0, Lsmartisan/widget/SearchBar;->G:I

    add-int/2addr v0, v1

    if-eqz p1, :cond_2

    neg-int v0, v0

    :cond_2
    return v0
.end method

.method public a(I)Landroid/widget/ImageView;
    .locals 2

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->v:Z

    .line 65
    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->b(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 66
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->t:Z

    invoke-virtual {p0, v0}, Lsmartisan/widget/SearchBar;->d(Z)V

    .line 67
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->t:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 63
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 3
    sget v0, Lsmartisan/widget/R$id;->search_bar_cancel_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    .line 4
    sget v0, Lsmartisan/widget/R$id;->search_bar_right_view_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    .line 5
    sget v0, Lsmartisan/widget/R$id;->search_bar_edit_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    .line 6
    sget v0, Lsmartisan/widget/R$id;->search_bar_left_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    .line 7
    sget v0, Lsmartisan/widget/R$id;->search_bar_clear_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->e:Landroid/view/View;

    .line 8
    sget v0, Lsmartisan/widget/R$id;->search_bar_edit_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/SearchBarEditText;

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    .line 9
    sget v0, Lsmartisan/widget/R$id;->search_bar_secondary_filter:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    .line 10
    sget v0, Lsmartisan/widget/R$id;->search_bar_secondary_filter_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->j:Landroid/widget/TextView;

    .line 11
    sget v0, Lsmartisan/widget/R$id;->search_bar_secondary_filter_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SearchBar;->k:Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->standard_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SearchBar;->K:I

    .line 13
    sget-object v0, Lsmartisan/widget/R$styleable;->SearchBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_searchBarBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 15
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 17
    :goto_0
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_editBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 18
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :cond_1
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_cancelBackground:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 20
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 21
    :cond_2
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_leftIcon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 22
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_3
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_rightIcon:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-lez p2, :cond_4

    .line 24
    invoke-virtual {p0, p2}, Lsmartisan/widget/SearchBar;->a(I)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    .line 25
    :cond_4
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_hasRightIcon:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 26
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    if-nez p2, :cond_5

    .line 27
    sget p2, Lsmartisan/widget/SearchBar;->M:I

    invoke-virtual {p0, p2}, Lsmartisan/widget/SearchBar;->a(I)Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    .line 28
    :cond_5
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_hintText:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 29
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-boolean p2, p0, Lsmartisan/widget/SearchBar;->L:Z

    if-eqz p2, :cond_6

    .line 33
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    invoke-static {p2}, Li/t/a;->a(Landroid/view/View;)V

    .line 34
    :cond_6
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->e:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    new-instance v1, Lsmartisan/widget/SearchBar$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/SearchBar$a;-><init>(Lsmartisan/widget/SearchBar;)V

    invoke-virtual {p2, v1}, Lsmartisan/widget/SearchBarEditText;->setListener(Lsmartisan/widget/SearchBarEditText$Listener;)V

    .line 39
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    new-instance v1, Lsmartisan/widget/SearchBar$b;

    invoke-direct {v1, p0}, Lsmartisan/widget/SearchBar$b;-><init>(Lsmartisan/widget/SearchBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 40
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    if-eqz p2, :cond_7

    .line 41
    new-instance v1, Lsmartisan/widget/SearchBar$c;

    invoke-direct {v1, p0}, Lsmartisan/widget/SearchBar$c;-><init>(Lsmartisan/widget/SearchBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    new-instance v1, Lsmartisan/widget/SearchBar$d;

    invoke-direct {v1, p0}, Lsmartisan/widget/SearchBar$d;-><init>(Lsmartisan/widget/SearchBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 43
    :cond_7
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    new-instance v1, Lsmartisan/widget/SearchBar$e;

    invoke-direct {v1, p0}, Lsmartisan/widget/SearchBar$e;-><init>(Lsmartisan/widget/SearchBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 44
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    new-instance v1, Lsmartisan/widget/SearchBar$f;

    invoke-direct {v1, p0}, Lsmartisan/widget/SearchBar$f;-><init>(Lsmartisan/widget/SearchBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_hasLeftIcon:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar;->w:Z

    .line 46
    iget-object p2, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    iget-boolean v2, p0, Lsmartisan/widget/SearchBar;->w:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_hasCancelButton:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar;->x:Z

    .line 48
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_focusableInit:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar;->y:Z

    .line 49
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_autoFocus:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar;->A:Z

    .line 50
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_withAnimation:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar;->B:Z

    .line 51
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_hasShadow:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar;->C:Z

    .line 52
    sget p2, Lsmartisan/widget/R$styleable;->SearchBar_hasSecondaryFilter:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SearchBar;->D:Z

    .line 53
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lsmartisan/widget/R$dimen;->smartisan_title_bar_height:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 54
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->c()V

    .line 55
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->d()V

    .line 56
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Li/t/a;->a(Landroid/content/Context;)Li/t/a$c;

    move-result-object p1

    invoke-virtual {p1, p0}, Li/t/a$c;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SearchBar;->g:Landroid/view/View;

    .line 58
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->g:Landroid/view/View;

    iget-boolean p2, p0, Lsmartisan/widget/SearchBar;->C:Z

    if-eqz p2, :cond_9

    goto :goto_2

    :cond_9
    move v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 71
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->v:Z

    .line 73
    iget-boolean p1, p0, Lsmartisan/widget/SearchBar;->t:Z

    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->d(Z)V

    :cond_0
    return-void
.end method

.method public final b(I)Landroid/widget/ImageView;
    .locals 3

    .line 15
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lsmartisan/widget/SearchBar;->K:I

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 18
    iget-object v2, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    iget v2, p0, Lsmartisan/widget/SearchBar;->F:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 20
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-static {v0, p1}, Li/r/b;->a(Landroid/view/View;I)Z

    move-result p1

    .line 22
    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->L:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 23
    invoke-static {v0}, Li/t/a;->a(Landroid/view/View;)V

    :cond_1
    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 3
    iget v0, p0, Lsmartisan/widget/SearchBar;->I:I

    if-eqz v0, :cond_0

    iget v0, p0, Lsmartisan/widget/SearchBar;->J:I

    if-nez v0, :cond_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->standard_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SearchBar;->I:I

    iput v0, p0, Lsmartisan/widget/SearchBar;->J:I

    :cond_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->l:Lsmartisan/widget/SearchBar$Listener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lsmartisan/widget/SearchBar$Listener;->onClickCancelButton()V

    .line 7
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->m:Lsmartisan/widget/SearchBar$OnCancelClickListener;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lsmartisan/widget/SearchBar$OnCancelClickListener;->onClick(Landroid/view/View;)V

    .line 9
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->t:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->u:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->t:Z

    .line 11
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 12
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->f(Z)V

    goto :goto_0

    .line 14
    :cond_3
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->l()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->x:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->v:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The cancel button and the filter button can not be presented at the same time."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->x:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 7
    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->x:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    .line 8
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    .line 9
    :goto_2
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->v:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->x:Z

    if-nez v1, :cond_4

    .line 11
    iget v1, p0, Lsmartisan/widget/SearchBar;->E:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 12
    :cond_4
    invoke-virtual {p0, v2}, Lsmartisan/widget/SearchBar;->e(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 13
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->l:Lsmartisan/widget/SearchBar$Listener;

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0}, Lsmartisan/widget/SearchBar$Listener;->onClickSearchEdit()V

    .line 15
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->n:Lsmartisan/widget/SearchBar$OnEditorClickListener;

    if-eqz v0, :cond_1

    .line 16
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-interface {v0, v1}, Lsmartisan/widget/SearchBar$OnEditorClickListener;->onClick(Landroid/view/View;)V

    .line 17
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->z:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->t:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->u:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->t:Z

    .line 19
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->f(Z)V

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->e()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 22
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->l()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->y:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/SearchBar;->t:Z

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->l()V

    return-void
.end method

.method public final d(Z)V
    .locals 3

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 6
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->getId()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    :goto_0
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-nez p1, :cond_1

    .line 9
    iget-boolean p1, p0, Lsmartisan/widget/SearchBar;->v:Z

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 11
    iget p1, p0, Lsmartisan/widget/SearchBar;->E:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 12
    :cond_1
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 13
    :goto_1
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final e(Z)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->D:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 3
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    .line 4
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 5
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    .line 6
    invoke-virtual {v0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    goto :goto_2

    .line 8
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->e:Landroid/view/View;

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->A:Z

    return v0
.end method

.method public f(Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    iput-boolean v1, v0, Lsmartisan/widget/SearchBar;->t:Z

    .line 3
    invoke-virtual/range {p0 .. p0}, Lsmartisan/widget/SearchBar;->b()V

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p1}, Lsmartisan/widget/SearchBar;->e(Z)V

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lsmartisan/widget/SearchBar;->a(Z)I

    move-result v2

    .line 6
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 7
    iget-object v4, v0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    const/4 v5, 0x2

    new-array v6, v5, [I

    .line 8
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v7

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v7, v0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    add-int/2addr v7, v2

    const/4 v9, 0x1

    aput v7, v6, v9

    const-string v7, "right"

    .line 9
    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 10
    iget-boolean v6, v0, Lsmartisan/widget/SearchBar;->v:Z

    const-wide/16 v10, 0xc8

    const-wide/16 v12, 0x64

    if-eqz v6, :cond_1

    if-nez v1, :cond_2

    :cond_1
    if-nez v1, :cond_3

    iget-boolean v6, v0, Lsmartisan/widget/SearchBar;->v:Z

    if-nez v6, :cond_3

    .line 11
    :cond_2
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 12
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x12c

    .line 13
    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    :goto_0
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x0

    if-eqz v1, :cond_4

    .line 15
    iget-object v14, v0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v10, v5, [F

    iget v11, v0, Lsmartisan/widget/SearchBar;->H:I

    int-to-float v11, v11

    aput v11, v10, v8

    aput v7, v10, v9

    invoke-static {v14, v15, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 16
    iget-object v11, v0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v5, [F

    fill-array-data v15, :array_0

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 17
    invoke-virtual {v6, v12, v13}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 18
    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 19
    :cond_4
    iget-object v10, v0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v14, v5, [F

    aput v7, v14, v8

    iget v15, v0, Lsmartisan/widget/SearchBar;->H:I

    int-to-float v15, v15

    aput v15, v14, v9

    invoke-static {v10, v11, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 20
    iget-object v11, v0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    sget-object v14, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v15, v5, [F

    fill-array-data v15, :array_1

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 21
    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_1
    const-wide/16 v10, 0xc8

    .line 22
    invoke-virtual {v6, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 23
    new-instance v10, Lsmartisan/widget/SearchBar$g;

    invoke-direct {v10, v0, v1}, Lsmartisan/widget/SearchBar$g;-><init>(Lsmartisan/widget/SearchBar;Z)V

    invoke-virtual {v6, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v10, 0x0

    .line 24
    iget-boolean v11, v0, Lsmartisan/widget/SearchBar;->v:Z

    if-eqz v11, :cond_6

    .line 25
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v1, :cond_5

    .line 26
    iget-object v11, v0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    sget-object v12, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v13, v5, [F

    aput v7, v13, v8

    iget v7, v0, Lsmartisan/widget/SearchBar;->H:I

    int-to-float v7, v7

    aput v7, v13, v9

    invoke-static {v11, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 27
    iget-object v8, v0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_2

    invoke-static {v8, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 28
    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 29
    :cond_5
    iget-object v11, v0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v5, [F

    iget v12, v0, Lsmartisan/widget/SearchBar;->H:I

    int-to-float v12, v12

    aput v12, v15, v8

    aput v7, v15, v9

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 30
    iget-object v8, v0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v5, v5, [F

    fill-array-data v5, :array_3

    invoke-static {v8, v9, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v8, 0x64

    .line 31
    invoke-virtual {v10, v8, v9}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 32
    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_2
    const-wide/16 v7, 0xc8

    .line 33
    invoke-virtual {v10, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 34
    new-instance v5, Lsmartisan/widget/SearchBar$h;

    invoke-direct {v5, v0, v1}, Lsmartisan/widget/SearchBar$h;-><init>(Lsmartisan/widget/SearchBar;Z)V

    invoke-virtual {v10, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 35
    :cond_6
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 36
    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 37
    new-instance v3, Lsmartisan/widget/SearchBar$i;

    invoke-direct {v3, v0, v1}, Lsmartisan/widget/SearchBar$i;-><init>(Lsmartisan/widget/SearchBar;Z)V

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 38
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    if-eqz v2, :cond_7

    .line 39
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_7
    if-eqz v10, :cond_8

    .line 40
    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 41
    :cond_8
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public f()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->B:Z

    return v0
.end method

.method public final g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getCancelView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getClearView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->e:Landroid/view/View;

    return-object v0
.end method

.method public getSearchEditLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    return-object v0
.end method

.method public getSearchEditor()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    return-object v0
.end method

.method public getSearchLeftIcon()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    return-object v0
.end method

.method public getSearchRightView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSecondaryFilterLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    return-object v0
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->g:Landroid/view/View;

    return-object v0
.end method

.method public final h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->l:Lsmartisan/widget/SearchBar$Listener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lsmartisan/widget/SearchBar$Listener;->onClickSearchLeftIcon()V

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->q:Lsmartisan/widget/SearchBar$OnSearchIconClickListener;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    invoke-interface {v0, v1}, Lsmartisan/widget/SearchBar$OnSearchIconClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->l:Lsmartisan/widget/SearchBar$Listener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lsmartisan/widget/SearchBar$Listener;->onClickSearchRightView()V

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->o:Lsmartisan/widget/SearchBar$OnFilterClickListener;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lsmartisan/widget/SearchBar$OnFilterClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->p:Lsmartisan/widget/SearchBar$OnSecondaryFilterClickListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    invoke-interface {v0, v1}, Lsmartisan/widget/SearchBar$OnSecondaryFilterClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lsmartisan/widget/SearchBar;->c(Z)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->t:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->t:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    iget-boolean v1, p0, Lsmartisan/widget/SearchBar;->t:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-boolean v0, p0, Lsmartisan/widget/SearchBar;->t:Z

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lsmartisan/widget/R$id;->search_bar_edit_text:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    sget v0, Lsmartisan/widget/R$id;->search_bar_edit_layout:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->search_bar_cancel_button:I

    if-ne p1, v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lsmartisan/widget/SearchBar;->b(Z)V

    goto :goto_1

    .line 5
    :cond_1
    sget v0, Lsmartisan/widget/R$id;->search_bar_clear_text:I

    if-ne p1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->g()V

    goto :goto_1

    .line 7
    :cond_2
    sget v0, Lsmartisan/widget/R$id;->search_bar_left_icon:I

    if-ne p1, v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->h()V

    goto :goto_1

    .line 9
    :cond_3
    sget v0, Lsmartisan/widget/R$id;->search_bar_secondary_filter:I

    if-ne p1, v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lsmartisan/widget/SearchBar;->j()V

    goto :goto_1

    .line 11
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lsmartisan/widget/SearchBar;->c(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->k:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lsmartisan/widget/SearchBar;->k:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->k:Landroid/view/View;

    iget-object p2, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    iget-object p2, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_0
    return-void
.end method

.method public setAnimationListenr(Lsmartisan/widget/SearchBar$AnimationListenr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->s:Lsmartisan/widget/SearchBar$AnimationListenr;

    return-void
.end method

.method public setAutoFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->A:Z

    return-void
.end method

.method public setCancelViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->d:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->a:Lsmartisan/widget/SearchBarEditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public setHasSearchRightView(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    if-nez p1, :cond_1

    .line 2
    sget p1, Lsmartisan/widget/SearchBar;->M:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->a(I)Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->a(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setImageScaleEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->L:Z

    return-void
.end method

.method public setListener(Lsmartisan/widget/SearchBar$Listener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->l:Lsmartisan/widget/SearchBar$Listener;

    return-void
.end method

.method public setOnCancelClickListener(Lsmartisan/widget/SearchBar$OnCancelClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->m:Lsmartisan/widget/SearchBar$OnCancelClickListener;

    return-void
.end method

.method public setOnCommitCompletionListener(Lsmartisan/widget/SearchBar$OnCommitCompletionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->r:Lsmartisan/widget/SearchBar$OnCommitCompletionListener;

    return-void
.end method

.method public setOnEditorClickListener(Lsmartisan/widget/SearchBar$OnEditorClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->n:Lsmartisan/widget/SearchBar$OnEditorClickListener;

    return-void
.end method

.method public setOnFilterClickListener(Lsmartisan/widget/SearchBar$OnFilterClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->o:Lsmartisan/widget/SearchBar$OnFilterClickListener;

    return-void
.end method

.method public setOnSearchIconClickListener(Lsmartisan/widget/SearchBar$OnSearchIconClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->q:Lsmartisan/widget/SearchBar$OnSearchIconClickListener;

    return-void
.end method

.method public setOnSecondaryFilterClickListener(Lsmartisan/widget/SearchBar$OnSecondaryFilterClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SearchBar;->p:Lsmartisan/widget/SearchBar$OnSecondaryFilterClickListener;

    return-void
.end method

.method public setSearchEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->z:Z

    return-void
.end method

.method public setSearchLeftIcon(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public setSearchLeftIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSearchRightViewVisibility(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryFilterText(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SearchBar;->setSecondaryFilterText(Ljava/lang/String;)V

    return-void
.end method

.method public setSecondaryFilterText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setSecondaryFilterVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SearchBar;->i:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWithAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SearchBar;->B:Z

    return-void
.end method
