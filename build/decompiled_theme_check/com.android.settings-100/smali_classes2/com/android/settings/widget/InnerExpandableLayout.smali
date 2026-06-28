.class public Lcom/android/settings/widget/InnerExpandableLayout;
.super Landroid/widget/LinearLayout;
.source "InnerExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/InnerExpandableLayout$State;,
        Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;,
        Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;,
        Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;,
        Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;,
        Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InnerExpandableLayout"


# instance fields
.field private mAnimating:Z

.field private mCollapseAnimationListener:Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;

.field private mExpandAnimationListener:Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;

.field private mListener:Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

.field private mMeasureSpec:I

.field private mState:Lcom/android/settings/widget/InnerExpandableLayout$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/InnerExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/InnerExpandableLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    new-instance p1, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;-><init>(Lcom/android/settings/widget/InnerExpandableLayout;Lcom/android/settings/widget/InnerExpandableLayout$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mCollapseAnimationListener:Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;

    .line 44
    new-instance p1, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;-><init>(Lcom/android/settings/widget/InnerExpandableLayout;Lcom/android/settings/widget/InnerExpandableLayout$1;)V

    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mExpandAnimationListener:Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;

    const/16 p1, 0x30

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/InnerExpandableLayout;->setGravity(I)V

    const/4 p1, -0x1

    const/high16 p2, -0x80000000

    .line 49
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mMeasureSpec:I

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "InnerExpandableLayout: mMeasureSpec:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mMeasureSpec:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InnerExpandableLayout"

    invoke-static {p1, p0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/widget/InnerExpandableLayout;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mAnimating:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/widget/InnerExpandableLayout;)Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mListener:Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settings/widget/InnerExpandableLayout;Lcom/android/settings/widget/InnerExpandableLayout$State;)Lcom/android/settings/widget/InnerExpandableLayout$State;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mState:Lcom/android/settings/widget/InnerExpandableLayout$State;

    return-object p1
.end method

.method private assertChildrenHeight()V
    .locals 5

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 113
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/InnerExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 114
    iget v3, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mMeasureSpec:I

    invoke-virtual {v2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 115
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 117
    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doCollapse()V
    .locals 4

    .line 62
    invoke-direct {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->assertChildrenHeight()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->getMeasuredHeight()I

    move-result v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collapse: measureHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InnerExpandableLayout"

    invoke-static {v2, v1}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;-><init>(Lcom/android/settings/widget/InnerExpandableLayout;Landroid/view/View;I)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mCollapseAnimationListener:Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimationListener;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 68
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 69
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->setDuration(J)V

    .line 71
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/InnerExpandableLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public doExpand()V
    .locals 4

    .line 75
    invoke-direct {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->assertChildrenHeight()V

    .line 76
    iget v0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mMeasureSpec:I

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->measure(II)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->getMeasuredHeight()I

    move-result v0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/InnerExpandableLayout;->setVisibility(I)V

    .line 82
    new-instance v1, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;

    invoke-direct {v1, p0, p0, v0}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;-><init>(Lcom/android/settings/widget/InnerExpandableLayout;Landroid/view/View;I)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mExpandAnimationListener:Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimationListener;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 85
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x12c

    .line 86
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->setDuration(J)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/InnerExpandableLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public isAnimating()Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mAnimating:Z

    return p0
.end method

.method public isExpand()Z
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mState:Lcom/android/settings/widget/InnerExpandableLayout$State;

    sget-object v0, Lcom/android/settings/widget/InnerExpandableLayout$State;->STATE_EXPAND:Lcom/android/settings/widget/InnerExpandableLayout$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setListener(Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mListener:Lcom/android/settings/widget/InnerExpandableLayout$ExpandCollapseListener;

    return-void
.end method

.method public update()V
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "InnerExpandableLayout"

    const-string v0, "update when animating"

    .line 92
    invoke-static {p0, v0}, Lsmartisanos/util/LogTag;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->assertChildrenHeight()V

    .line 96
    iget v0, p0, Lcom/android/settings/widget/InnerExpandableLayout;->mMeasureSpec:I

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->measure(II)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->isExpand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/widget/InnerExpandableLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 101
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 103
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/InnerExpandableLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
