.class Lcom/android/settings/wifi/WifiEnabler$3;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiEnabler;->showDialog(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;Landroid/widget/CompoundButton;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$3;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 289
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 291
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    invoke-virtual {p1, p2}, Lsmartisanos/widget/SwitchEx;->setEnabled(Z)V

    .line 292
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Lsmartisanos/widget/SwitchEx;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$3;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p1, p0}, Lsmartisanos/widget/SwitchEx;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
