.class public Lcom/smartisanos/smengine/mymaterial/C;
.super Lcom/smartisanos/smengine/mymaterial/f;
.source "TwoPassFilterMaterial.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field protected AW:Lcom/smartisanos/smengine/y;

.field protected DW:Lcom/smartisanos/smengine/y;

.field protected EW:Z

.field protected FW:Z

.field protected GW:Z

.field protected sW:I

.field protected tW:I

.field protected uW:Lcom/smartisanos/smengine/N;

.field protected vW:Lcom/smartisanos/smengine/N;

.field protected wW:Ljava/lang/String;

.field protected xW:Ljava/lang/String;

.field protected yW:Lcom/smartisanos/smengine/mymaterial/f;

.field protected zW:Lcom/smartisanos/smengine/mymaterial/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/mymaterial/C;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/mymaterial/C;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_TwoPassRenderTargetFirst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->wW:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    invoke-static {}, Lcom/smartisanos/smengine/Ra;->vt()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_TwoPassRenderTargetSecond"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->EW:Z

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->FW:Z

    .line 6
    iput-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    .line 7
    new-instance v2, Lcom/smartisanos/smengine/mymaterial/f;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_first"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2, p3}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    .line 8
    new-instance p2, Lcom/smartisanos/smengine/Ca;

    invoke-direct {p2}, Lcom/smartisanos/smengine/Ca;-><init>()V

    .line 9
    iget-boolean p3, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    const/4 v2, 0x5

    if-eqz p3, :cond_0

    .line 10
    iput v2, p2, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 11
    iput v1, p2, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 12
    iput v0, p2, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 13
    iput v0, p2, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 14
    iget-object p3, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p3, v0, p2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    goto :goto_0

    .line 15
    :cond_0
    iput v1, p2, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 16
    iput v1, p2, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 17
    iput v0, p2, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 18
    iput v0, p2, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 19
    iget-object p3, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p3, v0, p2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 20
    :goto_0
    new-instance p2, Lcom/smartisanos/smengine/mymaterial/f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_second"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p4, p5}, Lcom/smartisanos/smengine/mymaterial/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    .line 21
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->wW:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/smartisanos/smengine/mymaterial/f;->c(ILjava/lang/String;)V

    .line 22
    new-instance p1, Lcom/smartisanos/smengine/Ca;

    invoke-direct {p1}, Lcom/smartisanos/smengine/Ca;-><init>()V

    .line 23
    iget-boolean p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    if-eqz p2, :cond_1

    .line 24
    iput v2, p1, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 25
    iput v1, p1, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 26
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 27
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 28
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    goto :goto_1

    .line 29
    :cond_1
    iput v1, p1, Lcom/smartisanos/smengine/Ca;->mT:I

    .line 30
    iput v1, p1, Lcom/smartisanos/smengine/Ca;->nT:I

    .line 31
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mWrapS:I

    .line 32
    iput v0, p1, Lcom/smartisanos/smengine/Ca;->mWrapT:I

    .line 33
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {p2, v0, p1}, Lcom/smartisanos/smengine/mymaterial/f;->a(ILcom/smartisanos/smengine/Ca;)V

    .line 34
    :goto_1
    invoke-static {}, Lcom/smartisanos/smengine/F;->vp()Lcom/smartisanos/smengine/y;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/C;->DW:Lcom/smartisanos/smengine/y;

    .line 35
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/C;->DW:Lcom/smartisanos/smengine/y;

    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->clone()Lcom/smartisanos/smengine/y;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/C;->AW:Lcom/smartisanos/smengine/y;

    return-void
.end method


# virtual methods
.method public It()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, " success"

    const/4 v2, 0x1

    const-string v3, "t_blur_background"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/smengine/mymaterial/C;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearResource mRenderTargetFirst name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/smengine/mymaterial/C;->log:Lcom/smartisanos/launcher/va;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "already clearResource mRenderTargetFirst name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v5}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    const-string v4, "_TwoPassRenderTargetSecond"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/smartisanos/smengine/mymaterial/C;->log:Lcom/smartisanos/launcher/va;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already clearResource mRenderTargetSecond name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v4}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v1}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_4
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/smartisanos/smengine/mymaterial/C;->log:Lcom/smartisanos/launcher/va;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not clearResource mRenderTargetSecond name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected Tt()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/smengine/N;

    iget-object v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->wW:Ljava/lang/String;

    iget v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->sW:I

    iget v4, p0, Lcom/smartisanos/smengine/mymaterial/C;->tW:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;IIZZZ)V

    .line 3
    new-instance v1, Lcom/smartisanos/smengine/Da;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 4
    iget-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    .line 5
    iget-boolean v2, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1, v3, v4, v5, v5}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1, v4, v4, v5, v5}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 8
    :goto_0
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object v2

    invoke-virtual {v2}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object v2

    .line 9
    iget-object v6, p0, Lcom/smartisanos/smengine/mymaterial/C;->wW:Ljava/lang/String;

    invoke-virtual {v2, v6, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 10
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    .line 11
    new-instance v0, Lcom/smartisanos/smengine/N;

    iget-object v8, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    iget v9, p0, Lcom/smartisanos/smengine/mymaterial/C;->sW:I

    iget v10, p0, Lcom/smartisanos/smengine/mymaterial/C;->tW:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/smartisanos/smengine/N;-><init>(Ljava/lang/String;IIZZZ)V

    .line 12
    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/smengine/N;->Ma(Z)V

    .line 13
    new-instance v1, Lcom/smartisanos/smengine/Da;

    invoke-direct {v1, v0}, Lcom/smartisanos/smengine/Da;-><init>(Lcom/smartisanos/smengine/N;)V

    .line 14
    iget-boolean v6, p0, Lcom/smartisanos/smengine/mymaterial/C;->GW:Z

    if-eqz v6, :cond_2

    .line 15
    invoke-virtual {v1, v3, v4, v5, v5}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1, v4, v4, v5, v5}, Lcom/smartisanos/smengine/Da;->e(IIII)V

    .line 17
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/smartisanos/smengine/Ea;->a(Ljava/lang/String;Lcom/smartisanos/smengine/Da;)V

    .line 18
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    const/high16 p0, 0x3f800000    # 1.0f

    .line 19
    invoke-virtual {v0, p0, p0, p0, p0}, Lcom/smartisanos/smengine/N;->e(FFFF)V

    return-void
.end method

.method public Ut()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->create()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->bind()V

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->sW:I

    iget v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->tW:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    const/16 v0, 0xc11

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 5
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    const/16 v0, 0xb71

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v0, v0, v0, v0}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 8
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glClear(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->create()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Xt()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->EW:Z

    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->AW:Lcom/smartisanos/smengine/y;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->yW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->AW:Lcom/smartisanos/smengine/y;

    iget-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->EW:Z

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/N;->La(Z)V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->genMipmap()V

    const p0, 0x8d40

    .line 18
    invoke-static {p0, v2}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    const/16 p0, 0xde1

    .line 19
    invoke-static {p0, v2}, Lcom/smartisanos/smengine/P;->glBindTexture(II)V

    return-void
.end method

.method public Vt()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->create()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/N;->bind()V

    .line 3
    iget v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->sW:I

    iget v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->tW:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Lcom/smartisanos/smengine/P;->glViewport(IIII)V

    const/16 v0, 0xc11

    .line 4
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 5
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    const/16 v0, 0xb71

    .line 6
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    invoke-static {v0, v0, v0, v0}, Lcom/smartisanos/smengine/P;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 8
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glClear(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->create()V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->As()V

    .line 11
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Yt()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0}, Lcom/smartisanos/smengine/mymaterial/f;->Ht()V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-boolean v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->FW:Z

    iget-object v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->DW:Lcom/smartisanos/smengine/y;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/smartisanos/smengine/mymaterial/f;->a(ZLcom/smartisanos/smengine/y;ZZ)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/mymaterial/f;->tc(I)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->zW:Lcom/smartisanos/smengine/mymaterial/f;

    iget-object v1, p0, Lcom/smartisanos/smengine/mymaterial/C;->DW:Lcom/smartisanos/smengine/y;

    iget-boolean v3, p0, Lcom/smartisanos/smengine/mymaterial/C;->FW:Z

    invoke-virtual {v0, v1, v3}, Lcom/smartisanos/smengine/mymaterial/f;->b(Lcom/smartisanos/smengine/y;Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {v0, v2}, Lcom/smartisanos/smengine/N;->La(Z)V

    .line 17
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {p0}, Lcom/smartisanos/smengine/N;->genMipmap()V

    const p0, 0x8d40

    .line 18
    invoke-static {p0, v2}, Lcom/smartisanos/smengine/P;->glBindFramebuffer(II)V

    return-void
.end method

.method public Wt()Lcom/smartisanos/smengine/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/smengine/mymaterial/C;->AW:Lcom/smartisanos/smengine/y;

    return-object p0
.end method

.method protected Xt()V
    .locals 0

    return-void
.end method

.method protected Yt()V
    .locals 0

    return-void
.end method

.method public d(Lcom/smartisanos/smengine/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/mymaterial/C;->AW:Lcom/smartisanos/smengine/y;

    return-void
.end method

.method public setSize(II)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/smartisanos/smengine/mymaterial/C;->sW:I

    .line 2
    iput p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->tW:I

    .line 3
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p1

    invoke-virtual {p1}, Lcom/smartisanos/smengine/Ra;->rt()Lcom/smartisanos/smengine/Ea;

    move-result-object p1

    .line 4
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->wW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    invoke-virtual {p2, v1}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 7
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->uW:Lcom/smartisanos/smengine/N;

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p0, Lcom/smartisanos/smengine/mymaterial/C;->xW:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/smartisanos/smengine/Ea;->ab(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    invoke-virtual {p1, v1}, Lcom/smartisanos/smengine/N;->Ka(Z)V

    .line 11
    iput-object v0, p0, Lcom/smartisanos/smengine/mymaterial/C;->vW:Lcom/smartisanos/smengine/N;

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/mymaterial/C;->Tt()V

    return-void
.end method
