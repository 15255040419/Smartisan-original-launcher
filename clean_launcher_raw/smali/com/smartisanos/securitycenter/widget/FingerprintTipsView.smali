.class public Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;
.super Landroid/widget/LinearLayout;
.source "FingerprintTipsView.java"


# instance fields
.field private bd:Landroid/widget/ImageView;

.field private hd:Landroid/animation/AnimatorSet;

.field private jd:Ljava/lang/Runnable;

.field private mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Lcom/smartisanos/securitycenter/widget/b;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/b;-><init>(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->jd:Ljava/lang/Runnable;

    const/4 p2, 0x1

    .line 6
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/smartisanos/securitycenter/export/R$layout;->fingerprint_tips:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->initViews()V

    return-void
.end method

.method private Ru()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->jd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private Su()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->mText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->jd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/smartisanos/securitycenter/export/R$integer;->unlocker_fp_tips_anim_duration:I

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$integer;->unlocker_fp_tips_rest_duration:I

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-long v10, v0

    const-string v3, "alpha"

    move-object v2, p0

    move-wide v6, v10

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->a(Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e4ccccd    # 0.2f

    const-string v7, "alpha"

    move-object v6, p0

    .line 10
    invoke-direct/range {v6 .. v11}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->a(Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const v5, 0x3e4ccccd    # 0.2f

    const v6, 0x3e4ccccd    # 0.2f

    int-to-long v7, v1

    const-string v4, "alpha"

    move-object v3, p0

    .line 11
    invoke-direct/range {v3 .. v8}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->a(Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 12
    iget-object v3, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 13
    iget-object v3, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 15
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/smartisanos/securitycenter/widget/m;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/widget/m;-><init>(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->hd:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;FFJ)Landroid/animation/ObjectAnimator;
    .locals 2

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->mText:Landroid/widget/TextView;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 3
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->jd:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic b(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->mText:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic c(Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->Su()V

    return-void
.end method

.method private initViews()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->fp_tips:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->mText:Landroid/widget/TextView;

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->fp_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->bd:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->Ru()V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FingerprintTipsView;->Su()V

    return-void
.end method
