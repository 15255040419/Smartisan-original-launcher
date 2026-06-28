.class Lcom/android/settingslib/suggestions/SuggestionController$1;
.super Ljava/lang/Object;
.source "SuggestionController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/suggestions/SuggestionController;->createServiceConnection()Landroid/content/ServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/suggestions/SuggestionController;


# direct methods
.method constructor <init>(Lcom/android/settingslib/suggestions/SuggestionController;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p2}, Landroid/service/settings/suggestions/ISuggestionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/settings/suggestions/ISuggestionService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settingslib/suggestions/SuggestionController;->access$002(Lcom/android/settingslib/suggestions/SuggestionController;Landroid/service/settings/suggestions/ISuggestionService;)Landroid/service/settings/suggestions/ISuggestionService;

    .line 160
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p1}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 161
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;->onServiceConnected()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 167
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p1}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/suggestions/SuggestionController;->access$002(Lcom/android/settingslib/suggestions/SuggestionController;Landroid/service/settings/suggestions/ISuggestionService;)Landroid/service/settings/suggestions/ISuggestionService;

    .line 169
    iget-object p0, p0, Lcom/android/settingslib/suggestions/SuggestionController$1;->this$0:Lcom/android/settingslib/suggestions/SuggestionController;

    invoke-static {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
