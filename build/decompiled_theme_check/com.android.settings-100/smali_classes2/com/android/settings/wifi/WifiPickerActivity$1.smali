.class Lcom/android/settings/wifi/WifiPickerActivity$1;
.super Ljava/lang/Object;
.source "WifiPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiPickerActivity;->gotoNextPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiPickerActivity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerActivity$1;->this$0:Lcom/android/settings/wifi/WifiPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerActivity$1;->this$0:Lcom/android/settings/wifi/WifiPickerActivity;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerActivity;->finish()V

    return-void
.end method
