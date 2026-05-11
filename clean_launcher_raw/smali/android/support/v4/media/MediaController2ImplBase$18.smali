.class Landroid/support/v4/media/MediaController2ImplBase$18;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;

.field final synthetic val$layout:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$18;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    iput-object p2, p0, Landroid/support/v4/media/MediaController2ImplBase$18;->val$layout:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$18;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$200(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/MediaController2ImplBase$18;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v1}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object v1

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$18;->val$layout:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/media/MediaController2$ControllerCallback;->onCustomLayoutChanged(Landroid/support/v4/media/MediaController2;Ljava/util/List;)V

    return-void
.end method
