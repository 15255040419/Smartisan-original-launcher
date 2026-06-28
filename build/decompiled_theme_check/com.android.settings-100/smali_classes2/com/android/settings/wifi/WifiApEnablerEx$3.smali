.class Lcom/android/settings/wifi/WifiApEnablerEx$3;
.super Ljava/lang/Object;
.source "WifiApEnablerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiApEnablerEx;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApEnablerEx;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnablerEx;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx$3;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 242
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 243
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx$3;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApEnablerEx;->setSoftapEnabled(Z)V

    return-void
.end method
