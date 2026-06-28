.class Lcom/android/settings/widget/MovieView$2$1;
.super Ljava/lang/Object;
.source "MovieView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/MovieView$2;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/MovieView$2;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/MovieView$2;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/settings/widget/MovieView$2$1;->this$1:Lcom/android/settings/widget/MovieView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/settings/widget/MovieView$2$1;->this$1:Lcom/android/settings/widget/MovieView$2;

    iget-object p0, p0, Lcom/android/settings/widget/MovieView$2;->this$0:Lcom/android/settings/widget/MovieView;

    invoke-static {p0}, Lcom/android/settings/widget/MovieView;->access$600(Lcom/android/settings/widget/MovieView;)V

    return-void
.end method
