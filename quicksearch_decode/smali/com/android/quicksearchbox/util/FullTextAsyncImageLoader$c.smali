.class public Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$c;
.super Landroid/util/LruCache;
.source "FullTextAsyncImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x1400000

    .line 1
    invoke-direct {p0, v0}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    return p1
.end method

.method public a(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;->b()Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$c;->a(ZLjava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/quicksearchbox/util/FullTextAsyncImageLoader$c;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
