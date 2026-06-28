.class Lcom/android/settings/wifi/WifiConfigInfo$1;
.super Ljava/lang/Object;
.source "WifiConfigInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigInfo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigInfo;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigInfo$1;->this$0:Lcom/android/settings/wifi/WifiConfigInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigInfo$1;->this$0:Lcom/android/settings/wifi/WifiConfigInfo;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigInfo;->finish()V

    return-void
.end method
