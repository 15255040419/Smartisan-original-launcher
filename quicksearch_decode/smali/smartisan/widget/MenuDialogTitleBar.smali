.class public Lsmartisan/widget/MenuDialogTitleBar;
.super Landroid/widget/LinearLayout;
.source "MenuDialogTitleBar.java"


# static fields
.field public static final j:I

.field public static final k:I


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Landroid/view/ViewGroup;

.field public f:Landroid/view/View$OnClickListener;

.field public g:Landroid/view/View$OnClickListener;

.field public h:F

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_cancel_selector:I

    sput v0, Lsmartisan/widget/MenuDialogTitleBar;->j:I

    .line 2
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_complete_selector:I

    sput v0, Lsmartisan/widget/MenuDialogTitleBar;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/MenuDialogTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/MenuDialogTitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->i:Z

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 6
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 7
    sget v2, Lsmartisan/widget/R$layout;->menu_dialog_title_bar:I

    invoke-virtual {v1, v2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 8
    sget v1, Lsmartisan/widget/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    .line 9
    sget v1, Lsmartisan/widget/R$id;->btn_cancel_right:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    .line 10
    sget v1, Lsmartisan/widget/R$id;->btn_cancel_left:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    .line 11
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    new-instance v1, Lsmartisan/widget/MenuDialogTitleBar$a;

    invoke-direct {v1, p0}, Lsmartisan/widget/MenuDialogTitleBar$a;-><init>(Lsmartisan/widget/MenuDialogTitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    new-instance v1, Lsmartisan/widget/MenuDialogTitleBar$b;

    invoke-direct {v1, p0}, Lsmartisan/widget/MenuDialogTitleBar$b;-><init>(Lsmartisan/widget/MenuDialogTitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget-object v0, Lsmartisan/widget/R$styleable;->MenuDialogTitleBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p2, p1

    iput p2, p0, Lsmartisan/widget/MenuDialogTitleBar;->h:F

    .line 17
    iget-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    new-instance p2, Lsmartisan/widget/MenuDialogTitleBar$c;

    invoke-direct {p2, p0}, Lsmartisan/widget/MenuDialogTitleBar$c;-><init>(Lsmartisan/widget/MenuDialogTitleBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 18
    iget-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    new-instance p2, Lsmartisan/widget/MenuDialogTitleBar$d;

    invoke-direct {p2, p0}, Lsmartisan/widget/MenuDialogTitleBar$d;-><init>(Lsmartisan/widget/MenuDialogTitleBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 19
    sget p1, Lsmartisan/widget/R$id;->menu_dialog_title_bar_container:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->e:Landroid/view/ViewGroup;

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Li/t/a;->a(Landroid/content/Context;)Li/t/a$c;

    move-result-object p1

    iget-object p2, p0, Lsmartisan/widget/MenuDialogTitleBar;->e:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Li/t/a$c;->a(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->d:Landroid/view/View;

    const p1, 0x3dcccccd    # 0.1f

    .line 21
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 22
    iget-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    invoke-static {p1}, Li/t/a;->a(Landroid/view/View;)V

    .line 23
    iget-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    invoke-static {p1}, Li/t/a;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/MenuDialogTitleBar;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/MenuDialogTitleBar;->g:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic b(Lsmartisan/widget/MenuDialogTitleBar;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/MenuDialogTitleBar;->f:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static synthetic c(Lsmartisan/widget/MenuDialogTitleBar;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static synthetic d(Lsmartisan/widget/MenuDialogTitleBar;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic e(Lsmartisan/widget/MenuDialogTitleBar;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 2
    sget v0, Lsmartisan/widget/MenuDialogTitleBar;->j:I

    .line 3
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/MenuDialogTitleBar;->a(ZI)V

    return-void
.end method

.method public final a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p2}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftImageViewRes(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lsmartisan/widget/MenuDialogTitleBar;->setRightImageRes(I)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 2
    sget v0, Lsmartisan/widget/MenuDialogTitleBar;->k:I

    .line 3
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/MenuDialogTitleBar;->a(ZI)V

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->i:Z

    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/MenuDialogTitleBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getLeftButton()Landroid/widget/TextView;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getLeftImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightButton()Landroid/widget/TextView;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getRightImageView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitleBarContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->e:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTopShadowHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->i:Z

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public setLeftButtonText(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setLeftButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLeftButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setLeftButtonVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setLeftImageViewRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Li/r/b;->a(Landroid/view/View;I)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Li/t/a;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public setOnLeftButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnRightButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/MenuDialogTitleBar;->g:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightButtonText(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setRightButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setRightButtonText(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public setRightButtonVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setRightImageRes(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->b:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Li/r/b;->a(Landroid/view/View;I)Z

    move-result p1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->c:Landroid/widget/ImageView;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Li/t/a;->b(Landroid/view/View;Z)V

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    iget v1, p0, Lsmartisan/widget/MenuDialogTitleBar;->h:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleBarBackgroundResource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->e:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    return-void
.end method

.method public setTitleSingleLine(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/MenuDialogTitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    return-void
.end method
