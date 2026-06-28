.class Lcom/android/settings/widget/NationalFlagView$2;
.super Ljava/lang/Object;
.source "NationalFlagView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/NationalFlagView;->updateFlagViewIfNeed(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/NationalFlagView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/NationalFlagView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/widget/NationalFlagView$2;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/NationalFlagView$2;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-static {v0}, Lcom/android/settings/widget/NationalFlagView;->access$200(Lcom/android/settings/widget/NationalFlagView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/widget/NationalFlagView;->access$300(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/widget/NationalFlagView$2;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-static {v1}, Lcom/android/settings/widget/NationalFlagView;->access$400(Lcom/android/settings/widget/NationalFlagView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 95
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object p0, p0, Lcom/android/settings/widget/NationalFlagView$2;->this$0:Lcom/android/settings/widget/NationalFlagView;

    invoke-static {p0}, Lcom/android/settings/widget/NationalFlagView;->access$400(Lcom/android/settings/widget/NationalFlagView;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
