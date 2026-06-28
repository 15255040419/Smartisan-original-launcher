.class Lcom/android/settings/wifi/WifiApEnablerEx$4;
.super Ljava/lang/Object;
.source "WifiApEnablerEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApEnablerEx;Landroid/widget/CompoundButton;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnablerEx$4;->this$0:Lcom/android/settings/wifi/WifiApEnablerEx;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnablerEx$4;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/settings/wifi/WifiApEnablerEx$4;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    return-void
.end method
