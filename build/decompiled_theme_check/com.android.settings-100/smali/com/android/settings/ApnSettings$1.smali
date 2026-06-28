.class Lcom/android/settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 183
    invoke-static {p2}, Lcom/android/settings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object p1

    .line 184
    sget-object p2, Lcom/android/settings/ApnSettings$4;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result p1

    if-nez p1, :cond_1

    .line 187
    iget-object p0, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-static {p0}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 189
    :cond_1
    iget-object p0, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    :cond_2
    :goto_0
    return-void
.end method
