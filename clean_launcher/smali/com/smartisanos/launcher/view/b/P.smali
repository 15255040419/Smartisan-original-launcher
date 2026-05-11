.class public Lcom/smartisanos/launcher/view/b/P;
.super Lcom/smartisanos/smengine/SceneNode;
.source "PageParentForTranslate.java"


# instance fields
.field private Fo:F

.field private Go:I

.field private To:I

.field private _o:Ljava/util/ArrayList;

.field private dl:Lcom/smartisanos/launcher/view/b/fa;

.field private nQ:Z

.field private oQ:I

.field private oc:F


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/smartisanos/launcher/view/b/fa;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/smengine/SceneNode;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/launcher/view/b/P;->_o:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/P;->nQ:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->oc:F

    .line 5
    iput-object p2, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    return-void
.end method

.method private Oz()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/P;->_o:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_3

    if-ltz v0, :cond_2

    .line 3
    iget v1, p0, Lcom/smartisanos/launcher/view/b/P;->Go:I

    if-lt v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_1
    iget v2, p0, Lcom/smartisanos/launcher/view/b/P;->oQ:I

    if-ge v1, v2, :cond_2

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    if-ltz v2, :cond_1

    .line 5
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v3}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_1

    .line 6
    iget-object v3, p0, Lcom/smartisanos/launcher/view/b/P;->_o:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {v4}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/launcher/view/b/M;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/b/P;->_o:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/view/b/fa;->h(Ljava/util/ArrayList;)V

    return-void
.end method

.method private oa(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->oc:F

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/P;->nQ:Z

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget p1, p0, Lcom/smartisanos/launcher/view/b/P;->oc:F

    neg-float p1, p1

    iget v0, p0, Lcom/smartisanos/launcher/view/b/P;->Fo:F

    div-float/2addr p1, v0

    .line 4
    iget v0, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/smartisanos/launcher/view/b/P;->Go:I

    if-lt p1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 9
    iput v0, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    .line 10
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/P;->Oz()V

    return-void
.end method


# virtual methods
.method public Fb(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/launcher/view/b/P;->nQ:Z

    .line 2
    iget-boolean p1, p0, Lcom/smartisanos/launcher/view/b/P;->nQ:Z

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->ar()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->oQ:I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->mr()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/smartisanos/launcher/view/b/P;->oQ:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->Go:I

    .line 5
    iget-object p1, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    invoke-virtual {p1}, Lcom/smartisanos/launcher/view/b/fa;->tr()F

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->Fo:F

    .line 6
    iget p1, p0, Lcom/smartisanos/launcher/view/b/P;->oc:F

    neg-float p1, p1

    iget v0, p0, Lcom/smartisanos/launcher/view/b/P;->Fo:F

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    .line 7
    iget p1, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    goto :goto_0

    .line 9
    :cond_0
    iget v0, p0, Lcom/smartisanos/launcher/view/b/P;->Go:I

    if-lt p1, v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 10
    iput v0, p0, Lcom/smartisanos/launcher/view/b/P;->To:I

    .line 11
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/launcher/view/b/P;->Oz()V

    :cond_2
    return-void
.end method

.method public clear(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/view/b/P;->_o:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/P;->_o:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iput-object v1, p0, Lcom/smartisanos/launcher/view/b/P;->dl:Lcom/smartisanos/launcher/view/b/fa;

    .line 5
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->clear(Z)V

    return-void
.end method

.method public getTranslateX()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/launcher/view/b/P;->oc:F

    return p0
.end method

.method public setTranslate(FFF)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/smartisanos/smengine/SceneNode;->setTranslate(FFF)V

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/b/P;->oa(F)V

    return-void
.end method

.method public setTranslateX(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/smengine/SceneNode;->setTranslateX(F)V

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/launcher/view/b/P;->oa(F)V

    return-void
.end method
