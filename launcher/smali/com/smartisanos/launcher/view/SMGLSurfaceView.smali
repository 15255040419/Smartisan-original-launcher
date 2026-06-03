.class public Lcom/smartisanos/launcher/view/SMGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "SMGLSurfaceView.java"


# static fields
.field private static final log:Lcom/smartisanos/launcher/va;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/launcher/view/SMGLSurfaceView;

    invoke-static {v0}, Lcom/smartisanos/launcher/va;->e(Ljava/lang/Class;)Lcom/smartisanos/launcher/va;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->log:Lcom/smartisanos/launcher/va;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p1}, Lcom/smartisanos/launcher/ua;->a(Landroid/view/View;Z)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setFocusable(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestFocus()Z

    return-void
.end method


# virtual methods
.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/SMGLSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->handleLauncherSearchGesture(Landroid/app/Activity;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method
