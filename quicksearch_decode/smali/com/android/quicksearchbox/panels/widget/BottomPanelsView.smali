.class public Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;
.super Landroid/widget/RelativeLayout;
.source "BottomPanelsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;
    }
.end annotation


# instance fields
.field public a:Landroid/view/View;

.field public b:Landroid/view/View;

.field public c:Landroid/view/View;

.field public d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

.field public e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

.field public f:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;

.field public g:Landroid/animation/ObjectAnimator;

.field public h:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic c(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)Lcom/android/quicksearchbox/panels/widget/VoiceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->c()V

    .line 20
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->a()V

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b()V

    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return v0

    .line 8
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->setVoiceEnabled(Z)V

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f06025f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    aput v1, v3, v0

    .line 12
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 16
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$b;

    invoke-direct {v1, p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$b;-><init>(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    .line 18
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_4
    return v0
.end method

.method public b()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b006b

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0800d7

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    const v0, 0x7f08025e

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b:Landroid/view/View;

    const v0, 0x7f08025c

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/panels/widget/VoiceView;

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    const v0, 0x7f080222

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0, p0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->setVoiceListener(Lcom/android/quicksearchbox/panels/widget/VoiceView$VoiceListener;)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g()V

    return-void
.end method

.method public b(Z)V
    .locals 6

    const-string v0, "A170039"

    .line 11
    invoke-static {v0}, Lb/a/a/n1/d;->a(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 13
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->h:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 19
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    if-nez p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    .line 22
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06025f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    aput v4, v3, v0

    const/4 v0, 0x1

    aput v1, v3, v0

    .line 23
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    .line 24
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 25
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$a;

    invoke-direct {v0, p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$a;-><init>(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 27
    :cond_4
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_5

    .line 28
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->g:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_5
    return-void
.end method

.method public final c()V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f080261

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080260

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    iput-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    return-void
.end method

.method public c(Z)Z
    .locals 9

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    xor-int/lit8 v5, p1, 0x1

    .line 4
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    int-to-float v6, p1

    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    int-to-float v7, p1

    const/4 v8, 0x0

    move-wide v1, v3

    .line 7
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 8
    iget-object v1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->onVoiceCancel()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->setVoiceEnabled(Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f08025e

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->onVoiceCancel()V

    :goto_0
    return-void
.end method

.method public onRecordStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->f:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;->onRecordStop()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0800d7

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lb/a/a/n1/h0;->m(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x7f1001b5

    .line 4
    invoke-static {p1}, Lb/a/a/n1/g0;->a(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 7
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    :goto_0
    return v1
.end method

.method public onVoiceCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0}, Lcom/android/quicksearchbox/panels/widget/VoiceView;->b()V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->f:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;->onVoiceCancel()V

    :cond_1
    return-void
.end method

.method public onVoiceCompleted(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->c()V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    invoke-virtual {v0, p1, p2}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->a(Lsmartisanos/app/voiceassistant/ParcelableObject;Z)V

    :cond_1
    if-nez p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->f:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;

    if-eqz p1, :cond_2

    .line 6
    invoke-interface {p1}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;->onVoiceCompleted()V

    :cond_2
    return-void
.end method

.method public onVoiceStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->e:Lcom/android/quicksearchbox/voice/VoiceSearchResultView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/quicksearchbox/voice/VoiceSearchResultView;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->f:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;->onVoiceStart()V

    :cond_1
    return-void
.end method

.method public setBottonPanelsViewListener(Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->f:Lcom/android/quicksearchbox/panels/widget/BottomPanelsView$PanelsListener;

    return-void
.end method

.method public setVoiceEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->a:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->d:Lcom/android/quicksearchbox/panels/widget/VoiceView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/quicksearchbox/panels/widget/BottomPanelsView;->onVoiceCancel()V

    :cond_0
    return-void
.end method
