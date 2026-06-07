.class public Landroidx/core/app/ActivityCompat;
.super La/g/b/a;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;,
        Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field public static c:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method public static a()Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/app/ActivityCompat;->c:Landroidx/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method
