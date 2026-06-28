.class final enum Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
.super Ljava/lang/Enum;
.source "DateTimePatternGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateTimePatternGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DTPGflags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/DateTimePatternGenerator$DTPGflags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

.field public static final enum SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1907
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    const/4 v1, 0x0

    const-string v2, "FIX_FRACTIONAL_SECONDS"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    .line 1908
    new-instance v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    const/4 v2, 0x1

    const-string v3, "SKELETON_USES_CAP_J"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    .line 1906
    sget-object v3, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->FIX_FRACTIONAL_SECONDS:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->SKELETON_USES_CAP_J:Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1906
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
    .locals 1

    .line 1906
    const-class v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;
    .locals 1

    .line 1906
    sget-object v0, Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->$VALUES:[Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    invoke-virtual {v0}, [Landroid/icu/text/DateTimePatternGenerator$DTPGflags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/DateTimePatternGenerator$DTPGflags;

    return-object v0
.end method
