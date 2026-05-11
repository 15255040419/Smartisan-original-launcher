.class Lcom/smartisanos/smengine/c/l;
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
    iput-object p1, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->d(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->d(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v0, v2}, Lcom/smartisanos/smengine/c/n;->a(Lcom/smartisanos/smengine/c/n;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->e(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->e(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v4}, Lcom/smartisanos/smengine/c/n;->e(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 7
    iget-object v5, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v5}, Lcom/smartisanos/smengine/c/n;->e(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v6

    invoke-virtual {v6}, Lcom/smartisanos/launcher/J;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 9
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 10
    iget-object v7, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v7}, Lcom/smartisanos/smengine/c/n;->d(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->f(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->f(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    .line 14
    :try_start_1
    iget-object v4, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v4}, Lcom/smartisanos/smengine/c/n;->f(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 15
    iget-object v5, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v5}, Lcom/smartisanos/smengine/c/n;->f(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 18
    iget-object v7, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v7}, Lcom/smartisanos/smengine/c/n;->d(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->d(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {v0}, Lcom/smartisanos/smengine/c/n;->d(Lcom/smartisanos/smengine/c/n;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 21
    iget-object p0, p0, Lcom/smartisanos/smengine/c/l;->this$0:Lcom/smartisanos/smengine/c/n;

    invoke-static {p0, v2}, Lcom/smartisanos/smengine/c/n;->a(Lcom/smartisanos/smengine/c/n;Z)Z

    .line 22
    invoke-static {}, Lcom/smartisanos/smengine/Ra;->getInstance()Lcom/smartisanos/smengine/Ra;

    move-result-object p0

    invoke-virtual {p0}, Lcom/smartisanos/smengine/Ra;->wt()V

    :cond_4
    return-void
.end method
