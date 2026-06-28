.class Lcom/android/settings/AppIconsSettingsFragment$3;
.super Ljava/lang/Object;
.source "AppIconsSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AppIconsSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppIconsSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AppIconsSettingsFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/settings/AppIconsSettingsFragment$3;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "item click:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "AppIconsSettingsFragment"

    invoke-static {p4, p2}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/android/settings/AppIconsSettingsFragment$3;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/AppIconsSettingsFragment;->access$800(Lcom/android/settings/AppIconsSettingsFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 164
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 165
    instance-of p2, p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    if-eqz p2, :cond_1

    .line 166
    check-cast p1, Lcom/android/settings/AppIconsSettingsFragment$Asset;

    .line 167
    iget-object p0, p0, Lcom/android/settings/AppIconsSettingsFragment$3;->this$0:Lcom/android/settings/AppIconsSettingsFragment;

    invoke-static {p0, p1}, Lcom/android/settings/AppIconsSettingsFragment;->access$900(Lcom/android/settings/AppIconsSettingsFragment;Lcom/android/settings/AppIconsSettingsFragment$Asset;)V

    :cond_1
    return-void
.end method
