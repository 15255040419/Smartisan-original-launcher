.class public abstract Lcom/smartisanos/smengine/c/g;
.super Ljava/lang/Object;
.source "Shader.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# instance fields
.field protected WW:J

.field protected XW:I

.field protected YW:I

.field protected ZW:I

.field protected _W:I

.field protected aX:I

.field protected bX:I

.field protected cX:I

.field protected dX:I

.field protected eX:I

.field protected fX:I

.field protected gX:I

.field protected hX:I

.field protected iX:I

.field protected jX:I

.field protected kX:I

.field protected lX:I

.field protected nX:I

.field protected oX:I

.field protected pX:I

.field protected qX:I

.field protected rX:I

.field protected sX:I

.field protected tX:I

.field protected uX:I

.field protected vX:I

.field protected wX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/c/g;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/c/g;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/smartisanos/smengine/c/g;->WW:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->YW:I

    .line 5
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->ZW:I

    .line 6
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->_W:I

    .line 7
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->aX:I

    .line 8
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->bX:I

    .line 9
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->cX:I

    .line 10
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->dX:I

    .line 11
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->eX:I

    .line 12
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->fX:I

    .line 13
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->gX:I

    .line 14
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->hX:I

    .line 15
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->iX:I

    .line 16
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->jX:I

    .line 17
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->kX:I

    .line 18
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->lX:I

    .line 19
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->nX:I

    .line 20
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->oX:I

    .line 21
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->pX:I

    .line 22
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->qX:I

    .line 23
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->rX:I

    .line 24
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->sX:I

    .line 25
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->tX:I

    .line 26
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->uX:I

    .line 27
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->vX:I

    .line 28
    iput v0, p0, Lcom/smartisanos/smengine/c/g;->wX:I

    return-void
.end method

.method public static J(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/P;->glUniform1i(II)V

    return-void
.end method

.method private static i(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glCreateShader(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Lcom/smartisanos/smengine/P;->glShaderSource(ILjava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v2, 0x8b81

    .line 4
    invoke-static {v0, v2, p1, v1}, Lcom/smartisanos/smengine/P;->glGetShaderiv(II[II)V

    .line 5
    aget p1, p1, v1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lcom/smartisanos/smengine/c/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SceneManagerCould not compile shader "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/smartisanos/smengine/c/g;->log:Lcom/smartisanos/launcher/va;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SceneManager"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDeleteShader(I)V

    move v0, v1

    :cond_0
    return v0
.end method


# virtual methods
.method public _t()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->cX:I

    return p0
.end method

.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    return-void
.end method

.method public au()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->bX:I

    return p0
.end method

.method public bu()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->YW:I

    return p0
.end method

.method public cu()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->ZW:I

    return p0
.end method

.method public du()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->dX:I

    return p0
.end method

.method protected finalize()V
    .locals 7

    .line 1
    iget v5, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    .line 2
    iget-wide v3, p0, Lcom/smartisanos/smengine/c/g;->WW:J

    .line 3
    new-instance v6, Lcom/smartisanos/smengine/c/f;

    const/16 v2, 0x64

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/smartisanos/smengine/c/f;-><init>(Lcom/smartisanos/smengine/c/g;IJI)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {v6, v0}, Lcom/smartisanos/smengine/n;->q(F)V

    .line 5
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public p(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->cX:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixToShader(I)V

    return-void
.end method

.method public q(Lcom/smartisanos/smengine/SceneNode;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->eX:I

    invoke-virtual {p1, p0}, Lcom/smartisanos/smengine/SceneNode;->setMVPMatrixArrayToShader(I)V

    return-void
.end method

.method public z(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const p0, 0x8b31

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/c/g;->i(ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return p1

    :cond_0
    const v0, 0x8b30

    .line 2
    invoke-static {v0, p2}, Lcom/smartisanos/smengine/c/g;->i(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    return p1

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/P;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0, p0}, Lcom/smartisanos/smengine/P;->glAttachShader(II)V

    .line 5
    invoke-static {v0, p2}, Lcom/smartisanos/smengine/P;->glAttachShader(II)V

    const-string v1, "aPosition"

    .line 6
    invoke-static {v0, p1, v1}, Lcom/smartisanos/smengine/P;->glBindAttribLocation(IILjava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "aNormal"

    .line 7
    invoke-static {v0, v1, v2}, Lcom/smartisanos/smengine/P;->glBindAttribLocation(IILjava/lang/String;)V

    const/4 v2, 0x2

    const-string v3, "aTextureCoord"

    .line 8
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/P;->glBindAttribLocation(IILjava/lang/String;)V

    const/4 v2, 0x3

    const-string v3, "aColor"

    .line 9
    invoke-static {v0, v2, v3}, Lcom/smartisanos/smengine/P;->glBindAttribLocation(IILjava/lang/String;)V

    .line 10
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glLinkProgram(I)V

    new-array v2, v1, [I

    const v3, 0x8b82

    .line 11
    invoke-static {v0, v3, v2, p1}, Lcom/smartisanos/smengine/P;->glGetProgramiv(II[II)V

    .line 12
    aget v2, v2, p1

    if-eq v2, v1, :cond_2

    .line 13
    sget-object v1, Lcom/smartisanos/smengine/c/g;->log:Lcom/smartisanos/launcher/va;

    const-string v2, "SceneManagerCould not link program: "

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    sget-object v1, Lcom/smartisanos/smengine/c/g;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SceneManager"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 15
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glDeleteProgram(I)V

    goto :goto_0

    :cond_2
    move p1, v0

    .line 16
    :goto_0
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glDeleteShader(I)V

    .line 17
    invoke-static {p2}, Lcom/smartisanos/smengine/P;->glDeleteShader(I)V

    return p1
.end method
