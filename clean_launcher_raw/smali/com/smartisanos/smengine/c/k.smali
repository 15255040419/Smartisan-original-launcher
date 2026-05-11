.class Lcom/smartisanos/smengine/c/k;
.super Ljava/lang/Object;
.source "TextureImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/smengine/c/n;


# direct methods
.method constructor <init>(Lcom/smartisanos/smengine/c/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->a(Lcom/smartisanos/smengine/c/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->b(Lcom/smartisanos/smengine/c/n;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/launcher/J;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v2}, Lcom/smartisanos/smengine/c/n;->b(Lcom/smartisanos/smengine/c/n;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/launcher/xa;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/smartisanos/smengine/c/n;->a(Lcom/smartisanos/smengine/c/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->c(Lcom/smartisanos/smengine/c/n;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v1}, Lcom/smartisanos/smengine/c/n;->c(Lcom/smartisanos/smengine/c/n;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/smartisanos/smengine/c/n;->a(Lcom/smartisanos/smengine/c/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->a(Lcom/smartisanos/smengine/c/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    iget-object p0, p0, Lcom/smartisanos/smengine/c/k;->this$0:Lcom/smartisanos/smengine/c/n;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/smartisanos/smengine/c/n;->a(Lcom/smartisanos/smengine/c/n;Z)Z

    .line 11
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_3
    return-void
.end method
