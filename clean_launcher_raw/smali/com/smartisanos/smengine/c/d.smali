.class public Lcom/smartisanos/smengine/c/d;
.super Lcom/smartisanos/smengine/c/g;
.source "DepthShadowMapDonorShader9.java"


# instance fields
.field private final xX:Ljava/lang/String;

.field private final yX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/c/g;-><init>()V

    const-string v0, "uniform mat4 uMVPMatArray9[9];\n//uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute float aMvpArrayIndex;\n//varying vec4 vPosition;\nvoid main() {\n    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray9[matrixIndex];\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\n    //vPosition = gl_Position;\n}\n"

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/c/d;->xX:Ljava/lang/String;

    const-string v0, "precision mediump float;\n//varying vec4 vPosition;\nvoid main() {\n    //float depth = vPosition.z / vPosition.w;\n    //gl_FragColor = vec4(depth, 0, 0, 1.0);\n}\n"

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/c/d;->yX:Ljava/lang/String;

    return-void
.end method

.method private setMesh(Lcom/smartisanos/smengine/y;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->nk()V

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->mk()V

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/smengine/y;->Bk()I

    move-result p1

    .line 4
    invoke-static {p1}, Lcom/smartisanos/smengine/x;->Na(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 5
    invoke-static {p1}, Lcom/smartisanos/smengine/x;->Qa(I)I

    move-result v1

    mul-int/lit8 v6, v1, 0x4

    .line 6
    iget v1, p0, Lcom/smartisanos/smengine/c/g;->gX:I

    const/4 v2, 0x3

    const/16 v3, 0x1406

    const/4 v4, 0x0

    move v5, v0

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/smengine/P;->glVertexAttribPointer(IIIZII)V

    .line 7
    iget v1, p0, Lcom/smartisanos/smengine/c/g;->gX:I

    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glEnableVertexAttribArray(I)V

    .line 8
    invoke-static {p1}, Lcom/smartisanos/smengine/x;->Oa(I)I

    move-result p1

    mul-int/lit8 v6, p1, 0x4

    .line 9
    iget v1, p0, Lcom/smartisanos/smengine/c/g;->fX:I

    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Lcom/smartisanos/smengine/P;->glVertexAttribPointer(IIIZII)V

    .line 10
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->fX:I

    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glEnableVertexAttribArray(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/d;->eu()V

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/c/i;->zX:I

    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    if-eq p2, v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/smengine/P;->glUseProgram(I)V

    .line 4
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    iput v0, p2, Lcom/smartisanos/smengine/c/i;->zX:I

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iget-boolean p2, p2, Lcom/smartisanos/smengine/c/i;->CX:Z

    const/4 v0, 0x1

    if-nez p2, :cond_1

    const/16 p2, 0xb44

    .line 6
    invoke-static {p2}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 7
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iput-boolean v0, p2, Lcom/smartisanos/smengine/c/i;->CX:Z

    .line 8
    :cond_1
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iget p2, p2, Lcom/smartisanos/smengine/c/i;->DX:I

    const/16 v1, 0x405

    if-eq p2, v1, :cond_2

    .line 9
    invoke-static {v1}, Lcom/smartisanos/smengine/P;->glCullFace(I)V

    .line 10
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iput v1, p2, Lcom/smartisanos/smengine/c/i;->DX:I

    .line 11
    :cond_2
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iget-boolean p2, p2, Lcom/smartisanos/smengine/c/i;->BX:Z

    if-nez p2, :cond_3

    const/16 p2, 0xb71

    .line 12
    invoke-static {p2}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    .line 13
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iput-boolean v0, p2, Lcom/smartisanos/smengine/c/i;->BX:Z

    .line 14
    :cond_3
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iget-boolean p2, p2, Lcom/smartisanos/smengine/c/i;->AX:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/16 p2, 0xbe2

    .line 15
    invoke-static {p2}, Lcom/smartisanos/smengine/P;->glDisable(I)V

    .line 16
    invoke-static {}, Lcom/smartisanos/smengine/c/i;->getInstance()Lcom/smartisanos/smengine/c/i;

    move-result-object p2

    iput-boolean v0, p2, Lcom/smartisanos/smengine/c/i;->AX:Z

    .line 17
    :cond_4
    invoke-virtual {p1}, Lcom/smartisanos/smengine/SceneNode;->getMesh()Lcom/smartisanos/smengine/y;

    move-result-object p2

    .line 18
    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/c/d;->setMesh(Lcom/smartisanos/smengine/y;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/smartisanos/smengine/c/g;->q(Lcom/smartisanos/smengine/SceneNode;)V

    .line 20
    invoke-virtual {p2}, Lcom/smartisanos/smengine/y;->pk()I

    move-result p0

    const/4 p1, 0x4

    const/16 p2, 0x1403

    .line 21
    invoke-static {p1, p0, p2, v0}, Lcom/smartisanos/smengine/P;->glDrawElements(IIII)V

    return-void
.end method

.method public eu()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/smengine/c/g;->WW:J

    sget-wide v2, Lcom/smartisanos/smengine/c/i;->WX:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    if-nez v0, :cond_2

    .line 2
    :cond_0
    sget-wide v0, Lcom/smartisanos/smengine/c/i;->WX:J

    iput-wide v0, p0, Lcom/smartisanos/smengine/c/g;->WW:J

    const-string v0, "uniform mat4 uMVPMatArray9[9];\n//uniform mat4 uMVPMat;\nattribute vec3 aPosition;\nattribute float aMvpArrayIndex;\n//varying vec4 vPosition;\nvoid main() {\n    int matrixIndex = int(aMvpArrayIndex);\n    mat4 currentMatrix = uMVPMatArray9[matrixIndex];\n    gl_Position = currentMatrix  * vec4(aPosition, 1.0);\n    //vPosition = gl_Position;\n}\n"

    const-string v1, "precision mediump float;\n//varying vec4 vPosition;\nvoid main() {\n    //float depth = vPosition.z / vPosition.w;\n    //gl_FragColor = vec4(depth, 0, 0, 1.0);\n}\n"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/c/g;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "uMVPMatArray9"

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->eX:I

    .line 6
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "aMvpArrayIndex"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->fX:I

    .line 7
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->gX:I

    :cond_2
    return-void
.end method
