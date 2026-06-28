.class Landroid/support/v4/media/MediaController2ImplBase$2;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$2;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplBase$2;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplBase;->access$200(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$2;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {p0}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaController2$ControllerCallback;->onDisconnected(Landroid/support/v4/media/MediaController2;)V

    return-void
.end method
