.class Lcom/smartisanos/launcher/receiver/k;
.super Ljava/lang/Object;
.source "LauncherReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Os:Ljava/lang/String;

.field final synthetic this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/receiver/LauncherReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/receiver/k;->this$0:Lcom/smartisanos/launcher/receiver/LauncherReceiver;

    iput-object p2, p0, Lcom/smartisanos/launcher/receiver/k;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/smartisanos/launcher/receiver/k;->Os:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/Qa;->Fc()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/launcher/receiver/k;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/smartisanos/launcher/receiver/k;->Os:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/smartisanos/launcher/Aa;->c(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
