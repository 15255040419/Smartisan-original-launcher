.class Lcom/android/settings/widget/MovieView$3;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 160
    iput-object p1, p0, Lcom/android/settings/widget/MovieView$3;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/widget/MovieView$3;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {v0}, Lcom/android/settings/widget/MovieView;->access$300(Lcom/android/settings/widget/MovieView;)I

    move-result v0

    if-lez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/settings/widget/MovieView$3;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {v0}, Lcom/android/settings/widget/MovieView;->access$300(Lcom/android/settings/widget/MovieView;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/widget/MovieView$3;->this$0:Lcom/android/settings/widget/MovieView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/widget/MovieView;->access$302(Lcom/android/settings/widget/MovieView;I)I

    goto :goto_0

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/MovieView$3;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {p0}, Lcom/android/settings/widget/MovieView;->access$200(Lcom/android/settings/widget/MovieView;)V

    :goto_0
    return-void
.end method
