.class public Lcom/smartisanos/smengine/P;
.super Ljava/lang/Object;
.source "SMGLES20.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/smengine/P;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/smengine/P;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static glActiveTexture(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    return-void
.end method

.method public static glAttachShader(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    return-void
.end method

.method public static glBindAttribLocation(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    return-void
.end method

.method public static glBindBuffer(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public static glBindFramebuffer(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    return-void
.end method

.method public static glBindRenderbuffer(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    return-void
.end method

.method public static glBindTexture(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public static glBlendColor(FFFF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    return-void
.end method

.method public static glBlendFunc(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method

.method public static glBlendFuncSeparate(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glBlendFuncSeparate(IIII)V

    return-void
.end method

.method public static glBufferData(IILjava/nio/Buffer;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public static glCheckFramebufferStatus(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCheckFramebufferStatus(I)I

    move-result p0

    return p0
.end method

.method public static glClear(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glClear(I)V

    return-void
.end method

.method public static glClearColor(FFFF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    return-void
.end method

.method public static glClearDepthf(F)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glClearDepthf(F)V

    return-void
.end method

.method public static glClearStencil(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    return-void
.end method

.method public static glColorMask(ZZZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    return-void
.end method

.method public static glCompileShader(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return-void
.end method

.method public static glCreateProgram()I
    .locals 1

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    return v0
.end method

.method public static glCreateShader(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    return p0
.end method

.method public static glCullFace(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCullFace(I)V

    return-void
.end method

.method public static glDeleteBuffers(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public static glDeleteFramebuffers(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    return-void
.end method

.method public static glDeleteProgram(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    return-void
.end method

.method public static glDeleteRenderbuffers(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteRenderbuffers(I[II)V

    return-void
.end method

.method public static glDeleteShader(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void
.end method

.method public static glDeleteTextures(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static glDepthFunc(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glDepthFunc(I)V

    return-void
.end method

.method public static glDisable(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glDisable(I)V

    return-void
.end method

.method public static glDrawArrays(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public static glDrawElements(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void
.end method

.method public static glDrawElements(IIILjava/nio/Buffer;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public static glEnable(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnable(I)V

    return-void
.end method

.method public static glEnableVertexAttribArray(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    return-void
.end method

.method public static glFramebufferRenderbuffer(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glFramebufferRenderbuffer(IIII)V

    return-void
.end method

.method public static glFramebufferTexture2D(IIIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    return-void
.end method

.method public static glGenBuffers(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    return-void
.end method

.method public static glGenFramebuffers(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    return-void
.end method

.method public static glGenRenderbuffers(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glGenRenderbuffers(I[II)V

    return-void
.end method

.method public static glGenTextures(I[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    return-void
.end method

.method public static glGenerateMipmap(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    return-void
.end method

.method public static glGetAttribLocation(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static glGetProgramInfoLog(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static glGetProgramiv(II[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    return-void
.end method

.method public static glGetShaderInfoLog(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static glGetShaderiv(II[II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    return-void
.end method

.method public static glGetString(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static glGetUniformLocation(ILjava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static glLinkProgram(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    return-void
.end method

.method public static glPolygonOffset(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glPolygonOffset(FF)V

    return-void
.end method

.method public static glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public static glRenderbufferStorage(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glRenderbufferStorage(IIII)V

    return-void
.end method

.method public static glScissor(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glScissor(IIII)V

    return-void
.end method

.method public static glShaderSource(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    return-void
.end method

.method public static glStencilFunc(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glStencilFunc(III)V

    return-void
.end method

.method public static glStencilOp(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glStencilOp(III)V

    return-void
.end method

.method public static glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p8}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public static glTexParameterf(IIF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method

.method public static glTexParameteri(III)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    return-void
.end method

.method public static glUniform1f(IF)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method

.method public static glUniform1i(II)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method

.method public static glUniform2f(IFF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    return-void
.end method

.method public static glUniform3f(IFFF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    return-void
.end method

.method public static glUniform3fv(II[FI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    return-void
.end method

.method public static glUniform4f(IFFFF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    return-void
.end method

.method public static glUniform4fv(II[FI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    return-void
.end method

.method public static glUniformMatrix4fv(IIZ[FI)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public static glUseProgram(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public static glVertexAttribPointer(IIIZII)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    return-void
.end method

.method public static glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    .locals 0

    .line 2
    invoke-static/range {p0 .. p5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    return-void
.end method

.method public static glViewport(IIII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public static texImage2D(IILandroid/graphics/Bitmap;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    return-void
.end method
