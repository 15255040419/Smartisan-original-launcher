.class public Lsmartisan/widget/SmartisanComboTitleBar;
.super Landroid/widget/RelativeLayout;
.source "SmartisanComboTitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;,
        Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;,
        Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;,
        Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;,
        Lsmartisan/widget/SmartisanComboTitleBar$LeftBtnClickListener;,
        Lsmartisan/widget/SmartisanComboTitleBar$k;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final L:[I


# instance fields
.field public A:Landroid/view/View;

.field public B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/SmartisanButton;",
            ">;"
        }
    .end annotation
.end field

.field public C:Lsmartisan/widget/SmartisanComboTitleBar$LeftBtnClickListener;

.field public D:Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;

.field public E:Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;

.field public F:Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;

.field public G:Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;

.field public H:Z

.field public I:Landroid/os/Handler;

.field public J:I

.field public K:Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:[Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Z

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:I

.field public n:Landroid/widget/RelativeLayout;

.field public o:Landroid/widget/FrameLayout;

.field public p:Landroid/widget/RelativeLayout;

.field public q:Landroid/widget/LinearLayout;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;

.field public t:Landroid/view/View;

.field public u:Landroid/view/View;

.field public v:Landroid/widget/FrameLayout;

.field public w:I

.field public x:Landroid/content/res/ColorStateList;

.field public y:Landroid/content/res/ColorStateList;

.field public z:Lsmartisan/widget/SmartisanButton;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [I

    .line 1
    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn1:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn2:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn4:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn5:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn6:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn7:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn8:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn9:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_right_btn10:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sput-object v0, Lsmartisan/widget/SmartisanComboTitleBar;->L:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanComboTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanComboTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p3, Lsmartisan/widget/SmartisanComboTitleBar$b;

    invoke-direct {p3, p0}, Lsmartisan/widget/SmartisanComboTitleBar$b;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;)V

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->I:Landroid/os/Handler;

    .line 5
    new-instance p3, Lsmartisan/widget/SmartisanComboTitleBar$d;

    invoke-direct {p3, p0}, Lsmartisan/widget/SmartisanComboTitleBar$d;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;)V

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->K:Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 7
    sget v0, Lsmartisan/widget/R$layout;->combo_title_layout:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    sget p3, Lsmartisan/widget/R$id;->primary_title:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->n:Landroid/widget/RelativeLayout;

    .line 9
    sget p3, Lsmartisan/widget/R$id;->left_container:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->o:Landroid/widget/FrameLayout;

    .line 10
    sget p3, Lsmartisan/widget/R$id;->mid_container:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    .line 11
    sget p3, Lsmartisan/widget/R$id;->right_container:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->q:Landroid/widget/LinearLayout;

    .line 12
    sget p3, Lsmartisan/widget/R$id;->left_placeholder:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->r:Landroid/view/View;

    .line 13
    sget p3, Lsmartisan/widget/R$id;->right_placeholder:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->s:Landroid/view/View;

    .line 14
    sget p3, Lsmartisan/widget/R$id;->primary_title_shadow:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    .line 15
    sget p3, Lsmartisan/widget/R$id;->secondary_bar_shadow:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->u:Landroid/view/View;

    .line 16
    sget p3, Lsmartisan/widget/R$id;->secondary_bar_container:I

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->v:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->mid_container_margin:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    .line 18
    sget-object p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 19
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_leftButtonStyle:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->a:I

    .line 20
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_leftButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->b:Ljava/lang/String;

    .line 21
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_centerContentStyle:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->c:I

    .line 22
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_centerLeftIcon:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->d:I

    .line 23
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_centerContentRef:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->e:I

    .line 24
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_secondaryLayout:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->m:I

    .line 25
    iget p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->e:I

    if-gez p3, :cond_0

    .line 26
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_centerContentRef:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->g:Ljava/lang/String;

    goto :goto_0

    .line 27
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->e:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->e:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->f:[Ljava/lang/String;

    .line 29
    :goto_0
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_centerSubContentRef:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->h:Ljava/lang/String;

    .line 30
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_isCenterRangeVerticalScroll:I

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->i:Z

    .line 31
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_rightButtonStyle:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->j:I

    .line 32
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_rightButtonText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->k:Ljava/lang/String;

    .line 33
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_rightIconArray:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->l:I

    .line 34
    sget p3, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_rightStyleArray:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 35
    sget v2, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_rightResArray:I

    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 36
    sget v2, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_smtTitleTextColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->x:Landroid/content/res/ColorStateList;

    .line 37
    sget v2, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_smtSubtitleTextColor:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->y:Landroid/content/res/ColorStateList;

    .line 38
    sget v2, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_support_layout:I

    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->H:Z

    .line 39
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->smartisan_small_blank_spacing_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->J:I

    .line 41
    iget p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->c:I

    iget-object p2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->f:[Ljava/lang/String;

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->g:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1}, Lsmartisan/widget/SmartisanComboTitleBar;->a(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->a:I

    iget-object p2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/SmartisanComboTitleBar;->a(ILjava/lang/String;)V

    .line 43
    iget p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->j:I

    const/16 p2, 0xa

    if-ne p1, p2, :cond_1

    .line 44
    invoke-virtual {p0, p3, v0}, Lsmartisan/widget/SmartisanComboTitleBar;->a(II)V

    goto :goto_1

    .line 45
    :cond_1
    iget-object p2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->k:Ljava/lang/String;

    iget p3, p0, Lsmartisan/widget/SmartisanComboTitleBar;->l:I

    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanComboTitleBar;->a(ILjava/lang/String;I)V

    .line 46
    :goto_1
    iget p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->m:I

    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar;->setSecondaryLayoutStyle(I)V

    .line 47
    iget-boolean p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->H:Z

    if-eqz p1, :cond_2

    .line 48
    new-instance p1, Lsmartisan/widget/SmartisanComboTitleBar$e;

    invoke-direct {p1, p0}, Lsmartisan/widget/SmartisanComboTitleBar$e;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/SmartisanComboTitleBar;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->a()V

    return-void
.end method

.method public static synthetic b(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->E:Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;

    return-object p0
.end method

.method public static synthetic c(Lsmartisan/widget/SmartisanComboTitleBar;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic d(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$LeftBtnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->C:Lsmartisan/widget/SmartisanComboTitleBar$LeftBtnClickListener;

    return-object p0
.end method

.method public static synthetic e(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->F:Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;

    return-object p0
.end method

.method public static synthetic f(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->G:Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;

    return-object p0
.end method

.method public static synthetic g(Lsmartisan/widget/SmartisanComboTitleBar;)Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->D:Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;

    return-object p0
.end method

.method private getMidContainerParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method public static synthetic h(Lsmartisan/widget/SmartisanComboTitleBar;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    return-object p0
.end method

.method private setCenterSpinnerStyle(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->i:Z

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setIsNeedVerticalScroll(Z)V

    .line 4
    iget v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->d:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setCenterLeftIcon(I)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->f:[Ljava/lang/String;

    iget-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lsmartisan/widget/SmartisanSpinnerView;->a([Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setSpinnerStyle(I)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->x:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar;->setTitleColor(I)V

    .line 8
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->y:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar;->setSubtitleColor(I)V

    goto :goto_0

    .line 9
    :cond_1
    instance-of p1, v0, Lsmartisan/widget/SmartisanMarqueeView;

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->x:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar;->setTitleColor(I)V

    .line 11
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->y:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar;->setSubtitleColor(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setSecondaryLayoutStyle(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->c()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->c()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar;->setWithSecondaryLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private setWithSecondaryLayout(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->v:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->v:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->u:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->u:Landroid/view/View;

    sget v0, Lsmartisan/widget/R$drawable;->secondary_bar_shadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    sget v0, Lsmartisan/widget/R$drawable;->title_bar_shadow_short:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public a(I)Lsmartisan/widget/SmartisanButton;
    .locals 2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/SmartisanButton;

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final a()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 80
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->o:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    .line 81
    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 82
    iget-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 83
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v3

    .line 84
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 85
    invoke-direct {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->getMidContainerParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v5

    if-lez v3, :cond_8

    const/16 v6, 0x9

    const/16 v7, 0xd

    if-lez v1, :cond_5

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v1, v8

    .line 86
    iget v9, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v3, v9

    if-lt v1, v9, :cond_2

    .line 87
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 88
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 89
    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->r:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/SmartisanComboTitleBar;->a(Landroid/view/View;I)V

    .line 90
    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->s:Landroid/view/View;

    invoke-virtual {p0, v1, v2}, Lsmartisan/widget/SmartisanComboTitleBar;->a(Landroid/view/View;I)V

    .line 91
    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v4, v1, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v4, :cond_0

    .line 92
    check-cast v1, Lsmartisan/widget/SmartisanSpinnerView;

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget v4, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanSpinnerView;->setPickerAvailWidth(I)V

    goto :goto_0

    .line 93
    :cond_0
    instance-of v4, v1, Lsmartisan/widget/SmartisanRadioGroup;

    if-eqz v4, :cond_1

    .line 94
    check-cast v1, Lsmartisan/widget/SmartisanRadioGroup;

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget v4, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanRadioGroup;->setAvailWidth(I)V

    .line 95
    :cond_1
    :goto_0
    iget v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    add-int/2addr v0, v1

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v1

    .line 96
    iput v2, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 97
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->r:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lsmartisan/widget/SmartisanComboTitleBar;->a(Landroid/view/View;I)V

    .line 98
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->s:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lsmartisan/widget/SmartisanComboTitleBar;->a(Landroid/view/View;I)V

    .line 99
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_3

    .line 100
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    sub-int/2addr v3, v8

    iget v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lsmartisan/widget/SmartisanSpinnerView;->setPickerAvailWidth(I)V

    goto :goto_1

    .line 101
    :cond_3
    instance-of v1, v0, Lsmartisan/widget/SmartisanRadioGroup;

    if-eqz v1, :cond_4

    .line 102
    check-cast v0, Lsmartisan/widget/SmartisanRadioGroup;

    sub-int/2addr v3, v8

    iget v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lsmartisan/widget/SmartisanRadioGroup;->setAvailWidth(I)V

    .line 103
    :cond_4
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 104
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 105
    iget v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->w:I

    .line 106
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 107
    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    .line 108
    :cond_5
    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v4, v1, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v4, :cond_6

    .line 109
    check-cast v1, Lsmartisan/widget/SmartisanSpinnerView;

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanSpinnerView;->setPickerAvailWidth(I)V

    goto :goto_2

    .line 110
    :cond_6
    instance-of v4, v1, Lsmartisan/widget/SmartisanRadioGroup;

    if-eqz v4, :cond_7

    .line 111
    check-cast v1, Lsmartisan/widget/SmartisanRadioGroup;

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanRadioGroup;->setAvailWidth(I)V

    .line 112
    :cond_7
    :goto_2
    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 113
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final a(II)V
    .locals 7

    if-gtz p1, :cond_0

    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    .line 57
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, -0x1

    .line 58
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 59
    new-instance v4, Lsmartisan/widget/SmartisanButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;)V

    .line 60
    sget-object v5, Lsmartisan/widget/SmartisanComboTitleBar;->L:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setId(I)V

    .line 61
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0xf

    .line 62
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v1, v6, :cond_1

    .line 64
    iget v6, p0, Lsmartisan/widget/SmartisanComboTitleBar;->J:I

    rsub-int/lit8 v6, v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 65
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_2

    if-ne v3, v2, :cond_2

    .line 66
    iget v6, p0, Lsmartisan/widget/SmartisanComboTitleBar;->J:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 67
    :cond_2
    iget-object v6, p0, Lsmartisan/widget/SmartisanComboTitleBar;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v4, v3}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    if-eqz v3, :cond_5

    const/16 v5, 0x9

    if-eq v3, v5, :cond_4

    const/4 v5, 0x6

    if-eq v3, v5, :cond_3

    const/4 v5, 0x7

    if-eq v3, v5, :cond_3

    goto :goto_1

    .line 69
    :cond_3
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v4, v2}, Lsmartisan/widget/SmartisanButton;->setButtonSourceBitmap(I)V

    goto :goto_1

    .line 70
    :cond_4
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 71
    :cond_5
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lsmartisan/widget/SmartisanButton;->setButtonText(Ljava/lang/String;)V

    .line 72
    :goto_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/SmartisanButton;

    if-eqz p2, :cond_7

    .line 76
    new-instance v0, Lsmartisan/widget/SmartisanComboTitleBar$j;

    invoke-direct {v0, p0, p2}, Lsmartisan/widget/SmartisanComboTitleBar$j;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;Lsmartisan/widget/SmartisanButton;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_8
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    if-gez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lsmartisan/widget/SmartisanButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    sget v1, Lsmartisan/widget/R$id;->smartisan_id_combo_titlebar_left_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setId(I)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->o:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    invoke-virtual {p1, p2}, Lsmartisan/widget/SmartisanButton;->setButtonText(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    new-instance p2, Lsmartisan/widget/SmartisanComboTitleBar$f;

    invoke-direct {p2, p0}, Lsmartisan/widget/SmartisanComboTitleBar$f;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(ILjava/lang/String;I)V
    .locals 8

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 v1, 0x3

    if-eq p1, v1, :cond_c

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-gtz p3, :cond_1

    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, -0x1

    if-nez v1, :cond_5

    .line 17
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    new-instance p2, Lsmartisan/widget/SmartisanButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;)V

    .line 19
    sget-object v1, Lsmartisan/widget/SmartisanComboTitleBar;->L:[I

    aget v0, v1, v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setId(I)V

    .line 20
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 21
    :cond_2
    invoke-virtual {p2, v2}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    .line 22
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p2, v3}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    .line 24
    invoke-virtual {p2, p3}, Lsmartisan/widget/SmartisanButton;->setButtonSourceBitmap(I)V

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 26
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 27
    :cond_5
    new-array v5, v1, [I

    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_6

    .line 28
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move p2, v0

    .line 30
    :goto_2
    array-length v1, v5

    if-ge p2, v1, :cond_d

    .line 31
    new-instance v1, Lsmartisan/widget/SmartisanButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;)V

    .line 32
    sget-object v6, Lsmartisan/widget/SmartisanComboTitleBar;->L:[I

    aget v6, v6, p2

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setId(I)V

    .line 33
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0xf

    .line 34
    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 35
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-eq p2, v7, :cond_7

    .line 36
    iget v7, p0, Lsmartisan/widget/SmartisanComboTitleBar;->J:I

    rsub-int/lit8 v7, v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 37
    :cond_7
    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    if-ne p2, v7, :cond_8

    if-ne p1, v4, :cond_8

    .line 38
    iget v7, p0, Lsmartisan/widget/SmartisanComboTitleBar;->J:I

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 39
    :cond_8
    iget-object v7, p0, Lsmartisan/widget/SmartisanComboTitleBar;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eq p1, v4, :cond_b

    if-eq p1, v3, :cond_a

    if-eq p1, v2, :cond_9

    goto :goto_3

    .line 40
    :cond_9
    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    .line 41
    aget v6, v5, p2

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_3

    .line 42
    :cond_a
    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    .line 43
    aget v6, v5, p2

    invoke-virtual {v1, v6}, Lsmartisan/widget/SmartisanButton;->setButtonSourceBitmap(I)V

    goto :goto_3

    .line 44
    :cond_b
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 45
    :goto_3
    iget-object v6, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 46
    :cond_c
    :goto_4
    new-instance p3, Lsmartisan/widget/SmartisanButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;)V

    .line 47
    sget-object v1, Lsmartisan/widget/SmartisanComboTitleBar;->L:[I

    aget v0, v1, v0

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setId(I)V

    .line 48
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 49
    invoke-virtual {p3, p1}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    .line 50
    invoke-virtual {p3, p2}, Lsmartisan/widget/SmartisanButton;->setButtonText(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_d
    :goto_5
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/SmartisanButton;

    if-eqz p2, :cond_e

    .line 53
    new-instance p3, Lsmartisan/widget/SmartisanComboTitleBar$i;

    invoke-direct {p3, p0, p2}, Lsmartisan/widget/SmartisanComboTitleBar$i;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;Lsmartisan/widget/SmartisanButton;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_6

    :cond_f
    return-void
.end method

.method public final a(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanComboTitleBar;->c(I[Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar;->setCenterSubContentText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 78
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->I:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->I:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final b(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    check-cast p1, Lsmartisan/widget/SmartisanRadioGroup;

    invoke-virtual {p1, p2}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioList([Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    check-cast p1, Lsmartisan/widget/SmartisanRadioGroup;

    new-array p2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-virtual {p1, p2}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioList([Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_2

    .line 7
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p2, p3}, Lsmartisan/widget/SmartisanSpinnerView;->a([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 8
    check-cast v0, Lsmartisan/widget/SmartisanSeparatorView;

    invoke-virtual {v0, p3}, Lsmartisan/widget/SmartisanSeparatorView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x4

    if-ne p1, p2, :cond_4

    .line 9
    check-cast v0, Lsmartisan/widget/SmartisanMarqueeView;

    invoke-virtual {v0, p3}, Lsmartisan/widget/SmartisanMarqueeView;->setTitle(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 21
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->v:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    sget v1, Lsmartisan/widget/R$drawable;->smt_title_bar_shadow:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public c(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_1
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    goto/16 :goto_0

    .line 4
    :cond_2
    new-instance v0, Lsmartisan/widget/SmartisanSeparatorView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsmartisan/widget/SmartisanSeparatorView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    goto :goto_0

    .line 5
    :cond_3
    new-instance v1, Lsmartisan/widget/SmartisanMarqueeView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lsmartisan/widget/SmartisanMarqueeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    .line 6
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanComboTitleBar;->setCenterSpinnerStyle(I)V

    goto :goto_0

    .line 7
    :cond_4
    new-instance v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lsmartisan/widget/SmartisanSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    .line 8
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanComboTitleBar;->setCenterSpinnerStyle(I)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    new-instance v1, Lsmartisan/widget/SmartisanComboTitleBar$h;

    invoke-direct {v1, p0}, Lsmartisan/widget/SmartisanComboTitleBar$h;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setRangeClickListener(Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;)V

    goto :goto_0

    .line 10
    :cond_5
    new-instance v1, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lsmartisan/widget/SmartisanSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    .line 11
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanComboTitleBar;->setCenterSpinnerStyle(I)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    new-instance v1, Lsmartisan/widget/SmartisanComboTitleBar$g;

    invoke-direct {v1, p0}, Lsmartisan/widget/SmartisanComboTitleBar$g;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;)V

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;->setDropDownClickListener(Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;)V

    goto :goto_0

    .line 13
    :cond_6
    new-instance v0, Lsmartisan/widget/SmartisanRadioGroup;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsmartisan/widget/SmartisanRadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    .line 14
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    check-cast v0, Lsmartisan/widget/SmartisanRadioGroup;

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->K:Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanRadioGroup;->setSmartisanRadioGroupCallback(Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;)V

    goto :goto_0

    .line 15
    :cond_7
    new-instance v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsmartisan/widget/SmartisanSpinnerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanComboTitleBar;->setCenterSpinnerStyle(I)V

    .line 17
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    .line 18
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 19
    :cond_8
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->p:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 20
    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanComboTitleBar;->b(I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 7
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    if-eq v2, v3, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 12
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public getCenterContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    return-object v0
.end method

.method public getCenterLeftIcon()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanSpinnerView;->getTextLeftIcon()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public getCenterRangeLeftIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanSpinnerView;->getRangeLeftIcon()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCenterRangeRightIcon()Landroid/widget/ImageButton;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0}, Lsmartisan/widget/SmartisanSpinnerView;->getRangeRightIcon()Landroid/widget/ImageButton;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftButton()Lsmartisan/widget/SmartisanButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    return-object v0
.end method

.method public getRightButton()Lsmartisan/widget/SmartisanButton;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanComboTitleBar;->a(I)Lsmartisan/widget/SmartisanButton;

    move-result-object v0

    return-object v0
.end method

.method public getRightButtonList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsmartisan/widget/SmartisanButton;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    return-object v0
.end method

.method public getTitleLayoutView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->n:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->a()V

    return-void
.end method

.method public setCenterContentText(Ljava/lang/String;)V
    .locals 3

    .line 10
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 11
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lsmartisan/widget/SmartisanSpinnerView;->a([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    instance-of v1, v0, Lsmartisan/widget/SmartisanRadioGroup;

    if-eqz v1, :cond_1

    .line 13
    check-cast v0, Lsmartisan/widget/SmartisanRadioGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioList([Ljava/lang/String;)V

    goto :goto_0

    .line 14
    :cond_1
    instance-of v1, v0, Lsmartisan/widget/SmartisanMarqueeView;

    if-eqz v1, :cond_2

    .line 15
    check-cast v0, Lsmartisan/widget/SmartisanMarqueeView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanMarqueeView;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of v1, v0, Lsmartisan/widget/SmartisanSeparatorView;

    if-eqz v1, :cond_3

    .line 17
    check-cast v0, Lsmartisan/widget/SmartisanSeparatorView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSeparatorView;->setTitle(Ljava/lang/String;)V

    .line 18
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->b()V

    return-void
.end method

.method public setCenterContentText(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanComboTitleBar;->setCenterContentText([Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCenterContentText([Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lsmartisan/widget/SmartisanSpinnerView;->a([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    instance-of v1, v0, Lsmartisan/widget/SmartisanRadioGroup;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Lsmartisan/widget/SmartisanRadioGroup;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioList([Ljava/lang/String;)V

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->b()V

    return-void
.end method

.method public setCenterDropClickListener(Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->F:Lsmartisan/widget/SmartisanComboTitleBar$CenterDropClickListener;

    return-void
.end method

.method public setCenterLeftIcon(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setCenterLeftIcon(I)V

    return-void
.end method

.method public setCenterRangeClickListener(Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->G:Lsmartisan/widget/SmartisanComboTitleBar$CenterRangeClickListener;

    return-void
.end method

.method public setCenterRangeIconVisible(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setRangeSpinnerIconVisible(I)V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->b()V

    :cond_0
    return-void
.end method

.method public setCenterRangeLeftIconVisible(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setLeftRangeSpinnerIconVisible(I)V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->b()V

    :cond_0
    return-void
.end method

.method public setCenterRangeRightIconVisible(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setRightRangeSpinnerIconVisible(I)V

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->b()V

    :cond_0
    return-void
.end method

.method public setCenterRangeVerticalScroll(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setIsNeedVerticalScroll(Z)V

    :cond_0
    return-void
.end method

.method public setCenterRangeWheelTextChangeListener(Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setRangeWheelTextChangeListener(Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;)V

    :cond_0
    return-void
.end method

.method public setCenterSubContentText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setSubContentText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lsmartisan/widget/SmartisanMarqueeView;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lsmartisan/widget/SmartisanMarqueeView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanMarqueeView;->setSubTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Lsmartisan/widget/SmartisanSeparatorView;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lsmartisan/widget/SmartisanSeparatorView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSeparatorView;->setSubTitle(Ljava/lang/CharSequence;)V

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanComboTitleBar;->b()V

    return-void
.end method

.method public setCenterViewClickListener(Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->E:Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanRadioGroup;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    new-instance v1, Lsmartisan/widget/SmartisanComboTitleBar$c;

    invoke-direct {v1, p0, p1}, Lsmartisan/widget/SmartisanComboTitleBar$c;-><init>(Lsmartisan/widget/SmartisanComboTitleBar;Lsmartisan/widget/SmartisanComboTitleBar$CenterViewClickListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setLeftButtonEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanButton;->setEnabledStyle(Z)V

    :cond_0
    return-void
.end method

.method public setLeftButtonText(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->z:Lsmartisan/widget/SmartisanButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLeftViewClickListener(Lsmartisan/widget/SmartisanComboTitleBar$LeftBtnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->C:Lsmartisan/widget/SmartisanComboTitleBar$LeftBtnClickListener;

    return-void
.end method

.method public setRightButtonEnable(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanButton;

    .line 3
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4
    invoke-virtual {v1, p1}, Lsmartisan/widget/SmartisanButton;->setEnabledStyle(Z)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public varargs setRightButtonText([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    array-length v0, p1

    if-gez v0, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lsmartisan/widget/SmartisanComboTitleBar;->B:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/SmartisanButton;

    .line 5
    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public setRightViewClickListener(Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->D:Lsmartisan/widget/SmartisanComboTitleBar$RightBtnClickListener;

    return-void
.end method

.method public setSecondaryBarShadowVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->u:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setSubtitleColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lsmartisan/widget/SmartisanMarqueeView;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lsmartisan/widget/SmartisanMarqueeView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanMarqueeView;->setSubTitleColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleColor(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->A:Landroid/view/View;

    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setTitleColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lsmartisan/widget/SmartisanMarqueeView;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lsmartisan/widget/SmartisanMarqueeView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanMarqueeView;->setTitleColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleShadowType(Lsmartisan/widget/SmartisanComboTitleBar$k;)V
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanComboTitleBar$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    sget v0, Lsmartisan/widget/R$drawable;->smt_title_bar_shadow:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    sget v0, Lsmartisan/widget/R$drawable;->title_bar_shadow_short:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public setTitleShadowVisibility(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanComboTitleBar;->t:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
