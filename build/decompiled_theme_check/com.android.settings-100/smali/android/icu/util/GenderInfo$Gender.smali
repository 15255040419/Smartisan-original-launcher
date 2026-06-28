.class public final enum Landroid/icu/util/GenderInfo$Gender;
.super Ljava/lang/Enum;
.source "GenderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/GenderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/GenderInfo$Gender;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/GenderInfo$Gender;

.field public static final enum FEMALE:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum MALE:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum OTHER:Landroid/icu/util/GenderInfo$Gender;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    const/4 v1, 0x0

    const-string v2, "MALE"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    .line 53
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    const/4 v2, 0x1

    const-string v3, "FEMALE"

    invoke-direct {v0, v3, v2}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    .line 59
    new-instance v0, Landroid/icu/util/GenderInfo$Gender;

    const/4 v3, 0x2

    const-string v4, "OTHER"

    invoke-direct {v0, v4, v3}, Landroid/icu/util/GenderInfo$Gender;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/icu/util/GenderInfo$Gender;

    .line 41
    sget-object v4, Landroid/icu/util/GenderInfo$Gender;->MALE:Landroid/icu/util/GenderInfo$Gender;

    aput-object v4, v0, v1

    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->FEMALE:Landroid/icu/util/GenderInfo$Gender;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/util/GenderInfo$Gender;->OTHER:Landroid/icu/util/GenderInfo$Gender;

    aput-object v1, v0, v3

    sput-object v0, Landroid/icu/util/GenderInfo$Gender;->$VALUES:[Landroid/icu/util/GenderInfo$Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/GenderInfo$Gender;
    .locals 1

    .line 41
    const-class v0, Landroid/icu/util/GenderInfo$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/util/GenderInfo$Gender;

    return-object p0
.end method

.method public static values()[Landroid/icu/util/GenderInfo$Gender;
    .locals 1

    .line 41
    sget-object v0, Landroid/icu/util/GenderInfo$Gender;->$VALUES:[Landroid/icu/util/GenderInfo$Gender;

    invoke-virtual {v0}, [Landroid/icu/util/GenderInfo$Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/GenderInfo$Gender;

    return-object v0
.end method
