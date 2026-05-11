.class public Lcom/smartisanos/launcher/theme/s;
.super Lcom/smartisanos/smengine/q;
.source "ChangeThemeHandler.java"


# instance fields
.field final AC:F

.field CC:F

.field COUNT:F

.field DC:F

.field FRAME:I

.field mTotalTime:F

.field final synthetic this$0:Lcom/smartisanos/launcher/theme/t;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/t;[Lcom/smartisanos/smengine/SceneNode;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/s;->this$0:Lcom/smartisanos/launcher/theme/t;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/smartisanos/smengine/q;-><init>([Lcom/smartisanos/smengine/SceneNode;I)V

    const p1, 0x3fc4dd2f    # 1.538f

    .line 3
    iput p1, p0, Lcom/smartisanos/launcher/theme/s;->COUNT:F

    const p1, 0x3ccccccd    # 0.025f

    .line 4
    iput p1, p0, Lcom/smartisanos/launcher/theme/s;->AC:F

    const/16 p2, 0x3e

    .line 5
    iput p2, p0, Lcom/smartisanos/launcher/theme/s;->FRAME:I

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/data/Constants;->getFrameCount()I

    move-result p2

    iput p2, p0, Lcom/smartisanos/launcher/theme/s;->FRAME:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 7
    invoke-static {p2}, Lcom/smartisanos/launcher/data/Constants;->getTimeCount(F)F

    move-result p2

    iput p2, p0, Lcom/smartisanos/launcher/theme/s;->COUNT:F

    .line 8
    iget p2, p0, Lcom/smartisanos/launcher/theme/s;->FRAME:I

    int-to-float v0, p2

    mul-float/2addr v0, p1

    iget p1, p0, Lcom/smartisanos/launcher/theme/s;->COUNT:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/launcher/theme/s;->mTotalTime:F

    .line 9
    iget p1, p0, Lcom/smartisanos/launcher/theme/s;->mTotalTime:F

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/smartisanos/launcher/theme/s;->CC:F

    return-void
.end method


# virtual methods
.method public o(F)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c;->qC:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/smengine/c;->mIsStarted:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/smartisanos/smengine/q;->xC:I

    iget v1, p0, Lcom/smartisanos/smengine/q;->wC:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    .line 4
    iput-boolean v2, p0, Lcom/smartisanos/smengine/c;->qC:Z

    .line 5
    iget-object p0, p0, Lcom/smartisanos/smengine/c;->sC:Lcom/smartisanos/smengine/a;

    if-eqz p0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/smengine/a;->onEnd()V

    :cond_2
    return-void

    .line 7
    :cond_3
    iget-object v1, p0, Lcom/smartisanos/smengine/q;->yC:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/smartisanos/smengine/q;->sc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/smengine/SceneNode;

    .line 9
    invoke-virtual {v3}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "theme-anim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/smartisanos/launcher/pb;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/smartisanos/smengine/SceneNode;->setImageName(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_5
    iget v0, p0, Lcom/smartisanos/launcher/theme/s;->DC:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/smartisanos/launcher/theme/s;->DC:F

    .line 12
    iget p1, p0, Lcom/smartisanos/launcher/theme/s;->DC:F

    iget v0, p0, Lcom/smartisanos/launcher/theme/s;->FRAME:I

    add-int/lit8 v1, v0, -0x1

    int-to-float v1, v1

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/smartisanos/launcher/theme/s;->mTotalTime:F

    div-float/2addr p1, v1

    float-to-int p1, p1

    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_6

    add-int/lit8 p1, v0, -0x1

    .line 13
    :cond_6
    iput p1, p0, Lcom/smartisanos/smengine/q;->xC:I

    return-void
.end method
