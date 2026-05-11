.class Lcom/smartisanos/launcher/receiver/l;
.super Lcom/smartisanos/smengine/n;
.source "LauncherReceiver.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/l;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    invoke-direct {p0, p2}, Lcom/smartisanos/smengine/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/view/Eb;->getInstance()Lcom/smartisanos/launcher/view/Eb;

    move-result-object p0

    if-nez p0, :cond_1

    .line 2
    sget-boolean p0, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/smartisanos/launcher/receiver/LauncherReceiver;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p0

    const-string v0, "onResume, LauncherModel is dirty or theme is changed, but nothing to do, by main view is null"

    invoke-virtual {p0, v0}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/launcher/view/Eb;->ei()V

    return-void
.end method
