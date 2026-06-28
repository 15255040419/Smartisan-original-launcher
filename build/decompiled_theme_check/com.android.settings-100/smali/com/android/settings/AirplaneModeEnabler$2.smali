.class Lcom/android/settings/AirplaneModeEnabler$2;
.super Landroid/database/ContentObserver;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Handler;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler$2;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler$2;->this$0:Lcom/android/settings/AirplaneModeEnabler;

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->access$000(Lcom/android/settings/AirplaneModeEnabler;)V

    return-void
.end method
