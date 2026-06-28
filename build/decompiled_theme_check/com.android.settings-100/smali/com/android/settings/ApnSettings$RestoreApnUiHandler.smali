.class Lcom/android/settings/ApnSettings$RestoreApnUiHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .line 577
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ApnSettings;Lcom/android/settings/ApnSettings$1;)V
    .locals 0

    .line 577
    invoke-direct {p0, p1}, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;-><init>(Lcom/android/settings/ApnSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 580
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    .line 583
    iget-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/ApnSettings;->access$500(Lcom/android/settings/ApnSettings;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setEnabled(Z)V

    const/4 p1, 0x0

    .line 584
    invoke-static {p1}, Lcom/android/settings/ApnSettings;->access$102(Z)Z

    .line 587
    iget-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v1, 0x3e9

    invoke-virtual {p1, v1}, Lcom/android/settings/ApnSettings;->removeDialog(I)V

    .line 588
    iget-object p0, p0, Lcom/android/settings/ApnSettings$RestoreApnUiHandler;->this$0:Lcom/android/settings/ApnSettings;

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/ApnSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f12106c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 588
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
