.class final Lcom/android/settingslib/RestrictedLockUtils$1;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/RestrictedLockUtils$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    .line 608
    iget-object p1, p0, Lcom/android/settingslib/RestrictedLockUtils$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedLockUtils$1;->val$admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    const/4 p0, 0x1

    return p0
.end method
