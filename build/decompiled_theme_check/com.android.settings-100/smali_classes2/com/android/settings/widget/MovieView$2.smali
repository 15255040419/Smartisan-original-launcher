.class Lcom/android/settings/widget/MovieView$2;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MovieView;->startVideo()V
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

    .line 140
    iput-object p1, p0, Lcom/android/settings/widget/MovieView$2;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p1, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    move p2, p3

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/android/settings/widget/MovieView$2;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {v0}, Lcom/android/settings/widget/MovieView;->access$500(Lcom/android/settings/widget/MovieView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/android/settings/widget/MovieView$2$1;

    invoke-direct {p2, p0}, Lcom/android/settings/widget/MovieView$2$1;-><init>(Lcom/android/settings/widget/MovieView$2;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return p3
.end method
