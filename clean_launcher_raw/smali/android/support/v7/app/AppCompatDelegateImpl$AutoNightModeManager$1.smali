.class Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImpl.java"


# instance fields
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;


# direct methods
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImpl$AutoNightModeManager;->dispatchTimeChanged()V

    return-void
.end method
