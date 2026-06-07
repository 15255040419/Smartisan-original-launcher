.class public Lsmartisan/widget/RadioGroupExpand;
.super Landroid/widget/RadioGroup;
.source "RadioGroupExpand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/RadioGroupExpand$b;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lsmartisan/widget/RadioGroupExpand$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->b:Ljava/util/LinkedList;

    .line 3
    new-instance p1, Lsmartisan/widget/RadioGroupExpand$a;

    invoke-direct {p1, p0}, Lsmartisan/widget/RadioGroupExpand$a;-><init>(Lsmartisan/widget/RadioGroupExpand;)V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->b:Ljava/util/LinkedList;

    .line 6
    new-instance p1, Lsmartisan/widget/RadioGroupExpand$a;

    invoke-direct {p1, p0}, Lsmartisan/widget/RadioGroupExpand$a;-><init>(Lsmartisan/widget/RadioGroupExpand;)V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->c:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/RadioGroupExpand;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/RadioGroupExpand;->a()V

    return-void
.end method

.method private getSelectedTabIndex()I
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lsmartisan/widget/RadioGroupExpand;->a:I

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/RadioGroupExpand;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lsmartisan/widget/RadioGroupExpand;->b:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/RadioGroupExpand$b;

    iget v2, v2, Lsmartisan/widget/RadioGroupExpand$b;->a:I

    iget v3, p0, Lsmartisan/widget/RadioGroupExpand;->a:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 7
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 8
    sget v3, Lsmartisan/widget/R$id;->id_smartisan_bar_shadow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 9
    sget v3, Lsmartisan/widget/R$drawable;->tab_bar_shadow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent must be a RelativeLayout when showing the shadow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDefaultSelectedTab(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->a:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public setTabBackgroundDrawable(I)V
    .locals 0

    return-void
.end method

.method public setTabColor(I)V
    .locals 0

    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0

    return-void
.end method
