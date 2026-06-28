.class public Lcom/android/settings/AppLockUtil;
.super Ljava/lang/Object;
.source "AppLockUtil.java"


# static fields
.field private static final ACCOUNT_IS_LOGIN:Ljava/lang/String; = "request_account_islogin"

.field public static final ACTION_APP_LOCK_SETTING:Ljava/lang/String; = "com.smartisanos.action.APP_LOCK_SETTING"

.field public static final ACTION_PRIVACY_SECURITY:Ljava/lang/String; = "com.smartisanos.action.PRIVACY_SECURITY"

.field private static final APP_LOCK_ENCRYPT_PREFIX:Ljava/lang/String; = "app_lock_encrypt_prefix"

.field private static final APP_LOCK_KEY:Ljava/lang/String; = "app_lock_key"

.field public static final ASCII:Ljava/nio/charset/Charset;

.field public static final CHANGE_APPLICATION_LOCK_PASSWORD:Ljava/lang/String; = "change_password"

.field public static final CHANGE_PLATE_LOCK_PASSWORD:Ljava/lang/String; = "change_plate_lock_password"

.field public static final CHOOSE_LOCK_PASSWORD_ACTION:Ljava/lang/String; = "com.smartisanos.action.CHOOSE_LOCK_PASSWORD"

.field public static final CHOOSE_LOCK_PASSWORD_ERROR_CODE:Ljava/lang/String; = "choose_lock_password_error_code"

.field private static final CLOUD_URI:Ljava/lang/String; = "content://com.smartisanos.cloudsync.accountcenter"

.field public static final DESKTOP_PACKAGE_NAME:Ljava/lang/String; = "com.smartisanos.desktop"

.field public static final ENCODE_MD5:Ljava/lang/String; = "MD5"

.field public static final ENCODE_SHA:Ljava/lang/String; = "SHA-1"

.field public static final EXIT_SMILING_CLOUD:Ljava/lang/String; = "exit_smiling_cloud"

.field public static final FROM_SMARTISANOS_LAUNCHPAD:Ljava/lang/String; = "from_smartisanos_launchpad"

.field private static final KEY_FIND_PASSWORD_ANSWER:Ljava/lang/String; = "find_password_answer"

.field private static final KEY_SELECTED_QUESTION:Ljava/lang/String; = "selected_question"

.field private static final LAUNCHER_APP_LOCK_KEY:Ljava/lang/String; = "launcher_app_lock_key"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.smartisanos.securitycenter"

.field public static final RESULT_CANCEL:I = 0x0

.field private static final RESULT_LOGIN_KEY:Ljava/lang/String; = "result"

.field public static final RESULT_SUCCESS:I = -0x1

.field public static final UTF_8:Ljava/nio/charset/Charset;

.field private static encryptedKey:Ljava/lang/String;

.field private static sAppLockPwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 26
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AppLockUtil;->UTF_8:Ljava/nio/charset/Charset;

    const-string v0, "US-ASCII"

    .line 27
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AppLockUtil;->ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 4

    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 164
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 165
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "0"

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 167
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 169
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static checkAnswer(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "SHA-1"

    const-string v1, "find_password_answer"

    .line 234
    invoke-static {v1, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {p1, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static checkMd5Password(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "MD5"

    .line 246
    invoke-static {p1, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 248
    invoke-static {p0}, Lcom/android/settings/PrivacySecurity;->getInstance(Landroid/content/Context;)Lcom/android/settings/PrivacySecurity;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settings/PrivacySecurity;->checkPassword(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static checkPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 88
    invoke-static {p1}, Lcom/android/settings/AppLockUtil;->encryptLauncherAppLockPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->getEncryptedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static clearAppLockPassword(Landroid/content/Context;)V
    .locals 2

    .line 92
    invoke-static {}, Lcom/android/settings/AppLockUtil;->getLauncherAppLockKey()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public static clearPlatLock(Landroid/content/Context;)V
    .locals 1

    .line 288
    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->isLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->clearAppLockPassword(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_0
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    .line 56
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 151
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/security/MessageDigest;->reset()V

    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 154
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/android/settings/AppLockUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 157
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object p0
.end method

.method private static encryptAppLockKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SHA-1"

    .line 116
    invoke-static {p0, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encryptAppLockPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 257
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "MD5"

    .line 260
    invoke-static {p0, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptLauncherAppLockPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_lock_encrypt_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->getSmallHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppLockEncryptPwd(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 272
    sget-object p0, Lcom/android/settings/AppLockUtil;->sAppLockPwd:Ljava/lang/String;

    return-object p0
.end method

.method private static getAppLockKey()Ljava/lang/String;
    .locals 1

    .line 265
    sget-object v0, Lcom/android/settings/AppLockUtil;->encryptedKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "app_lock_key"

    .line 266
    invoke-static {v0}, Lcom/android/settings/AppLockUtil;->encryptAppLockKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AppLockUtil;->encryptedKey:Ljava/lang/String;

    .line 268
    :cond_0
    sget-object v0, Lcom/android/settings/AppLockUtil;->encryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppLockPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_4

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const-string v1, "000"

    goto :goto_1

    :cond_0
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    const-string v1, "00"

    goto :goto_1

    :cond_1
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_2

    const-string v1, "0"

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 141
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/AppLockUtil;->checkPassword(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEncryptedPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/AppLockUtil;->getLauncherAppLockKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLauncherAppLockKey()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/android/settings/AppLockUtil;->encryptedKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "launcher_app_lock_key"

    .line 110
    invoke-static {v0}, Lcom/android/settings/AppLockUtil;->encryptAppLockKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AppLockUtil;->encryptedKey:Ljava/lang/String;

    .line 112
    :cond_0
    sget-object v0, Lcom/android/settings/AppLockUtil;->encryptedKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getSelectedQuestion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "selected_question"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 215
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03007b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static getSmallHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "SHA-1"

    .line 70
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->toUtf8(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->getSmallHashFromSha1([B)I

    move-result p0

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getSmallHashFromSha1([B)I
    .locals 3

    const/16 v0, 0x13

    .line 179
    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0xf

    .line 180
    aget-byte v1, p0, v0

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v2, v0, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x3

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v1

    return p0
.end method

.method public static isLocked(Landroid/content/Context;)Z
    .locals 2

    .line 82
    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->getEncryptedPassword(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "encode"

    invoke-static {v1, v0}, Lsmartisanos/util/LogTag;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isPrivacyPasswordSet(Landroid/content/ContentResolver;)Z
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "security_privacy"

    .line 301
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSmilingCloudLogin(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "content://com.smartisanos.cloudsync.accountcenter"

    .line 276
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    const-string/jumbo v2, "request_account_islogin"

    .line 279
    invoke-virtual {p0, v0, v2, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "result"

    .line 282
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static saveAnswer(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SHA-1"

    const-string v1, "find_password_answer"

    .line 228
    invoke-static {v1, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {p1, v0}, Lcom/android/settings/AppLockUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static saveAppLockPassword(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 99
    invoke-static {}, Lcom/android/settings/AppLockUtil;->getLauncherAppLockKey()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {p1}, Lcom/android/settings/AppLockUtil;->encryptLauncherAppLockPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static saveAppLockPwd(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 253
    invoke-static {p1}, Lcom/android/settings/AppLockUtil;->encryptAppLockPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/settings/AppLockUtil;->sAppLockPwd:Ljava/lang/String;

    return-void
.end method

.method public static saveSelectedQuestion(Landroid/content/Context;I)V
    .locals 1

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "selected_question"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static saveSelectedQuestion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "selected_question"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static sendPwdErrCodeBroadcast(Landroid/content/Context;ZI)V
    .locals 1

    if-eqz p1, :cond_0

    .line 307
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.smartisanos.action.CHOOSE_LOCK_PASSWORD"

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "choose_lock_password_error_code"

    .line 309
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "com.smartisanos.desktop"

    .line 310
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static setPrivacyPassword(Landroid/content/Context;Z)V
    .locals 1

    .line 294
    invoke-static {p0}, Lcom/android/settings/PrivacySecurity;->getInstance(Landroid/content/Context;)Lcom/android/settings/PrivacySecurity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/PrivacySecurity;->isSecurityOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 295
    :cond_0
    invoke-static {p0}, Lcom/android/settings/PrivacySecurity;->getInstance(Landroid/content/Context;)Lcom/android/settings/PrivacySecurity;

    move-result-object p1

    invoke-static {p0}, Lcom/android/settings/AppLockUtil;->getAppLockEncryptPwd(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/PrivacySecurity;->setPassword(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static toUtf8(Ljava/lang/String;)[B
    .locals 1

    .line 64
    sget-object v0, Lcom/android/settings/AppLockUtil;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcom/android/settings/AppLockUtil;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method
