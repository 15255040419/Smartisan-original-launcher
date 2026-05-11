.class Lcom/smartisanos/launcher/receiver/m;
.super Ljava/lang/Object;
.source "LauncherReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$1:Lcom/smartisanos/launcher/receiver/o;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/m;->this$1:Lcom/smartisanos/launcher/receiver/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/launcher/receiver/m;->this$1:Lcom/smartisanos/launcher/receiver/o;

    iget-object p0, p0, Lcom/smartisanos/launcher/receiver/o;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-static {p0}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->a(Lcom/smartisanos/launcher/receiver/LauncherReceiver;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/launcher/theme/X;->lg()V

    :cond_0
    return-void
.end method
