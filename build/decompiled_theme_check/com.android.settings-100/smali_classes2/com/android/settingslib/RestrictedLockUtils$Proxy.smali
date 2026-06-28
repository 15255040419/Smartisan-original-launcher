.class Lcom/android/settingslib/RestrictedLockUtils$Proxy;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/RestrictedLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParentProfileInstance(Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 802
    invoke-virtual {p1, p2}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    return-object p0
.end method

.method public isSeparateProfileChallengeEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 0

    .line 798
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p0

    return p0
.end method
