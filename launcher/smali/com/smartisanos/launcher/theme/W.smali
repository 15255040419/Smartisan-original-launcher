.class Lcom/smartisanos/launcher/theme/W;
.super Ljava/lang/Object;
.source "ThemeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->access$000()Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/X;->i(Lcom/smartisanos/launcher/theme/v;)Z

    move-result p0

    const-string v0, "_light"

    const-string v1, ""

    if-eqz p0, :cond_2

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/launcher/ja;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 3
    sget-object v2, Lcom/smartisanos/launcher/data/Constants;->sWallpaperUri:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/smartisanos/launcher/e/s;->n(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5
    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->n(Landroid/graphics/Bitmap;)Z

    move-result v3

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 7
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/smartisanos/launcher/e/s;->m(Landroid/graphics/Bitmap;)Z

    move-result v4

    .line 9
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    move v2, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    if-nez v2, :cond_1

    move-object p0, v0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-nez v4, :cond_3

    move-object v1, v0

    goto :goto_2

    :cond_2
    move-object p0, v1

    .line 11
    :cond_3
    :goto_2
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->access$000()Lcom/smartisanos/launcher/theme/v;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/e/s;->d(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->access$000()Lcom/smartisanos/launcher/theme/v;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/smartisanos/launcher/e/s;->c(Lcom/smartisanos/launcher/theme/v;Ljava/lang/String;)V

    return-void
.end method
