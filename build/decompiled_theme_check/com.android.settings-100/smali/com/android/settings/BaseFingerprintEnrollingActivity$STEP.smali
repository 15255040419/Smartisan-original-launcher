.class public final enum Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;
.super Ljava/lang/Enum;
.source "BaseFingerprintEnrollingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BaseFingerprintEnrollingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "STEP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

.field public static final enum DONE:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

.field public static final enum ENROLLED:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

.field public static final enum ENROLLING:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

.field public static final enum ERROR:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

.field public static final enum INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 78
    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const/4 v1, 0x0

    const-string v2, "INIT"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const/4 v2, 0x1

    const-string v3, "ENROLLING"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLING:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const/4 v3, 0x2

    const-string v4, "ENROLLED"

    invoke-direct {v0, v4, v3}, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLED:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const/4 v4, 0x3

    const-string v5, "DONE"

    invoke-direct {v0, v5, v4}, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->DONE:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    new-instance v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5}, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ERROR:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    .line 77
    sget-object v6, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->INIT:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    aput-object v6, v0, v1

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLING:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ENROLLED:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->DONE:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->ERROR:Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->$VALUES:[Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;
    .locals 1

    .line 77
    const-class v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;
    .locals 1

    .line 77
    sget-object v0, Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->$VALUES:[Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    invoke-virtual {v0}, [Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/BaseFingerprintEnrollingActivity$STEP;

    return-object v0
.end method
