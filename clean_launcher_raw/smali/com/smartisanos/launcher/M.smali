.class Lcom/smartisanos/launcher/M;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/M;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOriginWallpaperChangeReceiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mWallpaperChangeReceiver isActivityReady false"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "mWallpaperChangeReceiver MainView.getInstance() == null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_2
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_3

    return-void

    .line 8
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string p2, "android.intent.action.WALLPAPER_CHANGED"

    .line 9
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 10
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->isTransparentTheme:Z

    if-eqz p1, :cond_c

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/M;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->ha(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 12
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_4

    .line 13
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TransWallpaper ACTION_WALLPAPER_CHANGED uri:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-static {}, Lcom/smartisanos/launcher/ub;->getInstance()Lcom/smartisanos/launcher/ub;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/ub;->S(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 15
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_5

    .line 16
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string p1, "TransWallpaper ON_CHANGE_THEME_ANIMATING is true"

    invoke-virtual {p0, p1}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    if-eqz p0, :cond_b

    .line 17
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    const-string p2, "TransWallpaper uri = "

    if-eqz p1, :cond_7

    .line 18
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransWallpaper Constants.sWallpaperUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 20
    :cond_7
    sget-object p1, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 21
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_8

    .line 22
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    const-string v0, "TransWallpaper uri.equals(Constants.sWallpaperUri)"

    invoke-virtual {p1, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 23
    :cond_8
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p1

    iget-boolean p1, p1, Lcom/smartisanos/launcher/J;->Wf:Z

    if-eqz p1, :cond_9

    return-void

    .line 24
    :cond_9
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_a

    .line 25
    invoke-static {}, Lcom/smartisanos/launcher/ja;->access$200()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Constants.sWallpaperUri = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    .line 26
    :cond_a
    sput-object p0, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    .line 27
    :cond_b
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->lh()V

    :cond_c
    return-void
.end method
