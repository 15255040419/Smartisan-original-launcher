.class Lcom/smartisanos/launcher/view/a/e;
.super Ljava/lang/Object;
.source "Cell.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/smartisanos/launcher/view/a/g;


# direct methods
.method constructor <init>(Lcom/smartisanos/launcher/view/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/launcher/view/a/e;->this$0:Lcom/smartisanos/launcher/view/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/launcher/J;->Ua()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lcom/smartisanos/launcher/ob;->uninstall_system_app_text:I

    .line 3
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/e;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->We()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget v0, Lcom/smartisanos/launcher/ob;->uninstall_system_folder_text:I

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/e;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->_e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    sget v0, Lcom/smartisanos/launcher/ob;->please_exit_screen_record:I

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/launcher/view/a/e;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget-object v1, v1, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    invoke-virtual {v1}, Lcom/smartisanos/launcher/data/ItemInfo;->Se()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    sget v0, Lcom/smartisanos/launcher/ob;->please_exit_audio_record:I

    .line 9
    :cond_3
    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/e;->this$0:Lcom/smartisanos/launcher/view/a/g;

    iget-object p0, p0, Lcom/smartisanos/launcher/view/a/g;->Rj:Lcom/smartisanos/launcher/data/ItemInfo;

    iget-object p0, p0, Lcom/smartisanos/launcher/data/ItemInfo;->packageName:Ljava/lang/String;

    sget-object v1, Lcom/smartisanos/launcher/data/T;->GAME_STORE:Lcom/smartisanos/launcher/data/S;

    iget-object v1, v1, Lcom/smartisanos/launcher/data/S;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 10
    sget v0, Lcom/smartisanos/launcher/ob;->uninstall_app_from_launcher_text:I

    :cond_4
    const/4 p0, 0x2

    .line 11
    invoke-static {v0, p0}, Lcom/smartisanos/launcher/Bb;->showToast(II)V

    return-void
.end method
