.class public abstract Lsmartisan/widget/ListContentItem;
.super Landroid/widget/RelativeLayout;
.source "ListContentItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/ListContentItem$OnDisabledClickListener;
    }
.end annotation


# static fields
.field public static volatile s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Float;",
            "[",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public static t:F

.field public static u:Landroid/database/ContentObserver;


# instance fields
.field public a:Landroid/widget/FrameLayout;

.field public b:Landroid/widget/LinearLayout;

.field public c:Landroid/widget/LinearLayout;

.field public d:I

.field public e:Landroid/widget/ImageView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/TextView;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Landroid/widget/Toast;

.field public l:I

.field public m:Lsmartisan/widget/ListContentItem$OnDisabledClickListener;

.field public final n:[I

.field public final o:[I

.field public p:Landroid/graphics/Paint;

.field public q:F

.field public r:Li/t/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsmartisan/widget/ListContentItem;->s:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ListContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ListContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 4
    sget v2, Lsmartisan/widget/R$drawable;->list_content_item_single_shadow:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lsmartisan/widget/R$drawable;->list_content_item_top_shadow:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lsmartisan/widget/R$drawable;->list_content_item_middle_shadow:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lsmartisan/widget/R$drawable;->list_content_item_bottom_shadow:I

    const/4 v6, 0x3

    aput v2, v1, v6

    iput-object v1, p0, Lsmartisan/widget/ListContentItem;->n:[I

    new-array v0, v0, [I

    .line 5
    sget v1, Lsmartisan/widget/R$drawable;->group_list_item_bg_single:I

    aput v1, v0, v3

    sget v1, Lsmartisan/widget/R$drawable;->group_list_item_bg_top:I

    aput v1, v0, v4

    sget v1, Lsmartisan/widget/R$drawable;->group_list_item_bg_mid:I

    aput v1, v0, v5

    sget v1, Lsmartisan/widget/R$drawable;->group_list_item_bg_bottom:I

    aput v1, v0, v6

    iput-object v0, p0, Lsmartisan/widget/ListContentItem;->o:[I

    .line 6
    new-instance v0, Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/ListContentItem;->p:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/ListContentItem;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lsmartisan/widget/ListContentItem;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->a()V

    return-void
.end method

.method private setBgShadowBitmap(Landroid/graphics/Bitmap;)V
    .locals 9

    if-eqz p1, :cond_0

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v3, Landroid/graphics/NinePatch;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    invoke-direct {v3, p1, v0}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v2, v1

    .line 8
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v0

    .line 9
    div-int/lit8 p1, p1, 0x2

    .line 10
    iget-object v4, p0, Lsmartisan/widget/ListContentItem;->p:Landroid/graphics/Paint;

    int-to-float v7, v2

    int-to-float v8, p1

    move-object v2, p0

    move v5, v7

    move v6, v8

    invoke-static/range {v2 .. v8}, Li/k;->a(Landroid/view/View;Landroid/graphics/NinePatch;Landroid/graphics/Paint;FFFF)V

    const p1, 0x3dcccccd    # 0.1f

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setElevation(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 35
    sget-object v0, Lsmartisan/widget/ListContentItem;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sget v2, Lsmartisan/widget/ListContentItem;->t:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(ILandroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
    .locals 0

    if-lez p1, :cond_0

    .line 40
    invoke-virtual {p3, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    .line 45
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/ListContentItem;->q:F

    .line 46
    sget-object v0, Lsmartisan/widget/ListContentItem;->s:Ljava/util/HashMap;

    iget v1, p0, Lsmartisan/widget/ListContentItem;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    return-void

    .line 47
    :cond_0
    sget-object v0, Lsmartisan/widget/ListContentItem;->s:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 48
    sget p1, Lsmartisan/widget/ListContentItem;->t:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lsmartisan/widget/ListContentItem;->s:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    :goto_0
    iput p1, p0, Lsmartisan/widget/ListContentItem;->q:F

    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 50
    iget v0, p0, Lsmartisan/widget/ListContentItem;->q:F

    sput v0, Lsmartisan/widget/ListContentItem;->t:F

    .line 51
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->n:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 53
    :goto_1
    iget-object v2, p0, Lsmartisan/widget/ListContentItem;->n:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 54
    aget v2, v2, v1

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 55
    :cond_4
    sget-object p1, Lsmartisan/widget/ListContentItem;->s:Ljava/util/HashMap;

    iget v1, p0, Lsmartisan/widget/ListContentItem;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    const/16 v0, 0xf

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4
    sget v1, Lsmartisan/widget/R$layout;->list_content_item_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    sget v3, Lsmartisan/widget/R$id;->left_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    .line 6
    sget v3, Lsmartisan/widget/R$id;->mid_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    .line 7
    sget v3, Lsmartisan/widget/R$id;->right_container:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lsmartisan/widget/ListContentItem;->c:Landroid/widget/LinearLayout;

    .line 8
    sget-object v1, Lsmartisan/widget/R$styleable;->ListContentItem:[I

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 9
    sget v4, Lsmartisan/widget/R$styleable;->ListContentItem_smtIcon:I

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 10
    sget v6, Lsmartisan/widget/R$styleable;->ListContentItem_smtTitle:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 11
    sget v7, Lsmartisan/widget/R$styleable;->ListContentItem_smtSummary:I

    invoke-virtual {v1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 12
    sget v8, Lsmartisan/widget/R$styleable;->ListContentItem_backgroundStyle:I

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lsmartisan/widget/ListContentItem;->d:I

    .line 13
    sget v8, Lsmartisan/widget/R$styleable;->ListContentItem_isPressable:I

    invoke-virtual {v1, v8, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, p0, Lsmartisan/widget/ListContentItem;->j:Z

    .line 14
    sget v8, Lsmartisan/widget/R$styleable;->ListContentItem_customMidView:I

    invoke-virtual {v1, v8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 15
    sget v9, Lsmartisan/widget/R$styleable;->ListContentItem_customRightView:I

    invoke-virtual {v1, v9, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    if-lez v9, :cond_0

    move v10, v2

    goto :goto_0

    :cond_0
    move v10, v3

    .line 16
    :goto_0
    iput-boolean v10, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-lez v8, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 17
    :goto_1
    iput-boolean v2, p0, Lsmartisan/widget/ListContentItem;->i:Z

    .line 18
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getDefaultLeftLayout()I

    move-result v2

    .line 19
    iget-boolean v3, p0, Lsmartisan/widget/ListContentItem;->i:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getDefaultMidLayout()I

    move-result v8

    .line 20
    :goto_2
    iget-boolean v3, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->getDefaultRightLayout()I

    move-result v9

    .line 21
    :goto_3
    iget-object v3, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2, v3, v0}, Lsmartisan/widget/ListContentItem;->a(ILandroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 22
    iget-object v2, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v2, v0}, Lsmartisan/widget/ListContentItem;->a(ILandroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 23
    iget-object v2, p0, Lsmartisan/widget/ListContentItem;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v9, v2, v0}, Lsmartisan/widget/ListContentItem;->a(ILandroid/view/ViewGroup;Landroid/view/LayoutInflater;)V

    .line 24
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->e()V

    .line 25
    new-instance v0, Li/t/d;

    invoke-direct {v0, p0, p2, p3}, Li/t/d;-><init>(Landroid/view/View;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    .line 26
    iget-object p2, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    invoke-virtual {p2}, Li/t/d;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lsmartisan/widget/ListContentItem;->d:I

    if-eq p2, v5, :cond_4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsmartisan/widget/ListContentItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 28
    :cond_4
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {p0, v6}, Lsmartisan/widget/ListContentItem;->setTitle(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0, v7}, Lsmartisan/widget/ListContentItem;->setSummary(Ljava/lang/CharSequence;)V

    .line 31
    invoke-virtual {p0, v4}, Lsmartisan/widget/ListContentItem;->setIcon(I)V

    .line 32
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->g()V

    .line 33
    iget-object p2, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    invoke-virtual {p2}, Li/t/d;->a()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {p1}, Li/g;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->f()V

    :cond_5
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 41
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->m:Lsmartisan/widget/ListContentItem$OnDisabledClickListener;

    if-nez v0, :cond_0

    iget v0, p0, Lsmartisan/widget/ListContentItem;->l:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public b()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->left_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/ListContentItem;->e:Landroid/widget/ImageView;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$id;->item_title:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/ListContentItem;->f:Landroid/widget/TextView;

    .line 2
    sget v0, Lsmartisan/widget/R$id;->item_summary:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    return-void
.end method

.method public abstract d()V
.end method

.method public final e()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->b()V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->i:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->c()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->h:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->d()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lsmartisan/widget/ListContentItem;->u:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    const-string v1, "com.smartisanos.sidebar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lsmartisan/widget/ListContentItem$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/ListContentItem$a;-><init>(Lsmartisan/widget/ListContentItem;Landroid/os/Handler;)V

    sput-object v0, Lsmartisan/widget/ListContentItem;->u:Landroid/database/ContentObserver;

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "global_pc_mode_settings"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lsmartisan/widget/ListContentItem;->u:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    invoke-virtual {v0}, Li/t/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/ListContentItem;->a(Landroid/content/Context;)V

    .line 3
    sget-object v0, Lsmartisan/widget/ListContentItem;->s:Ljava/util/HashMap;

    iget v1, p0, Lsmartisan/widget/ListContentItem;->q:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/graphics/Bitmap;

    .line 4
    iget v1, p0, Lsmartisan/widget/ListContentItem;->d:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v3, 0x4

    if-gt v1, v3, :cond_1

    sub-int/2addr v1, v2

    .line 5
    aget-object v0, v0, v1

    .line 6
    invoke-direct {p0, v0}, Lsmartisan/widget/ListContentItem;->setBgShadowBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public getDefaultLeftLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->list_content_left_image_view:I

    return v0
.end method

.method public getDefaultMidLayout()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$layout;->list_content_mid_primary_2line:I

    return v0
.end method

.method public abstract getDefaultRightLayout()I
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getLeftContentWidth()F
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->left_icon_area_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMidContentWidth()F
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->f:Landroid/widget/TextView;

    invoke-static {v0}, Li/r/c;->a(Landroid/widget/TextView;)F

    move-result v0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    invoke-static {v1}, Li/r/c;->a(Landroid/widget/TextView;)F

    move-result v1

    .line 3
    iget-object v2, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    int-to-float v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getRightContentWidth()F
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "calculate your width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSummaryView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method public final h()Z
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/ListContentItem;->d:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItem;->m:Lsmartisan/widget/ListContentItem$OnDisabledClickListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lsmartisan/widget/ListContentItem$OnDisabledClickListener;->onDisabledClick()V

    .line 5
    :cond_0
    iget p1, p0, Lsmartisan/widget/ListContentItem;->l:I

    if-lez p1, :cond_2

    .line 6
    iget-object p1, p0, Lsmartisan/widget/ListContentItem;->k:Landroid/widget/Toast;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v1, p0, Lsmartisan/widget/ListContentItem;->l:I

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/ListContentItem;->k:Landroid/widget/Toast;

    .line 8
    iget-object p1, p0, Lsmartisan/widget/ListContentItem;->k:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return v0

    .line 9
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Li/t/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    iget-object v1, p0, Lsmartisan/widget/ListContentItem;->n:[I

    iget v2, p0, Lsmartisan/widget/ListContentItem;->d:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    .line 2
    invoke-virtual {v0, p1, v1}, Li/t/d;->a(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundStyle(I)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/ListContentItem;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->o:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    .line 3
    iput p1, p0, Lsmartisan/widget/ListContentItem;->d:I

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/ListContentItem;->g()V

    :cond_1
    return-void
.end method

.method public setDisabledTips(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/ListContentItem;->l:I

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setLeftContainerVisible(Z)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setLeftContainerVisible(Z)V

    return-void
.end method

.method public setLeftContainerVisible(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->a:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v2, 0x9

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/4 v2, 0x1

    .line 4
    sget v3, Lsmartisan/widget/R$id;->left_container:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    :goto_1
    iget-object v2, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lsmartisan/widget/R$dimen;->flexible_space:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_2

    move v0, v1

    .line 8
    :cond_2
    invoke-virtual {p0, v0}, Lsmartisan/widget/ListContentItem;->setMidContentPaddingLeft(I)V

    return-void
.end method

.method public setMaxSummarySize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    invoke-static {v0, p1}, Li/r/c;->a(Landroid/widget/TextView;F)V

    return-void
.end method

.method public setMaxTitleSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Li/r/c;->a(Landroid/widget/TextView;F)V

    return-void
.end method

.method public setMidContainerWidth(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMidContentPaddingLeft(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    .line 2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/ListContentItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    .line 3
    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setOnDisabledClickListener(Lsmartisan/widget/ListContentItem$OnDisabledClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ListContentItem;->m:Lsmartisan/widget/ListContentItem$OnDisabledClickListener;

    return-void
.end method

.method public setPressable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/ListContentItem;->j:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ListContentItem;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isInScrollingContainer()Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_3

    .line 4
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    :cond_3
    return-void
.end method

.method public setShadowEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    invoke-virtual {v0, p1}, Li/t/d;->a(Z)V

    return-void
.end method

.method public setShadowShouldProjects(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->r:Li/t/d;

    invoke-virtual {v0, p1}, Li/t/d;->b(Z)V

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->g:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/ListContentItem;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ListContentItem;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
