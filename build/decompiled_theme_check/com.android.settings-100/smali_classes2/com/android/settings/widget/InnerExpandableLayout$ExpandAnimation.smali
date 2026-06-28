.class Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;
.super Landroid/view/animation/Animation;
.source "InnerExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/InnerExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandAnimation"
.end annotation


# instance fields
.field targetHeight:I

.field private targetView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/widget/InnerExpandableLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/InnerExpandableLayout;Landroid/view/View;I)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 127
    iput-object p2, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->targetView:Landroid/view/View;

    .line 128
    iput p3, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->targetHeight:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    .line 134
    iget-object p2, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->targetView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 135
    iget v0, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->targetHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout$ExpandAnimation;->targetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
