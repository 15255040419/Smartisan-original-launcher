.class public final enum Landroid/icu/text/SpoofChecker$RestrictionLevel;
.super Ljava/lang/Enum;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/SpoofChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RestrictionLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/text/SpoofChecker$RestrictionLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field public static final enum UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 224
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const/4 v1, 0x0

    const-string v2, "ASCII"

    invoke-direct {v0, v2, v1}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 229
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const/4 v2, 0x1

    const-string v3, "SINGLE_SCRIPT_RESTRICTIVE"

    invoke-direct {v0, v3, v2}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 239
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const/4 v3, 0x2

    const-string v4, "HIGHLY_RESTRICTIVE"

    invoke-direct {v0, v4, v3}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 245
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const/4 v4, 0x3

    const-string v5, "MODERATELY_RESTRICTIVE"

    invoke-direct {v0, v5, v4}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 250
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const/4 v5, 0x4

    const-string v6, "MINIMALLY_RESTRICTIVE"

    invoke-direct {v0, v6, v5}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 254
    new-instance v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const/4 v6, 0x5

    const-string v7, "UNRESTRICTIVE"

    invoke-direct {v0, v7, v6}, Landroid/icu/text/SpoofChecker$RestrictionLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/SpoofChecker$RestrictionLevel;

    .line 219
    sget-object v7, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    aput-object v7, v0, v1

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->$VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1

    .line 219
    const-class v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object p0
.end method

.method public static values()[Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1

    .line 219
    sget-object v0, Landroid/icu/text/SpoofChecker$RestrictionLevel;->$VALUES:[Landroid/icu/text/SpoofChecker$RestrictionLevel;

    invoke-virtual {v0}, [Landroid/icu/text/SpoofChecker$RestrictionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/text/SpoofChecker$RestrictionLevel;

    return-object v0
.end method
