.class Landroid/support/v4/media/MediaController2ImplLegacy$3$1;
.super Ljava/lang/Object;
.source "MediaController2ImplLegacy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplLegacy$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;

    iget-object v0, v0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {v0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$100(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2$ControllerCallback;

    move-result-object v0

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3$1;->this$1:Landroid/support/v4/media/MediaController2ImplLegacy$3;

    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplLegacy$3;->this$0:Landroid/support/v4/media/MediaController2ImplLegacy;

    invoke-static {p0}, Landroid/support/v4/media/MediaController2ImplLegacy;->access$000(Landroid/support/v4/media/MediaController2ImplLegacy;)Landroid/support/v4/media/MediaController2;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/support/v4/media/MediaController2$ControllerCallback;->onDisconnected(Landroid/support/v4/media/MediaController2;)V

    return-void
.end method
