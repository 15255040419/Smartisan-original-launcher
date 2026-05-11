.class public Lcom/smartisanos/securitycenter/SecurityConstants;
.super Ljava/lang/Object;
.source "SecurityConstants.java"


# static fields
.field public static final ACTION_ALARM_RECEIVED:Ljava/lang/String; = "com.smartisanos.action.ACTION_ALARM_RECEIVED"

.field public static final ACTION_NOTIFY_PERMISSION_TIMES:Ljava/lang/String; = "com.smartisanos.permission.SENSITIVE_PERMISSION"

.field public static final ACTION_PRIVACY_SECURITY:Ljava/lang/String; = "com.smartisanos.action.PRIVACY_SECURITY"

.field public static final ACTION_PRIVACY_SECURITY_DISABLED:Ljava/lang/String; = "com.smartisanos.action.PRIVACY_SECURITY_DISABLED"

.field public static final ACTION_PRIVACY_SECURITY_ENABLED:Ljava/lang/String; = "com.smartisanos.action.PRIVACY_SECURITY_ENABLED"

.field public static final ACTION_SENSITIVE_PERMISSION:Ljava/lang/String; = "com.smartisanos.action.SENSITIVE_PERMISSION"

.field public static final BUNDLE_IS_SHOW:Ljava/lang/String; = "isShow"

.field public static final BUNDLE_MODE:Ljava/lang/String; = "mode"

.field public static final BUNDLE_PACKAGE:Ljava/lang/String; = "pkg"

.field public static final BUNDLE_PERMISSION:Ljava/lang/String; = "permission"

.field public static final BUNDLE_TIMES:Ljava/lang/String; = "times"

.field public static final BUNDLE_USER_ID:Ljava/lang/String; = "userId"

.field public static final CLOUD_ID_ACTIVITY:Ljava/lang/String; = "com.smartisanos.cloudsync.CheckPasswordActivity"

.field public static final CLOUD_ID_PACKAGE:Ljava/lang/String; = "com.smartisanos.cloudsync"

.field public static final CLOUD_ID_PERMISSION:Ljava/lang/String; = "com.smartisan.permission.ACCOUNT_CENTER"

.field public static final CLOUD_ID_PROVIDER:Ljava/lang/String; = "content://com.smartisanos.cloudsync.accountcenter"

.field public static final CLOUD_ID_REQUEST_ACCOUNT:Ljava/lang/String; = "request_account_phone"

.field public static final CLOUD_ID_REQUEST_LOGIN_STATE:Ljava/lang/String; = "request_account_islogin"

.field public static final DB_NAME:Ljava/lang/String; = "securitycenter.db"

.field public static final DEFAULT_PIN_LENGTH:I = 0x6

.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"

.field public static final FACEID_RETRY_MAX:I = 0xa

.field public static final FACEID_SETUP_DELAY_MS_SHORT:J = 0x64L

.field public static final FACEID_WARN_TIMES:[I

.field public static final FACE_SERVICE_CLASS:Ljava/lang/String; = "com.smartisan.facerecognition.FaceIDService"

.field public static final FACE_SERVICE_PACKAGE:Ljava/lang/String; = "com.smartisan.facerecognition"

.field public static final FACE_SERVICE_PERMISSION:Ljava/lang/String; = "com.smartisanos.permission.facerecognition"

.field public static final FINGERPRINT_RETRY_MAX:I = 0x5

.field public static final FINGERPRINT_WARN_TIME:[I

.field public static final LOCKOUT_TIME_CLEAR:J = 0x0L

.field public static final LOCKOUT_TIME_FOREVER:J = 0x7fffffffffffffffL

.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_FOREGROUND:I = 0x4

.field public static final MODE_IGNORED:I = 0x1

.field public static final MS_PER_SECOND:J = 0x3e8L

.field public static final NAVIGATION_SETTINGS:Ljava/lang/String; = "nav_fixed_mode"

.field public static final NAVIGATION_SHOWING:I = 0x0

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.smartisanos.securitycenter"

.field public static final PERMISSION:Ljava/lang/String; = "com.smartisanos.permission.SECURITY_CENTER"

.field public static final PERMISSION_AUDIO:Ljava/lang/String; = "audio"

.field public static final PERMISSION_CAMERA:Ljava/lang/String; = "camera"

.field public static final PERMISSION_CODE:I = 0x1

.field public static final PERMISSION_CONTROLLER:Ljava/lang/String; = "com.android.permissioncontroller"

.field public static final PERMISSION_CONTROLLER_COMPONENT:Ljava/lang/String; = "com.android.packageinstaller.permission.service.SensitiveBroadcastReceiver"

.field public static final PERMISSION_HOUR:I = 0x18

.field public static final PERMISSION_LOCATION:Ljava/lang/String; = "location"

.field public static final PERMISSION_MINUTE:I = 0x0

.field public static final PERMISSION_TYPE:I = 0x1

.field public static final PIN_FAIL_COUNT_DURATIVE:I = 0xa

.field public static final PIN_FAIL_COUNT_TEMPORARY:I = 0x5

.field public static final PIN_LOCKOUT_INTERVAL_MS:J = 0x7530L

.field public static final PIN_PAUSE_INTERVAL_MS:J = 0x190L

.field public static final REBIND_DELAY_MS:J = 0x3e8L

.field public static final SPILT_CLONE:Ljava/lang/String; = "@"

.field public static final SPILT_PERM:Ljava/lang/String; = "|"

.field public static final STATUS_BAR_COLLAPSE:I = 0x0

.field public static final STATUS_BAR_EXPANDED:I = 0x2

.field public static final STATUS_BAR_EXPANDING:I = 0x1

.field public static final STATUS_BAR_EXPEND_KEY:Ljava/lang/String; = "status_bar_expanded"

.field public static final TEST_TYPE:I = 0x2

.field public static final UNLOCK_BY_CALLING:I = 0x8

.field public static final UNLOCK_BY_CLOUDID:I = 0x3

.field public static final UNLOCK_BY_FACEID:I = 0x2

.field public static final UNLOCK_BY_FINGERPRINT:I = 0x1

.field public static final UNLOCK_BY_PIN:I = 0x4

.field public static final UNLOCK_SECURITY_DISABLED:I = 0x9

.field public static final WAIT_FOR_BING_DELAY:J = 0x32L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/smartisanos/securitycenter/SecurityConstants;->FINGERPRINT_WARN_TIME:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/smartisanos/securitycenter/SecurityConstants;->FACEID_WARN_TIMES:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x9
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
