.class Lcom/smartisanos/launcher/theme/Y;
.super Ljava/lang/Thread;
.source "ThemeTextureLoader.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/Z;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/Z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/Y;->this$0:Lcom/smartisanos/launcher/theme/Z;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/Z;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object v0

    const-string v1, "loadThemeShadowTexture start"

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Y;->this$0:Lcom/smartisanos/launcher/theme/Z;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/Z;->a(Lcom/smartisanos/launcher/theme/Z;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/launcher/theme/t;->P(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/launcher/theme/Y;->this$0:Lcom/smartisanos/launcher/theme/Z;

    invoke-static {v0}, Lcom/smartisanos/launcher/theme/Z;->c(Lcom/smartisanos/launcher/theme/Z;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object p0, p0, Lcom/smartisanos/launcher/theme/Y;->this$0:Lcom/smartisanos/launcher/theme/Z;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/Z;->b(Lcom/smartisanos/launcher/theme/Z;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object p0

    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, p0, v1, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/theme/t;->getInstance()Lcom/smartisanos/launcher/theme/t;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/theme/t;->_f()V

    .line 7
    :goto_0
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_2

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/theme/Z;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "loadThemeShadowTexture complete"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
