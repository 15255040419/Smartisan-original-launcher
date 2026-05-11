.class public Lcom/smartisanos/launcher/theme/Z;
.super Ljava/lang/Object;
.source "ThemeTextureLoader.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;

.field private static final ou:[I

.field private static final pu:[I

.field private static final qu:[I


# instance fields
.field private ku:Ljavax/microedition/khronos/egl/EGLContext;

.field private lu:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mThread:Ljava/lang/Thread;

.field private mu:Ljavax/microedition/khronos/egl/EGLSurface;

.field private nu:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/theme/Z;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartisanos/launcher/theme/Z;->ou:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_1

    sput-object v0, Lcom/smartisanos/launcher/theme/Z;->pu:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_2

    sput-object v0, Lcom/smartisanos/launcher/theme/Z;->qu:[I

    return-void

    :array_0
    .array-data 4
        0x3033
        0x1
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data

    :array_2
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->ku:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->lu:Ljavax/microedition/khronos/egl/EGLContext;

    .line 5
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mu:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/launcher/theme/Z;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/Z;->ix()Z

    move-result p0

    return p0
.end method

.method static synthetic access$000()Lcom/smartisanos/launcher/va;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    return-object v0
.end method

.method static synthetic b(Lcom/smartisanos/launcher/theme/Z;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object p0
.end method

.method static synthetic c(Lcom/smartisanos/launcher/theme/Z;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object p0
.end method

.method private hx()V
    .locals 9

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    new-array v8, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    new-array v7, v1, [I

    .line 4
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v2, v3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 5
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Lcom/smartisanos/launcher/theme/Z;->ou:[I

    const/4 v6, 0x1

    move-object v5, v8

    invoke-interface/range {v2 .. v7}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    const/4 v0, 0x0

    .line 6
    aget-object v2, v8, v0

    .line 7
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/smartisanos/launcher/theme/Z;->ku:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v6, Lcom/smartisanos/launcher/theme/Z;->qu:[I

    invoke-interface {v3, v4, v2, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/smartisanos/launcher/theme/Z;->lu:Ljavax/microedition/khronos/egl/EGLContext;

    .line 8
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Z;->lu:Ljavax/microedition/khronos/egl/EGLContext;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v3, v4, :cond_0

    .line 9
    sget-object v3, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "no CONTEXT"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/Z;->nu:Z

    .line 11
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v5, Lcom/smartisanos/launcher/theme/Z;->pu:[I

    invoke-interface {v3, v4, v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/launcher/theme/Z;->mu:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 12
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/Z;->mu:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_8

    .line 13
    iget-object v2, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    const-string v3, "EGL_BAD_DISPLAY"

    const/16 v4, 0x3008

    if-ne v2, v4, :cond_1

    .line 14
    sget-object v5, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v5, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_1
    if-ne v2, v4, :cond_2

    .line 15
    sget-object v4, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v4, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    const/16 v3, 0x3001

    if-ne v2, v3, :cond_3

    .line 16
    sget-object v3, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "EGL_NOT_INITIALIZED"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_3
    const/16 v3, 0x3005

    if-ne v2, v3, :cond_4

    .line 17
    sget-object v3, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "EGL_BAD_CONFIG"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_4
    const/16 v3, 0x3004

    if-ne v2, v3, :cond_5

    .line 18
    sget-object v3, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "EGL_BAD_ATTRIBUTE"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    const/16 v3, 0x3003

    if-ne v2, v3, :cond_6

    .line 19
    sget-object v3, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v4, "EGL_BAD_ALLOC"

    invoke-virtual {v3, v4}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    const/16 v3, 0x3009

    if-ne v2, v3, :cond_7

    .line 20
    sget-object v2, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    const-string v3, "EGL_BAD_MATCH"

    invoke-virtual {v2, v3}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 21
    :cond_7
    iput-boolean v0, p0, Lcom/smartisanos/launcher/theme/Z;->nu:Z

    .line 22
    :cond_8
    iput-boolean v1, p0, Lcom/smartisanos/launcher/theme/Z;->nu:Z

    return-void
.end method

.method private ix()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/launcher/theme/Z;->nu:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, p0, Lcom/smartisanos/launcher/theme/Z;->mEGLDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v3, p0, Lcom/smartisanos/launcher/theme/Z;->mu:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/smartisanos/launcher/theme/Z;->lu:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v2, v3, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind failed ECODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/Z;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {p0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public b(Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/Z;->ku:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/launcher/theme/Z;->hx()V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mThread:Ljava/lang/Thread;

    :cond_0
    return-void
.end method

.method public mg()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string v1, "loadThemeShadowTexture"

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/launcher/theme/Z;->log:Lcom/smartisanos/launcher/va;

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/Z;->clear()V

    .line 4
    new-instance v0, Lcom/smartisanos/launcher/theme/Y;

    invoke-direct {v0, p0}, Lcom/smartisanos/launcher/theme/Y;-><init>(Lcom/smartisanos/launcher/theme/Z;)V

    iput-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mThread:Ljava/lang/Thread;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Z;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/Z;->mThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method
