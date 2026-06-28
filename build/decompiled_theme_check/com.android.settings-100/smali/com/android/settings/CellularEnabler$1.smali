.class Lcom/android/settings/CellularEnabler$1;
.super Landroid/telephony/PhoneStateListener;
.source "CellularEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CellularEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CellularEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/CellularEnabler;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/settings/CellularEnabler$1;->this$0:Lcom/android/settings/CellularEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method
