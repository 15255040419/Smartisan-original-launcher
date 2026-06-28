.class Lcom/android/settings/wifi/WifiConfigControllerEx$6;
.super Ljava/lang/Object;
.source "WifiConfigControllerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiConfigControllerEx;->promptConfigInvaild()V
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

    .line 615
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$6;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 617
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$6;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->access$400(Lcom/android/settings/wifi/WifiConfigControllerEx;)Lcom/android/settings/SupportFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/SupportFragment;->pop()V

    return-void
.end method
