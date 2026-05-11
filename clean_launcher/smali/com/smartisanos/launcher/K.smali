.class Lcom/smartisanos/launcher/K;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationProxy.java"


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/ja;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/K;->this$0:Lcom/smartisanos/launcher/ja;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.android.desktop.systemui.TRASH_SCALE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/high16 p0, 0x3f800000    # 1.0f

    const-string p1, "trashScale"

    .line 2
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result p1

    cmpl-float p2, p1, p0

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/smartisanos/launcher/ja;->j(F)V

    :cond_1
    return-void
.end method
