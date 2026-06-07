.class public Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$b;
.super Landroid/os/Handler;
.source "FullTextAsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;

    .line 3
    iget-object v0, p1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;->c:Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;

    iget-object v1, p1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;->a:Landroid/graphics/Bitmap;

    iget-object p1, p1, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$d;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$ImageCallback;->imageLoaded(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
