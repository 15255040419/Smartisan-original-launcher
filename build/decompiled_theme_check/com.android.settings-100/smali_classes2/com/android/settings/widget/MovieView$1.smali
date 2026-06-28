.class Lcom/android/settings/widget/MovieView$1;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MovieView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/MovieView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MovieView;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/widget/MovieView$1;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 64
    iget-object p2, p0, Lcom/android/settings/widget/MovieView$1;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {p2}, Lcom/android/settings/widget/MovieView;->access$000(Lcom/android/settings/widget/MovieView;)Landroid/media/MediaPlayer;

    move-result-object p2

    if-nez p2, :cond_0

    .line 65
    iget-object p0, p0, Lcom/android/settings/widget/MovieView$1;->this$0:Lcom/android/settings/widget/MovieView;

    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {p0, p2}, Lcom/android/settings/widget/MovieView;->access$100(Lcom/android/settings/widget/MovieView;Landroid/view/Surface;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/MovieView$1;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {p0}, Lcom/android/settings/widget/MovieView;->access$200(Lcom/android/settings/widget/MovieView;)V

    :goto_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/android/settings/widget/MovieView$1;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {p1}, Lcom/android/settings/widget/MovieView;->access$000(Lcom/android/settings/widget/MovieView;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/android/settings/widget/MovieView$1;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {p1}, Lcom/android/settings/widget/MovieView;->access$000(Lcom/android/settings/widget/MovieView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/widget/MovieView;->access$302(Lcom/android/settings/widget/MovieView;I)I

    .line 80
    iget-object p0, p0, Lcom/android/settings/widget/MovieView$1;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {p0}, Lcom/android/settings/widget/MovieView;->access$400(Lcom/android/settings/widget/MovieView;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
