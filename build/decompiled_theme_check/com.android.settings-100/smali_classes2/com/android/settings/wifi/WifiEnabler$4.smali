.class Lcom/android/settings/wifi/WifiEnabler$4;
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

    .line 294
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$4;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$4;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 296
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$4;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$4;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/settings/wifi/WifiEnabler;->access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
