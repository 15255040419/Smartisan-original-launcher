.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iput-object p2, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iget-object v1, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$BMWc3s6WnR_Ijg_9a3gQADAjI3Y;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->lambda$runAndLog$1$WifiTracker$WifiListenerExecutor(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
