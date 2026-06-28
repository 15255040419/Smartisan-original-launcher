.class Lcom/android/settings/wifi/WifiConfigControllerEx$2;
.super Ljava/lang/Object;
.source "WifiConfigControllerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigControllerEx;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigControllerEx;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$2;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 557
    invoke-static {}, Lcom/android/settings/wifi/WifiConfigControllerEx;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NegativeButton onClick"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
