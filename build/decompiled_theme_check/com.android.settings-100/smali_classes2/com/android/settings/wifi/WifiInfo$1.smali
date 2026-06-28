.class Lcom/android/settings/wifi/WifiInfo$1;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiInfo;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/settings/wifi/WifiInfo$1;->this$0:Lcom/android/settings/wifi/WifiInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/wifi/WifiInfo$1;->this$0:Lcom/android/settings/wifi/WifiInfo;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiInfo;->finish()V

    return-void
.end method
