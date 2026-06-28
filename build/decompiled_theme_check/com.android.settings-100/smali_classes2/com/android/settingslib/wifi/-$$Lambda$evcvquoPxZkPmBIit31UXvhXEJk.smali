.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-interface {p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onAccessPointsChanged()V

    return-void
.end method
