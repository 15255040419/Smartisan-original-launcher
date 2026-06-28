.class Lcom/android/settings/widget/BaseFingerprintAnimView$2;
.super Ljava/lang/Object;
.source "BaseFingerprintAnimView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/BaseFingerprintAnimView;->preloadImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/BaseFingerprintAnimView;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object v0, v0, Lcom/android/settings/widget/BaseFingerprintAnimView;->progressResIds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 133
    iget-object v5, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object v5, v5, Lcom/android/settings/widget/BaseFingerprintAnimView;->mImageMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-virtual {v7, v4}, Lcom/android/settings/widget/BaseFingerprintAnimView;->decodeBitmapResource(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget v0, v0, Lcom/android/settings/widget/BaseFingerprintAnimView;->PROGRESS_RESOURCE_COUNT:I

    if-gt v2, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    iget-object v0, v0, Lcom/android/settings/widget/BaseFingerprintAnimView;->mImageMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/widget/BaseFingerprintAnimView$2;->this$0:Lcom/android/settings/widget/BaseFingerprintAnimView;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/BaseFingerprintAnimView;->getBackgroundBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
