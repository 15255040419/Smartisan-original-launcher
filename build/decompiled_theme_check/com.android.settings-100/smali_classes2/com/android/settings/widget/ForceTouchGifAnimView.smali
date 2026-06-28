.class public Lcom/android/settings/widget/ForceTouchGifAnimView;
.super Landroid/widget/RelativeLayout;
.source "ForceTouchGifAnimView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ForceTouchGifAnimView$Point;
    }
.end annotation


# instance fields
.field private final CIRCLE_X:I

.field private final CIRCLE_Y:I

.field private final HAND_END_X:I

.field private final HAND_END_Y:I

.field private final HAND_START_X:I

.field private final HAND_START_Y:I

.field private final TOOL1_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL1_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL1_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL2_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL2_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL2_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL3_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL3_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL3_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL4_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL4_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL4_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL5_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL5_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private final TOOL5_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mCircleView:Landroid/widget/ImageView;

.field private mHandView:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mToolView1:Landroid/widget/ImageView;

.field private mToolView2:Landroid/widget/ImageView;

.field private mToolView3:Landroid/widget/ImageView;

.field private mToolView4:Landroid/widget/ImageView;

.field private mToolView5:Landroid/widget/ImageView;

.field private final mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance p2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 p3, 0x3fc00000    # 1.5f

    invoke-direct {p2, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 42
    new-instance p2, Landroid/view/animation/OvershootInterpolator;

    const p3, 0x3fd9999a    # 1.7f

    invoke-direct {p2, p3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object p2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0122

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070159

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_X:I

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07015a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_Y:I

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070157

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_END_X:I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070158

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_END_Y:I

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070155

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->CIRCLE_X:I

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070156

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->CIRCLE_Y:I

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07015b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07015c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07015d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 67
    new-instance v1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 68
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p3, p3

    invoke-direct {p1, p0, p3, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 69
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p3, v0

    invoke-direct {p1, p0, p3, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07015f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070160

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070161

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070164

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 78
    new-instance v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 79
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p2, p3

    int-to-float p3, v0

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 80
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p2, v1

    int-to-float p3, v2

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070165

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070166

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070167

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 87
    new-instance v1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 88
    new-instance p2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p3, p3

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 89
    new-instance p2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p3, v0

    invoke-direct {p2, p0, p1, p3}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070169

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07016a

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f07016b

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 98
    new-instance v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 99
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p2, p3

    int-to-float p3, v0

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 100
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p2, v1

    int-to-float p3, v2

    invoke-direct {p1, p0, p2, p3}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07016f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f070170

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070171

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 107
    new-instance v1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 108
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p3, p3

    invoke-direct {p1, p0, p3, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 109
    new-instance p1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    int-to-float p3, v0

    invoke-direct {p1, p0, p3, p2}, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;FF)V

    iput-object p1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    .line 111
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->initView()V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->initViewState()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ForceTouchGifAnimView;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private buildToolAnim(Landroid/view/View;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;JJ)Landroid/animation/Animator;
    .locals 14

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-wide/from16 v8, p5

    .line 351
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [F

    .line 352
    iget v5, v0, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    const/4 v11, 0x0

    aput v5, v4, v11

    iget v5, v1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    const/4 v12, 0x1

    aput v5, v4, v12

    const-string v5, "X"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 353
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 354
    iget-object v13, v6, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 355
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v3, [F

    .line 356
    iget v0, v0, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v0, v4, v11

    iget v0, v1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v0, v4, v12

    const-string v0, "Y"

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 357
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 358
    iget-object v13, v6, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v13}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v4, v3, [F

    .line 361
    iget v13, v1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v13, v4, v11

    iget v13, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v13, v4, v12

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 362
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 363
    iget-object v5, v6, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 364
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 365
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v3, v3, [F

    .line 367
    iget v1, v1, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v1, v3, v11

    iget v1, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v1, v3, v12

    invoke-static {p1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 368
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    iget-object v1, v6, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 371
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v4, p5

    .line 373
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, p0

    move-wide/from16 v6, p5

    .line 374
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 377
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    move-wide/from16 v1, p7

    .line 378
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0
.end method

.method private createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 400
    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "alpha"

    .line 404
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 405
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 406
    invoke-virtual {p1, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 407
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private createAlphaWithInterpolator(Landroid/view/View;FFJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0

    .line 345
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object p0

    .line 346
    invoke-virtual {p0, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private createCircleFlashAnim()Landroid/animation/Animator;
    .locals 10

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v3, 0x40400000    # 3.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0x12c

    const-wide/16 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v8, 0x12c

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x258

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x3e8

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v8, 0x514

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0x190

    const-wide/16 v8, 0x640

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x12c

    const-wide/16 v8, 0x7d0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x8fc

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 270
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x3e8

    .line 271
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createHandInAnim()Landroid/animation/Animator;
    .locals 8

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_END_X:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x2bc

    .line 222
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 223
    iget-object v7, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_Y:I

    int-to-float v7, v7

    aput v7, v2, v5

    iget v5, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_END_Y:I

    int-to-float v5, v5

    aput v5, v2, v6

    const-string v5, "Y"

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 226
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 227
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 231
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method private createHandOutAnim()Landroid/animation/Animator;
    .locals 8

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_END_X:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_X:I

    int-to-float v4, v4

    const/4 v6, 0x1

    aput v4, v3, v6

    const-string v4, "X"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v3, 0x190

    .line 239
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v7, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v7}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 241
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandView:Landroid/widget/ImageView;

    new-array v2, v2, [F

    iget v7, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_END_Y:I

    int-to-float v7, v7

    aput v7, v2, v5

    iget v5, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_Y:I

    int-to-float v5, v5

    aput v5, v2, v6

    const-string v5, "Y"

    invoke-static {v1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 244
    invoke-virtual {v1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0xe10

    .line 251
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createScaleAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 6

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v4, 0x1

    aput p3, v2, v4

    const-string v5, "scaleX"

    .line 384
    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 385
    invoke-virtual {v2, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    iget-object v5, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 387
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v1, [F

    aput p2, v1, v3

    aput p3, v1, v4

    const-string p2, "scaleY"

    .line 389
    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 390
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 391
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 392
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 394
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 395
    invoke-virtual {p0, p6, p7}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createToolsDisappearAnim()Landroid/animation/Animator;
    .locals 9

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v8, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 333
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-wide/16 v5, 0x12c

    move-object v1, p0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaWithInterpolator(Landroid/view/View;FFJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaWithInterpolator(Landroid/view/View;FFJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaWithInterpolator(Landroid/view/View;FFJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaWithInterpolator(Landroid/view/View;FFJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v2, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaWithInterpolator(Landroid/view/View;FFJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 340
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v0, 0x11f8

    .line 341
    invoke-virtual {p0, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object p0
.end method

.method private createToolsPopAnim()Landroid/animation/Animator;
    .locals 17

    move-object/from16 v9, p0

    .line 276
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 279
    iget-object v0, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    const/4 v11, 0x2

    new-array v1, v11, [F

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    const/4 v12, 0x0

    aput v2, v1, v12

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    const/4 v13, 0x1

    aput v2, v1, v13

    const-string v14, "X"

    invoke-static {v0, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0xfa

    .line 280
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 281
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 282
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v0, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    new-array v1, v11, [F

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v2, v1, v12

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v2, v1, v13

    invoke-static {v0, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 284
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 286
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 287
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const-wide/16 v4, 0xfa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v15, 0xfa

    move-object/from16 v0, p0

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget-object v3, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget-object v4, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/widget/ForceTouchGifAnimView;->buildToolAnim(Landroid/view/View;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;JJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v0, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    new-array v1, v11, [F

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v2, v1, v12

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v2, v1, v13

    const-string v2, "Y"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0xfa

    .line 296
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 297
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 298
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v0, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    new-array v1, v11, [F

    iget-object v3, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v3, v1, v12

    iget-object v3, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    aput v3, v1, v13

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 300
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 302
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 303
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const-wide/16 v4, 0xfa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    move-wide v6, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget-object v3, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget-object v4, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    const-wide/16 v5, 0xfa

    const-wide/16 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/widget/ForceTouchGifAnimView;->buildToolAnim(Landroid/view/View;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;Lcom/android/settings/widget/ForceTouchGifAnimView$Point;JJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    new-array v1, v11, [F

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v2, v1, v12

    iget-object v2, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v2, v2, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v2, v1, v13

    invoke-static {v0, v14, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 312
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 313
    iget-object v3, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 314
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    new-array v3, v11, [F

    iget-object v4, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT2:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v4, v4, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v4, v3, v12

    iget-object v4, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT3:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v4, v4, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    aput v4, v3, v13

    invoke-static {v0, v14, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 316
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 317
    iget-object v3, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolsPopInterpolator:Landroid/view/animation/OvershootInterpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 318
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 319
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const-wide/16 v4, 0xfa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v1, v9, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xfa

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 324
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v1, 0xce4

    .line 325
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0a01aa

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const v0, 0x7f0a0346

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandView:Landroid/widget/ImageView;

    const v0, 0x7f0a0976

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    const v0, 0x7f0a0977

    .line 120
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    const v0, 0x7f0a0978

    .line 121
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    const v0, 0x7f0a0979

    .line 122
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    const v0, 0x7f0a097a

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    return-void
.end method

.method private initViewState()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_X:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mHandView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->HAND_START_Y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->CIRCLE_X:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->CIRCLE_Y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mCircleView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL1_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL2_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL3_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 155
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL4_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->x:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setX(F)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->TOOL5_POINT1:Lcom/android/settings/widget/ForceTouchGifAnimView$Point;

    iget v3, v3, Lcom/android/settings/widget/ForceTouchGifAnimView$Point;->y:F

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setY(F)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 164
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mToolView5:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public cancelAnim()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 213
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method public startAnim()V
    .locals 3

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->cancelAnim()V

    .line 169
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->initViewState()V

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createHandInAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createCircleFlashAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createToolsPopAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createHandOutAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-direct {p0}, Lcom/android/settings/widget/ForceTouchGifAnimView;->createToolsDisappearAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 178
    iget-object v1, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/settings/widget/ForceTouchGifAnimView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/ForceTouchGifAnimView$1;-><init>(Lcom/android/settings/widget/ForceTouchGifAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/widget/ForceTouchGifAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
