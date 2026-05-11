.class Lcom/smartisanos/launcher/theme/w;
.super Landroid/content/BroadcastReceiver;
.source "ThemeChooserActivity.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/theme/w;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const-string v3, "com.smartisanos.launcher.theme"

    .line 5
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "android.intent.extra.REPLACING"

    .line 8
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v3, v4

    .line 9
    :goto_0
    sget-boolean p1, Lcom/smartisanos/launcher/va;->DBG:Z

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->access$000()Lcom/smartisanos/launcher/va;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "packageStatusReceiver pkg ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/launcher/va;->u(Ljava/lang/String;)V

    :cond_6
    if-eqz v3, :cond_7

    .line 10
    iget-object p1, p0, Lcom/smartisanos/launcher/theme/w;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p1}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->a(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V

    .line 11
    iget-object p0, p0, Lcom/smartisanos/launcher/theme/w;->this$0:Lcom/smartisanos/launcher/theme/ThemeChooserActivity;

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/ThemeChooserActivity;->b(Lcom/smartisanos/launcher/theme/ThemeChooserActivity;)V

    :cond_7
    return-void
.end method
