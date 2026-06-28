.class final Lcom/android/settingslib/display/DisplayDensityUtils$1;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/display/DisplayDensityUtils;->setForcedDisplayDensity(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$density:I

.field final synthetic val$displayId:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(III)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$displayId:I

    iput p2, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$density:I

    iput p3, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 244
    iget v1, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$displayId:I

    iget v2, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$density:I

    iget p0, p0, Lcom/android/settingslib/display/DisplayDensityUtils$1;->val$userId:I

    invoke-interface {v0, v1, v2, p0}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityUtils"

    const-string v0, "Unable to save forced display density setting"

    .line 246
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
