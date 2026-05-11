.class public Lcom/smartisanos/securitycenter/widget/UnlockerHintView;
.super Landroid/widget/RelativeLayout;
.source "UnlockerHintView.java"


# instance fields
.field private Ae:Landroid/animation/Animator;

.field private Be:Landroid/os/CountDownTimer;

.field private Ce:Lcom/smartisanos/securitycenter/b/c;

.field private De:Z

.field private mContext:Landroid/content/Context;

.field private qd:I

.field private ve:Landroid/widget/ImageView;

.field private we:Landroid/widget/TextView;

.field private xe:Landroid/view/View;

.field private ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

.field private ze:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->De:Z

    .line 6
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/smartisanos/securitycenter/export/R$layout;->unlocker_hint:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->initViews()V

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1, p1}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ae:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Be:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)Landroid/view/View;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    return-object p0
.end method

.method static synthetic a(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->x(J)V

    return-void
.end method

.method static synthetic b(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)Lcom/smartisanos/securitycenter/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ce:Lcom/smartisanos/securitycenter/b/c;

    return-object p0
.end method

.method private initViews()V
    .locals 7

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->hint_app_logo:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    .line 2
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->hint_text:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    .line 3
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->pin_container:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    .line 4
    sget v2, Lcom/smartisanos/securitycenter/export/R$id;->pin_no_0:I

    .line 5
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/smartisanos/securitycenter/export/R$id;->pin_no_1:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget v2, Lcom/smartisanos/securitycenter/export/R$id;->pin_no_2:I

    .line 6
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget v2, Lcom/smartisanos/securitycenter/export/R$id;->pin_no_3:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget v2, Lcom/smartisanos/securitycenter/export/R$id;->pin_no_4:I

    .line 7
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    const/4 v5, 0x4

    aput-object v2, v1, v5

    sget v2, Lcom/smartisanos/securitycenter/export/R$id;->pin_no_5:I

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    const/4 v6, 0x5

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->w(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->mContext:Landroid/content/Context;

    sget v1, Lcom/smartisanos/securitycenter/export/R$string;->unlocker_unlock_app:I

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, ""

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ze:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private wv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Be:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Be:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method private x(J)V
    .locals 4

    const-wide/16 v0, 0x3e8

    .line 1
    div-long/2addr p1, v0

    long-to-int p1, p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$string;->unlocker_verify_lockout:I

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, p2, v3

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/smartisanos/securitycenter/export/R$color;->unlocker_tips_wrong:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->T()V

    return-void
.end method

.method private xv()V
    .locals 9

    .line 1
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/16 v1, 0x8

    new-array v1, v1, [Landroid/animation/Keyframe;

    const/4 v2, 0x0

    .line 2
    invoke-static {v2, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/high16 v3, -0x3e380000    # -25.0f

    const v5, 0x3dcccccd    # 0.1f

    .line 3
    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/high16 v5, 0x41c80000    # 25.0f

    const v7, 0x3e851eb8    # 0.26f

    .line 4
    invoke-static {v7, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v1, v8

    const v7, 0x3ed70a3d    # 0.42f

    .line 5
    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const v7, 0x3f147ae1    # 0.58f

    .line 6
    invoke-static {v7, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v1, v8

    const v7, 0x3f3d70a4    # 0.74f

    .line 7
    invoke-static {v7, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v7, 0x5

    aput-object v3, v1, v7

    const v3, 0x3f666666    # 0.9f

    .line 8
    invoke-static {v3, v5}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v1, v5

    const/high16 v3, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v3, v2}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 10
    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Landroid/util/Property;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ae:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    new-array v2, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ae:Landroid/animation/Animator;

    .line 15
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ae:Landroid/animation/Animator;

    new-instance v1, Lcom/smartisanos/securitycenter/widget/B;

    invoke-direct {v1, p0}, Lcom/smartisanos/securitycenter/widget/B;-><init>(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ae:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private y(J)V
    .locals 7

    .line 4
    new-instance v6, Lcom/smartisanos/securitycenter/widget/C;

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/securitycenter/widget/C;-><init>(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;JJ)V

    iput-object v6, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Be:Landroid/os/CountDownTimer;

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Be:Landroid/os/CountDownTimer;

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private yv()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ae:Landroid/animation/Animator;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public T()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-virtual {v2}, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->na()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->x(J)V

    if-eqz p3, :cond_0

    .line 16
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->wv()V

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->yv()V

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->y(J)V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/smartisanos/securitycenter/b/c;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ce:Lcom/smartisanos/securitycenter/b/c;

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->mContext:Landroid/content/Context;

    sget v1, Lcom/smartisanos/securitycenter/export/R$string;->unlocker_unlock_app:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ze:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ze:Ljava/lang/String;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ze:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez p2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/securitycenter/c/b;->a(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->De:Z

    if-eqz p1, :cond_3

    .line 13
    :cond_2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Ae:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->wv()V

    return-void
.end method

.method public ea()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->qd:I

    return p0
.end method

.method public synthetic fa()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->T()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->Be:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->wv()V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public ga()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->De:Z

    return-void
.end method

.method public ha()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ve:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->De:Z

    return-void
.end method

.method public ia()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    sget v1, Lcom/smartisanos/securitycenter/export/R$string;->faceid_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$color;->unlocker_tips_wrong:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ja()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    sget v1, Lcom/smartisanos/securitycenter/export/R$string;->fingerprint_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$color;->unlocker_tips_wrong:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ka()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    sget v1, Lcom/smartisanos/securitycenter/export/R$string;->unlocker_invalid_password:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/smartisanos/securitycenter/export/R$color;->unlocker_tips_wrong:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 5
    invoke-virtual {v3}, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->pa()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xv()V

    .line 7
    new-instance v0, Lcom/smartisanos/securitycenter/widget/l;

    invoke-direct {v0, p0}, Lcom/smartisanos/securitycenter/widget/l;-><init>(Lcom/smartisanos/securitycenter/widget/UnlockerHintView;)V

    const-wide/16 v1, 0x190

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public la()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->wv()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public ma()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->wv()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ze:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->we:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->xe:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public w(I)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    array-length v0, v0

    if-gt p1, v0, :cond_2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, p1

    .line 3
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4
    aget-object v1, v1, v0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_1
    iput p1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->qd:I

    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public y(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->oa()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/UnlockerHintView;->ye:[Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 3
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/smartisanos/securitycenter/widget/SecurityPinImageView;->na()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
