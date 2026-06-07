.class public abstract Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;,
        Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
    }
.end annotation


# instance fields
.field public a:Landroidx/recyclerview/widget/ChildHelper;

.field public b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field public final d:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

.field public e:Landroidx/recyclerview/widget/ViewBoundsCheck;

.field public f:Landroidx/recyclerview/widget/ViewBoundsCheck;

.field public g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$a;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 3
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$b;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->d:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    .line 4
    new-instance v0, Landroidx/recyclerview/widget/ViewBoundsCheck;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ViewBoundsCheck;-><init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/ViewBoundsCheck;

    .line 5
    new-instance v0, Landroidx/recyclerview/widget/ViewBoundsCheck;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->d:Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ViewBoundsCheck;-><init>(Landroidx/recyclerview/widget/ViewBoundsCheck$Callback;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f:Landroidx/recyclerview/widget/ViewBoundsCheck;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h:Z

    .line 7
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i:Z

    .line 8
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j:Z

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->k:Z

    .line 10
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    .line 6
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 7
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    .line 9
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    .line 95
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_3

    if-ltz p3, :cond_0

    goto :goto_1

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_2

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_2

    :cond_1
    move p1, p2

    move p3, p1

    goto :goto_0

    :cond_2
    move p3, p0

    :goto_0
    move p2, p1

    move p0, p3

    goto :goto_2

    :cond_3
    if-ltz p3, :cond_4

    :goto_1
    move p0, p3

    move p2, v3

    goto :goto_2

    :cond_4
    if-ne p3, v1, :cond_5

    move p2, p1

    goto :goto_2

    :cond_5
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_8

    :cond_6
    move p2, v2

    goto :goto_2

    :cond_7
    move p0, p2

    .line 96
    :cond_8
    :goto_2
    invoke-static {p0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;
    .locals 2

    .line 188
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;

    invoke-direct {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;-><init>()V

    .line 189
    sget-object v1, Landroidx/recyclerview/R$styleable;->RecyclerView:[I

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 190
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_android_orientation:I

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;->a:I

    .line 191
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_spanCount:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;->b:I

    .line 192
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_reverseLayout:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;->c:Z

    .line 193
    sget p1, Landroidx/recyclerview/R$styleable;->RecyclerView_stackFromEnd:I

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager$c;->d:Z

    .line 194
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public static b(III)Z
    .locals 3

    .line 25
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method


# virtual methods
.method public A()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h:Z

    return-void
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public C()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->h()V

    :cond_0
    return-void
.end method

.method public D()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    .line 174
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    if-nez p1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 23
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
    .locals 1

    .line 18
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    .line 19
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-object v0

    .line 20
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 21
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 22
    :cond_1
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 49
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(ILandroid/view/View;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 56
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(I)V

    .line 58
    invoke-virtual {p0, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;I)V

    return-void

    .line 59
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(IILandroidx/recyclerview/widget/RecyclerView$r;Landroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public final a(ILandroid/view/View;)V
    .locals 0

    .line 50
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/ChildHelper;->a(I)V

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    .line 63
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g(I)V

    .line 65
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    return-void
.end method

.method public a(La/g/h/n/c;)V
    .locals 2

    .line 145
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;La/g/h/n/c;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v1

    add-int/2addr p1, v1

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m()I

    move-result v1

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(III)I

    move-result p2

    .line 4
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l()I

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(III)I

    move-result p1

    .line 5
    invoke-virtual {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 24
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 5

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 82
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    .line 84
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    .line 85
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->s()I

    move-result v2

    .line 86
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a()Z

    move-result v4

    .line 88
    invoke-static {v1, v2, v3, p2, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result p2

    .line 89
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i()I

    move-result v2

    .line 90
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 91
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b()Z

    move-result v4

    .line 92
    invoke-static {v1, v2, v3, p3, v4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(IIIIZ)I

    move-result p3

    .line 93
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 3

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 98
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 99
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 2

    .line 51
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    goto :goto_0

    .line 54
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->g(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 55
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Landroidx/recyclerview/widget/ChildHelper;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public final a(Landroid/view/View;IZ)V
    .locals 4

    .line 26
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v0

    if-nez p3, :cond_1

    .line 27
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->g(Landroidx/recyclerview/widget/RecyclerView$u;)V

    goto :goto_1

    .line 29
    :cond_1
    :goto_0
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p3, p3, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->a(Landroidx/recyclerview/widget/RecyclerView$u;)V

    .line 30
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 31
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->B()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->s()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-ne v1, v3, :cond_5

    .line 33
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/ChildHelper;->c(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    .line 34
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/ChildHelper;->a()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->l:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(II)V

    goto :goto_4

    .line 36
    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 37
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_5
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, p1, p2, v2}, Landroidx/recyclerview/widget/ChildHelper;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    .line 39
    iput-boolean p2, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->c:Z

    .line 40
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->e()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 41
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->b(Landroid/view/View;)V

    goto :goto_4

    .line 42
    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->s()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 43
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->A()V

    goto :goto_3

    .line 44
    :cond_7
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->c()V

    .line 45
    :goto_3
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Landroidx/recyclerview/widget/ChildHelper;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 46
    :cond_8
    :goto_4
    iget-boolean p1, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Z

    if-eqz p1, :cond_9

    .line 47
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 48
    iput-boolean v2, p3, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->d:Z

    :cond_9
    return-void
.end method

.method public a(Landroid/view/View;La/g/h/n/c;)V
    .locals 2

    .line 167
    invoke-static {p1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$u;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ChildHelper;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/View;La/g/h/n/c;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    .line 120
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 121
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o(Landroid/view/View;)V

    .line 62
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView$p;->b(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 101
    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    .line 103
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    :goto_0
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p2, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->j:Landroid/graphics/RectF;

    .line 109
    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 110
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 111
    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    .line 112
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    .line 116
    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 117
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 158
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p0, v1, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    .line 143
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 144
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    :cond_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$g;Landroidx/recyclerview/widget/RecyclerView$g;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .line 66
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 67
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 68
    invoke-virtual {p0, p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView$p;ILandroid/view/View;)V
    .locals 2

    .line 69
    invoke-static {p3}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->z()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    .line 72
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$g;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g(I)V

    .line 74
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$p;->d(Landroidx/recyclerview/widget/RecyclerView$u;)V

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(I)V

    .line 76
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView$p;->c(Landroid/view/View;)V

    .line 77
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->f:Landroidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/ViewInfoStore;->d(Landroidx/recyclerview/widget/RecyclerView$u;)V

    :goto_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;II)V
    .locals 0

    .line 142
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView;->c(II)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;La/g/h/n/c;)V
    .locals 3

    .line 146
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    .line 147
    invoke-virtual {p3, v0}, La/g/h/n/c;->a(I)V

    .line 148
    invoke-virtual {p3, v2}, La/g/h/n/c;->j(Z)V

    .line 149
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    .line 150
    invoke-virtual {p3, v0}, La/g/h/n/c;->a(I)V

    .line 151
    invoke-virtual {p3, v2}, La/g/h/n/c;->j(Z)V

    .line 152
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result v0

    .line 153
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result v1

    .line 154
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->d(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)Z

    move-result v2

    .line 155
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I

    move-result p1

    .line 156
    invoke-static {v0, v1, v2, p1}, La/g/h/n/c$b;->a(IIZI)La/g/h/n/c$b;

    move-result-object p1

    .line 157
    invoke-virtual {p3, p1}, La/g/h/n/c;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/View;La/g/h/n/c;)V
    .locals 6

    .line 170
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    .line 171
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l(Landroid/view/View;)I

    move-result p2

    :cond_1
    move v2, p2

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 172
    invoke-static/range {v0 .. v5}, La/g/h/n/c$c;->a(IIIIZZ)La/g/h/n/c$c;

    move-result-object p1

    .line 173
    invoke-virtual {p4, p1}, La/g/h/n/c;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 159
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    .line 160
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, -0x1

    .line 161
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 163
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 164
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 165
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    if-eqz p1, :cond_3

    .line 166
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i:Z

    .line 13
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;III)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;IILjava/lang/Object;)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->d(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 1

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i:Z

    .line 15
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(ILandroid/os/Bundle;)Z
    .locals 2

    .line 176
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->k:Z

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .line 187
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView;->b:Landroidx/recyclerview/widget/RecyclerView$p;

    iget-object v3, v0, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/view/View;ZZ)Z
    .locals 2

    .line 129
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e:Landroidx/recyclerview/widget/ViewBoundsCheck;

    const/16 v0, 0x6003

    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/ViewBoundsCheck;->a(Landroid/view/View;I)Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->f:Landroidx/recyclerview/widget/ViewBoundsCheck;

    .line 130
    invoke-virtual {p3, p1, v0}, Landroidx/recyclerview/widget/ViewBoundsCheck;->a(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    return p1

    :cond_1
    xor-int/2addr p1, v1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;ILandroid/os/Bundle;)Z
    .locals 7

    .line 177
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_3

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    move v2, p2

    move v3, v2

    goto :goto_3

    :cond_1
    const/4 p3, -0x1

    .line 178
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, p2

    .line 180
    :goto_0
    iget-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p4, p3}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 181
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    .line 182
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 183
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    move p1, p2

    .line 184
    :goto_1
    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 185
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r()I

    move-result p3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result p4

    sub-int/2addr p3, p4

    :goto_2
    move v3, p1

    move v2, p3

    goto :goto_3

    :cond_5
    move v3, p1

    move v2, p2

    :goto_3
    if-nez v3, :cond_6

    if-nez v2, :cond_6

    return p2

    .line 186
    :cond_6
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/recyclerview/widget/RecyclerView;->a(IILandroid/view/animation/Interpolator;IZ)V

    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 6

    .line 131
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 132
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v1

    .line 133
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v2

    .line 134
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result v4

    sub-int/2addr v3, v4

    .line 135
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v5

    sub-int/2addr v4, v5

    .line 136
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 137
    invoke-virtual {p0, p1, v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 138
    iget p1, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    if-ge p1, v3, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    if-le p1, v1, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-ge p1, v4, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    if-gt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 122
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 2

    .line 123
    invoke-virtual {p0, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 124
    aget v0, p2, p3

    const/4 v1, 0x1

    .line 125
    aget p2, p2, v1

    if-eqz p5, :cond_0

    .line 126
    invoke-virtual {p0, p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result p5

    if-eqz p5, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    .line 127
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    goto :goto_1

    .line 128
    :cond_3
    invoke-virtual {p1, v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->j(II)V

    :goto_1
    return v1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->x()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->w()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$r;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 140
    invoke-virtual {p0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    .line 16
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(ILandroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    .line 47
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->k:Landroidx/recyclerview/widget/RecyclerView$g;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Landroid/view/View;
    .locals 5

    .line 17
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 18
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 19
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 20
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->j()I

    move-result v4

    if-ne v4, p1, :cond_2

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->z()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->g0:Landroidx/recyclerview/widget/RecyclerView$r;

    .line 21
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$r;->d()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->r()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q:I

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 3
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-nez p1, :cond_0

    .line 4
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q:I

    .line 5
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r:I

    .line 6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p:I

    .line 7
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p:I

    if-nez p1, :cond_1

    sget-boolean p1, Landroidx/recyclerview/widget/RecyclerView;->z0:Z

    if-nez p1, :cond_1

    .line 8
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r:I

    :cond_1
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 15
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    .line 10
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->h()V

    .line 13
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    .line 14
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 44
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v1

    .line 45
    invoke-static {v1}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$u;->z()Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(ILandroidx/recyclerview/widget/RecyclerView$p;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/view/View;IILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    .line 22
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->k:Z

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v0, p2, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p1, p3, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Rect;)[I
    .locals 9

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 27
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o()I

    move-result v1

    .line 28
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q()I

    move-result v2

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r()I

    move-result v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p()I

    move-result v4

    sub-int/2addr v3, v4

    .line 30
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->h()I

    move-result v4

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n()I

    move-result v5

    sub-int/2addr v4, v5

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v5, v6

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result p1

    sub-int/2addr v6, p1

    .line 33
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p1, v5

    .line 34
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    add-int/2addr p2, v6

    sub-int/2addr v5, v1

    const/4 v1, 0x0

    .line 35
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int/2addr v6, v2

    .line 36
    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    sub-int/2addr p1, v3

    .line 37
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr p2, v4

    .line 38
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 39
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->k()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    if-eqz v3, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    :goto_0
    move v3, v7

    :goto_1
    if-eqz v2, :cond_3

    goto :goto_2

    .line 42
    :cond_3
    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_2
    aput v3, v0, v1

    aput v2, v0, v8

    return-object v0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->c(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->d(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public abstract c()Landroidx/recyclerview/widget/RecyclerView$LayoutParams;
.end method

.method public c(II)V
    .locals 1

    .line 20
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;ILandroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method

.method public c(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .line 19
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$p;)V
    .locals 6

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->e()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    .line 7
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$p;->c(I)Landroid/view/View;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroidx/recyclerview/widget/RecyclerView;->n(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$u;

    move-result-object v3

    .line 9
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->z()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Z)V

    .line 11
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$u;->t()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    iget-object v5, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v5, v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 13
    :cond_1
    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView;->L:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->c(Landroidx/recyclerview/widget/RecyclerView$u;)V

    :cond_2
    const/4 v4, 0x1

    .line 15
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView$u;->a(Z)V

    .line 16
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$p;->a(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 17
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$p;->c()V

    if-lez v0, :cond_4

    .line 18
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->invalidate()V

    :cond_4
    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 12
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->d(I)V

    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->c(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v2

    move v5, v4

    move v2, v3

    :goto_0
    if-ge v1, v0, :cond_5

    .line 3
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v6

    .line 4
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, v7, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0, v6, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v3, :cond_1

    move v3, v6

    .line 7
    :cond_1
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v4, :cond_2

    move v4, v6

    .line 8
    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v2, :cond_3

    move v2, v6

    .line 9
    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v5, :cond_4

    move v5, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a(Landroid/graphics/Rect;II)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e()I
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ChildHelper;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->d(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->e(I)V

    :cond_0
    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView$p;Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 8
    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b(II)V

    return-void
.end method

.method public f(Landroid/view/View;)I
    .locals 1

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->k(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$r;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q:I

    .line 4
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r:I

    goto :goto_0

    .line 5
    :cond_0
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView;->e:Landroidx/recyclerview/widget/ChildHelper;

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q:I

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r:I

    :goto_0
    const/high16 p1, 0x40000000    # 2.0f

    .line 9
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    .line 10
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p:I

    return-void
.end method

.method public f()Z
    .locals 1

    .line 11
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroidx/recyclerview/widget/RecyclerView;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Landroid/view/View;)I
    .locals 2

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public g()Landroid/view/View;
    .locals 3

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/ChildHelper;->d(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public g(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->f(I)V

    :cond_0
    return-void
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView$r;)V
    .locals 0

    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->r:I

    return v0
.end method

.method public h(Landroid/view/View;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->p:I

    return v0
.end method

.method public i(Landroid/view/View;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->m(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->a()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->n(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->m(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public k(Landroid/view/View;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public l()I
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->n(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public l(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->a()I

    move-result p1

    return p1
.end method

.method public m()I
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->o(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public m(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public n(Landroid/view/View;)I
    .locals 0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public o()I
    .locals 1

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public o(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->a:Landroidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ChildHelper;->e(Landroid/view/View;)V

    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->q:I

    return v0
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->o:I

    return v0
.end method

.method public t()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->e()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->c(I)Landroid/view/View;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 4
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_0

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->i:Z

    return v0
.end method

.method public v()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->j:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->l:Z

    return v0
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->g:Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method
