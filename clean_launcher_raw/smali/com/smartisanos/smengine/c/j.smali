.class public Lcom/smartisanos/smengine/c/j;
.super Lcom/smartisanos/smengine/c/g;
.source "ShadowRectShader.java"


# instance fields
.field private final xX:Ljava/lang/String;

.field private final yX:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/smengine/c/g;-><init>()V

    const-string v0, "uniform mat4 uMVPMat;\nuniform mat4 uWorldMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nvoid main() {\n    gl_Position = uMVPMat  * vec4(aPosition, 1.0);\n    v_position = uWorldMatrix * vec4(aPosition, 1.0);\n    v_textureCoord = aTextureCoord;\n}\n"

    .line 2
    iput-object v0, p0, Lcom/smartisanos/smengine/c/j;->xX:Ljava/lang/String;

    const-string v0, "precision mediump float;\nuniform mat4 uSMMVPMatrix;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nuniform sampler2D sTexture0;\nuniform sampler2D sTexture1;\nfloat SAMPLE(sampler2D depths, vec2 uv, float compare, float para){\n    float depth = texture2D(depths, uv).z;\n    if (depth == 1.0) {\n        return 0.0;\n    }\n    return para;\n}\nfloat PCF(sampler2D depths, vec2 uv, float compare, vec2 noise){\n    float result = 0.0;\n    vec2 inx = vec2(-0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.0, 0.0);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.25);\n    inx = vec2(-0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    return result;\n}\nvoid main() {\n    float illuminated = 0.0;\n    vec4 gytyPosition = uSMMVPMatrix * vec4(v_position.xyz, 1.0);\n    gytyPosition = gytyPosition / gytyPosition.w;\n    float s = (gytyPosition.s + 1.0) / 2.0;\n    float t = (gytyPosition.t + 1.0) / 2.0;\n    if (s > -0.006 && s < 1.006 && t > -0.006 && t < 1.006) {\n        float noiseAngle = texture2D(sTexture1, v_textureCoord).x * 2.0 * 3.1415926;\n        vec2 noise = vec2(sin(noiseAngle), cos(noiseAngle));\n        illuminated = PCF(sTexture0, vec2(s, t), 0.0, noise);\n    }\n    gl_FragColor = vec4(0.0, 0.0, 0.0, illuminated * 0.16);\n}\n"

    .line 3
    iput-object v0, p0, Lcom/smartisanos/smengine/c/j;->yX:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/Camera;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/smengine/c/j;->eu()V

    .line 2
    iget p0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glUseProgram(I)V

    const/16 p0, 0xb44

    .line 3
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const/16 p0, 0x405

    .line 4
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glCullFace(I)V

    const/16 p0, 0xb71

    .line 5
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const/16 p0, 0xbe2

    .line 6
    invoke-static {p0}, Lcom/smartisanos/smengine/P;->glEnable(I)V

    const/16 p0, 0x302

    const/16 p1, 0x303

    .line 7
    invoke-static {p0, p1}, Lcom/smartisanos/smengine/P;->glBlendFunc(II)V

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

    const-string v0, "uniform mat4 uMVPMat;\nuniform mat4 uWorldMatrix;\nattribute vec3 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nvoid main() {\n    gl_Position = uMVPMat  * vec4(aPosition, 1.0);\n    v_position = uWorldMatrix * vec4(aPosition, 1.0);\n    v_textureCoord = aTextureCoord;\n}\n"

    const-string v1, "precision mediump float;\nuniform mat4 uSMMVPMatrix;\nvarying vec4 v_position;\nvarying vec2 v_textureCoord;\nuniform sampler2D sTexture0;\nuniform sampler2D sTexture1;\nfloat SAMPLE(sampler2D depths, vec2 uv, float compare, float para){\n    float depth = texture2D(depths, uv).z;\n    if (depth == 1.0) {\n        return 0.0;\n    }\n    return para;\n}\nfloat PCF(sampler2D depths, vec2 uv, float compare, vec2 noise){\n    float result = 0.0;\n    vec2 inx = vec2(-0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, 0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.0, 0.0);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.25);\n    inx = vec2(-0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    inx  = vec2(0.004, -0.004);\n    inx = reflect(inx, noise);\n    result += SAMPLE(depths, uv + inx, compare, 0.1875);\n    return result;\n}\nvoid main() {\n    float illuminated = 0.0;\n    vec4 gytyPosition = uSMMVPMatrix * vec4(v_position.xyz, 1.0);\n    gytyPosition = gytyPosition / gytyPosition.w;\n    float s = (gytyPosition.s + 1.0) / 2.0;\n    float t = (gytyPosition.t + 1.0) / 2.0;\n    if (s > -0.006 && s < 1.006 && t > -0.006 && t < 1.006) {\n        float noiseAngle = texture2D(sTexture1, v_textureCoord).x * 2.0 * 3.1415926;\n        vec2 noise = vec2(sin(noiseAngle), cos(noiseAngle));\n        illuminated = PCF(sTexture0, vec2(s, t), 0.0, noise);\n    }\n    gl_FragColor = vec4(0.0, 0.0, 0.0, illuminated * 0.16);\n}\n"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/smengine/c/g;->z(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    .line 4
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "uMVPMat"

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->cX:I

    .line 6
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "uSMMVPMatrix"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->bX:I

    .line 7
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "uWorldMatrix"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->dX:I

    .line 8
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->gX:I

    .line 9
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->iX:I

    .line 10
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "sTexture0"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->YW:I

    .line 11
    iget v0, p0, Lcom/smartisanos/smengine/c/g;->XW:I

    const-string v1, "sTexture1"

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/P;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/smengine/c/g;->ZW:I

    :cond_2
    return-void
.end method
