.class Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;
.super Landroid/view/animation/Animation;
.source "InnerExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/InnerExpandableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollapseAnimation"
.end annotation


# instance fields
.field initHeight:I

.field private targetView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/widget/InnerExpandableLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/InnerExpandableLayout;Landroid/view/View;I)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->this$0:Lcom/android/settings/widget/InnerExpandableLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 147
    iput-object p2, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->targetView:Landroid/view/View;

    .line 148
    iput p3, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->initHeight:I

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_0

    .line 154
    iget-object p2, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->targetView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 155
    iget v0, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->initHeight:I

    int-to-float v1, v0

    mul-float/2addr v1, p1

    float-to-int p1, v1

    sub-int/2addr v0, p1

    .line 156
    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 157
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->targetView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/InnerExpandableLayout$CollapseAnimation;->targetView:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method
