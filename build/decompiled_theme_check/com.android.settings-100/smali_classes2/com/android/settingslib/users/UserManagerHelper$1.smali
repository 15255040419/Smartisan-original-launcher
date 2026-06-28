.class Lcom/android/settingslib/users/UserManagerHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/UserManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/users/UserManagerHelper;


# direct methods
.method constructor <init>(Lcom/android/settingslib/users/UserManagerHelper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/users/UserManagerHelper$1;->this$0:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/users/UserManagerHelper$1;->this$0:Lcom/android/settingslib/users/UserManagerHelper;

    invoke-static {p0}, Lcom/android/settingslib/users/UserManagerHelper;->access$000(Lcom/android/settingslib/users/UserManagerHelper;)Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/users/UserManagerHelper$OnUsersUpdateListener;->onUsersUpdate()V

    return-void
.end method
