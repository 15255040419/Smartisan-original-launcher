.class public Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;
.super Ljava/lang/Object;
.source "FullTextAsyncImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(ILjava/lang/String;ZLcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;

.field public final synthetic d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;


# direct methods
.method public constructor <init>(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;ILjava/lang/String;Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    iput p2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->a:I

    iput-object p3, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->c:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->d(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_3
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    iget-object v1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->c(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 6
    iget-object v1, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    iget-object v1, v1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->i:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_4
    new-instance v1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;

    iget-object v2, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->c:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;)V

    .line 8
    iget-object v0, p0, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;->d:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    invoke-static {v0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->a(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
