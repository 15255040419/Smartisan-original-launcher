.class Lcom/android/settings/wifi/WifiConfigControllerEx$5;
.super Ljava/lang/Object;
.source "WifiConfigControllerEx.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$isPacProxy:Z

.field final synthetic val$isProxyExclusion:Z

.field final synthetic val$item:Lsmartisanos/widget/ListContentItemText;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigControllerEx;ZZLsmartisanos/widget/ListContentItemText;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->val$isProxyExclusion:Z

    iput-boolean p3, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->val$isPacProxy:Z

    iput-object p4, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->val$item:Lsmartisanos/widget/ListContentItemText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 583
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 584
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->val$isProxyExclusion:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->val$isPacProxy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->val$item:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 585
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->val$item:Lsmartisanos/widget/ListContentItemText;

    invoke-virtual {v0, p1}, Lsmartisanos/widget/ListContentItemText;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    :goto_1
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigControllerEx$5;->this$0:Lcom/android/settings/wifi/WifiConfigControllerEx;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConfigControllerEx;->access$300(Lcom/android/settings/wifi/WifiConfigControllerEx;)Z

    return-void
.end method
