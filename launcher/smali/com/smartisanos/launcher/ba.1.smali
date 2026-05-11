.class Lcom/smartisanos/launcher/ba;
.super Ljava/lang/Object;
.source "ApplicationProxy.java"

# interfaces
.implements Lsmartisanos/app/wallpaper/TabletWallpaperHelper$WallpaperChangeListener;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/ba;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChanged(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/launcher/aa;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/smartisanos/launcher/aa;-><init>(Lcom/smartisanos/launcher/ba;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Lcom/smartisanos/smengine/n;->q(F)V

    :cond_1
    :goto_0
    return-void
.end method
