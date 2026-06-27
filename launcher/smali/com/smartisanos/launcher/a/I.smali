.class public Lcom/smartisanos/launcher/a/I;
.super Ljava/lang/Object;
.source "LockUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final Gj:Ljava/nio/charset/Charset;

.field private static Hj:Ljava/lang/String;

.field private static Ij:Landroid/app/AlertDialog;

.field public static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/I;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "US-ASCII"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/I;->Gj:Ljava/nio/charset/Charset;

    return-void
.end method

.method private static Eb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    .line 1
    invoke-static {p0, v0}, Lcom/smartisanos/launcher/a/I;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;II)Landroid/content/Intent;
    .locals 5

    .line 16
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.CHOOSE_LOCK_PASSWORD"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockPasswordFake"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-static {}, Lcom/smartisanos/launcher/ja;->getInstance()Lcom/smartisanos/launcher/ja;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/ja;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x20000

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v3

    .line 22
    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v0

    :goto_0
    const-string v4, "back_text_id"

    .line 23
    invoke-virtual {p0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "lockscreen.password_type"

    .line 24
    invoke-virtual {p0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "lockscreen.password_min"

    .line 25
    invoke-virtual {p0, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "lockscreen.password_max"

    .line 26
    invoke-virtual {p0, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_pin_length"

    .line 27
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x1

    const-string p2, "exit_smiling_cloud"

    .line 28
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "confirm_credentials"

    .line 29
    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "lockscreen.biometric_weak_fallback"

    .line 30
    invoke-virtual {p0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "launcher_applications_lock"

    .line 31
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 3
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 4
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/smartisanos/launcher/a/I;->e([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(IILjava/lang/Runnable;)V
    .locals 4

    .line 32
    sget-object v0, Lcom/smartisanos/launcher/a/I;->Ij:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/smartisanos/launcher/a/I;->Ij:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 34
    sput-object v1, Lcom/smartisanos/launcher/a/I;->Ij:Landroid/app/AlertDialog;

    .line 35
    :cond_0
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/launcher/J;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 36
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x103012b

    invoke-direct {v2, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 37
    invoke-static {p0}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {p1}, Lcom/smartisanos/launcher/e/s;->oa(I)Ljava/lang/String;

    move-result-object p1

    .line 39
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/smartisanos/launcher/ob;->cancel:I

    .line 42
    invoke-virtual {p0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/smartisanos/launcher/ob;->btn_setting:I

    new-instance v0, Lcom/smartisanos/launcher/a/H;

    invoke-direct {v0, p2}, Lcom/smartisanos/launcher/a/H;-><init>(Ljava/lang/Runnable;)V

    .line 43
    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/smartisanos/launcher/a/I;->Ij:Landroid/app/AlertDialog;

    .line 45
    sget-object p0, Lcom/smartisanos/launcher/a/I;->Ij:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 49
    sget-object p0, Lcom/smartisanos/launcher/a/I;->Ij:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;IIZ)V
    .locals 0

    .line 8
    invoke-static {p0, p1, p2}, Lcom/smartisanos/launcher/a/I;->a(Landroid/content/Context;II)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "change_plate_lock_password"

    .line 9
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10
    sget-boolean p1, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const-string p2, "from_smartisanos_launchpad"

    .line 11
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const/16 p1, 0x14

    if-eqz p3, :cond_1

    .line 12
    sget-boolean p2, Lcom/smartisanos/launcher/data/Constants;->ENABLE_LARGE_SCREEN_MODE:Z

    if-nez p2, :cond_1

    const/high16 p2, 0x10000000

    .line 13
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 14
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/smartisanos/launcher/J;->a(Landroid/content/Intent;I)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {}, Lcom/smartisanos/launcher/J;->getInstance()Lcom/smartisanos/launcher/J;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/smartisanos/launcher/J;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/smartisanos/launcher/a/I;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dd()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/launcher/a/I;->Hj:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "launcher_app_lock_key"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/launcher/a/I;->Eb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/launcher/a/I;->Hj:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lcom/smartisanos/launcher/a/I;->Hj:Ljava/lang/String;

    return-object v0
.end method

.method private static e([B)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "0"

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 7
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/smartisanos/launcher/a/I;->dd()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/launcher/a/I;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/smartisanos/launcher/theme/MaintainedLauncherSettingsHost;->hasLauncherPagePassword(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :legacy_page_password_check

    const/4 p0, 0x1

    return p0

    :legacy_page_password_check
    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-gt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/smartisanos/launcher/a/I;->v(Landroid/content/Context;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "9c42c98d42ebfdac"

    .line 4
    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
