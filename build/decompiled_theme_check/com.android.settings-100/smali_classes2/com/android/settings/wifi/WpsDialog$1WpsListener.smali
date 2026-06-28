.class Lcom/android/settings/wifi/WpsDialog$1WpsListener;
.super Landroid/net/wifi/WifiManager$WpsCallback;
.source "WpsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WpsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WpsDialog;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$WpsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1218fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121900

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121901

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1218ff

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 114
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {p1}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121902

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/WpsDialog$DialogState;

    invoke-static {p0, v0, p1}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method

.method public onStarted(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    .line 89
    invoke-static {p0}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f121905

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 88
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    sget-object v0, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    invoke-static {p0}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f121904

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSucceeded()V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    sget-object v1, Lcom/android/settings/wifi/WpsDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/WpsDialog$DialogState;

    iget-object p0, p0, Lcom/android/settings/wifi/WpsDialog$1WpsListener;->this$0:Lcom/android/settings/wifi/WpsDialog;

    .line 98
    invoke-static {p0}, Lcom/android/settings/wifi/WpsDialog;->access$000(Lcom/android/settings/wifi/WpsDialog;)Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1218fb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 97
    invoke-static {v0, v1, p0}, Lcom/android/settings/wifi/WpsDialog;->access$100(Lcom/android/settings/wifi/WpsDialog;Lcom/android/settings/wifi/WpsDialog$DialogState;Ljava/lang/String;)V

    return-void
.end method
