.class Lcom/android/settings/widget/SettingsBottomExtraView$1;
.super Ljava/lang/Object;
.source "SettingsBottomExtraView.java"

# interfaces
.implements Lsmartisanos/util/NavigationBarHelper$NavigationBarStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/SettingsBottomExtraView;->setBottomPaddingWhenNavigationBarStatusChange(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SettingsBottomExtraView;

.field final synthetic val$paddingBottom:I

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SettingsBottomExtraView;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->this$0:Lcom/android/settings/widget/SettingsBottomExtraView;

    iput p2, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$paddingBottom:I

    iput-object p3, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyNavigationBarStatusChange(Z)V
    .locals 5

    .line 93
    iget v0, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$paddingBottom:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->this$0:Lcom/android/settings/widget/SettingsBottomExtraView;

    invoke-static {p1}, Lcom/android/settings/widget/SettingsBottomExtraView;->access$000(Lcom/android/settings/widget/SettingsBottomExtraView;)I

    move-result p1

    :goto_0
    add-int/2addr v0, p1

    .line 94
    iget-object p1, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$viewGroup:Landroid/view/ViewGroup;

    .line 95
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 94
    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 97
    iget-object p0, p0, Lcom/android/settings/widget/SettingsBottomExtraView$1;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method
