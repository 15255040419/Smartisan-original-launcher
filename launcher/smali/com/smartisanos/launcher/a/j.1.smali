.class Lcom/smartisanos/launcher/a/j;
.super Lcom/smartisanos/smengine/n;
.source "ChangeWallpaperByFourFingerSlide.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/a/k;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/a/k;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/a/j;->this$0:Lcom/smartisanos/launcher/a/k;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/a/j;->this$0:Lcom/smartisanos/launcher/a/k;

    iget-boolean v0, p0, Lcom/smartisanos/launcher/a/k;->uD:Z

    iget-object p0, p0, Lcom/smartisanos/launcher/a/k;->tD:Landroid/graphics/Bitmap;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/a/n;->a(ZLandroid/graphics/Bitmap;)V

    return-void
.end method
