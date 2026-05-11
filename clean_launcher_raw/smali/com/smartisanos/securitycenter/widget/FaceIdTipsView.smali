.class public Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;
.super Landroid/widget/LinearLayout;
.source "FaceIdTipsView.java"


# instance fields
.field private bd:Landroid/widget/ImageView;

.field private cd:Lcom/smartisanos/securitycenter/b/f;

.field private dd:Z

.field private ed:Z

.field private gd:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    const/4 p3, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, p3}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->dd:Z

    .line 6
    iput-boolean p2, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->ed:Z

    .line 7
    new-instance p2, Lcom/smartisanos/securitycenter/widget/a;

    invoke-direct {p2, p0}, Lcom/smartisanos/securitycenter/widget/a;-><init>(Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;)V

    iput-object p2, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->gd:Landroid/view/View$OnClickListener;

    const/4 p2, 0x1

    .line 8
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/smartisanos/securitycenter/export/R$layout;->faceid_tips:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->initViews()V

    return-void
.end method

.method private Lu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    sget v1, Lcom/smartisanos/securitycenter/export/R$drawable;->animation_faceid_refresh:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 4
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->P()V

    return-void
.end method

.method private Mu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    sget v1, Lcom/smartisanos/securitycenter/export/R$drawable;->animation_faceid_detecting:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private Nu()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    sget v1, Lcom/smartisanos/securitycenter/export/R$drawable;->animation_faceid_success:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method

.method private Ou()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method private Pu()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method private Qu()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method private initViews()V
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/securitycenter/export/R$id;->faceid_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->gd:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public N()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->ed:Z

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->hide()V

    return-void
.end method

.method public O()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->ed:Z

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->show()V

    return-void
.end method

.method public P()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->dd:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->dd:Z

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public Q()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Pu()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Lu()V

    return-void
.end method

.method public R()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->reset()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Mu()V

    return-void
.end method

.method public S()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Pu()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Nu()V

    return-void
.end method

.method public a(Lcom/smartisanos/securitycenter/b/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->cd:Lcom/smartisanos/securitycenter/b/f;

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->cd:Lcom/smartisanos/securitycenter/b/f;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-interface {p0, p1}, Lcom/smartisanos/securitycenter/b/f;->e(I)V

    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->ed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Pu()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Ou()V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->Qu()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 5
    iget-object p0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->bd:Landroid/widget/ImageView;

    sget v0, Lcom/smartisanos/securitycenter/export/R$drawable;->face_loop_00:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/securitycenter/widget/FaceIdTipsView;->ed:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
