.class public final enum Lcom/android/settings/widget/BaseFingerprintAnimView$Status;
.super Ljava/lang/Enum;
.source "BaseFingerprintAnimView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/BaseFingerprintAnimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/widget/BaseFingerprintAnimView$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

.field public static final enum ENROLLING:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

.field public static final enum INIT:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    new-instance v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    const/4 v1, 0x0

    const-string v2, "INIT"

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->INIT:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    new-instance v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    const/4 v2, 0x1

    const-string v3, "ENROLLING"

    invoke-direct {v0, v3, v2}, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->ENROLLING:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    .line 65
    sget-object v3, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->INIT:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->ENROLLING:Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->$VALUES:[Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/widget/BaseFingerprintAnimView$Status;
    .locals 1

    .line 65
    const-class v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/widget/BaseFingerprintAnimView$Status;
    .locals 1

    .line 65
    sget-object v0, Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->$VALUES:[Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    invoke-virtual {v0}, [Lcom/android/settings/widget/BaseFingerprintAnimView$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/widget/BaseFingerprintAnimView$Status;

    return-object v0
.end method
