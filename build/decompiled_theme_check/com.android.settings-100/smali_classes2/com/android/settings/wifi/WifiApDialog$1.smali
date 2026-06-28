.class Lcom/android/settings/wifi/WifiApDialog$1;
.super Ljava/lang/Object;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mInit:Z

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApDialog;

.field final synthetic val$mChannel:Landroid/widget/Spinner;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApDialog;Landroid/widget/Spinner;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$1;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog$1;->val$mChannel:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog$1;->mInit:Z

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 185
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog$1;->mInit:Z

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$1;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {p1, p3}, Lcom/android/settings/wifi/WifiApDialog;->access$002(Lcom/android/settings/wifi/WifiApDialog;I)I

    .line 187
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$1;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiApDialog$1;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiApDialog;->access$000(Lcom/android/settings/wifi/WifiApDialog;)I

    move-result p2

    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "config on channelIndex : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiApDialog$1;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiApDialog;->access$000(Lcom/android/settings/wifi/WifiApDialog;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Band: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog$1;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApDialog"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 191
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog$1;->mInit:Z

    .line 192
    iget-object p1, p0, Lcom/android/settings/wifi/WifiApDialog$1;->val$mChannel:Landroid/widget/Spinner;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiApDialog$1;->this$0:Lcom/android/settings/wifi/WifiApDialog;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiApDialog;->access$000(Lcom/android/settings/wifi/WifiApDialog;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
