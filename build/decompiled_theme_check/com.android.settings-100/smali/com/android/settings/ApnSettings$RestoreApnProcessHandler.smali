.class Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;
.super Landroid/os/Handler;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RestoreApnProcessHandler"
.end annotation


# instance fields
.field private mRestoreApnUiHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApnSettings;Landroid/os/Looper;Landroid/os/Handler;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    .line 602
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 603
    iput-object p3, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 608
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 610
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {p1}, Lcom/android/settings/ApnSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 611
    invoke-static {}, Lsmartisanos/util/MultiSimAdapter;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://telephony/carriers/restore/subId/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->this$0:Lcom/android/settings/ApnSettings;

    .line 612
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$600(Lcom/android/settings/ApnSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$700()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 613
    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 614
    iget-object p0, p0, Lcom/android/settings/ApnSettings$RestoreApnProcessHandler;->mRestoreApnUiHandler:Landroid/os/Handler;

    const/4 p1, 0x2

    .line 615
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method
