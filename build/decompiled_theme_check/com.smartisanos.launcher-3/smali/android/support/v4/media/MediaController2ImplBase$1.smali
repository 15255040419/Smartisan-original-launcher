.class Landroid/support/v4/media/MediaController2ImplBase$1;
.super Ljava/lang/Object;
.source "MediaController2ImplBase.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaController2ImplBase;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaController2ImplBase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v4/media/MediaController2ImplBase$1;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/MediaController2ImplBase$1;->this$0:Landroid/support/v4/media/MediaController2ImplBase;

    invoke-static {p0}, Landroid/support/v4/media/MediaController2ImplBase;->access$000(Landroid/support/v4/media/MediaController2ImplBase;)Landroid/support/v4/media/MediaController2;

    move-result-object p0

    invoke-virtual {p0}, Landroid/support/v4/media/MediaController2;->close()V

    return-void
.end method
