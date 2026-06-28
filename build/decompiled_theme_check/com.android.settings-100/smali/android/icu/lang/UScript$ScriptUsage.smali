.class public final enum Landroid/icu/lang/UScript$ScriptUsage;
.super Ljava/lang/Enum;
.source "UScript.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UScript;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScriptUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/lang/UScript$ScriptUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

.field public static final enum UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1309
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v1, 0x0

    const-string v2, "NOT_ENCODED"

    invoke-direct {v0, v2, v1}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1313
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v2, 0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v2}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1317
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v3, 0x2

    const-string v4, "EXCLUDED"

    invoke-direct {v0, v4, v3}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1321
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v4, 0x3

    const-string v5, "LIMITED_USE"

    invoke-direct {v0, v5, v4}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1325
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v5, 0x4

    const-string v6, "ASPIRATIONAL"

    invoke-direct {v0, v6, v5}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    .line 1329
    new-instance v0, Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v6, 0x5

    const-string v7, "RECOMMENDED"

    invoke-direct {v0, v7, v6}, Landroid/icu/lang/UScript$ScriptUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/lang/UScript$ScriptUsage;

    .line 1305
    sget-object v7, Landroid/icu/lang/UScript$ScriptUsage;->NOT_ENCODED:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v7, v0, v1

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->UNKNOWN:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->EXCLUDED:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->LIMITED_USE:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->ASPIRATIONAL:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/lang/UScript$ScriptUsage;->RECOMMENDED:Landroid/icu/lang/UScript$ScriptUsage;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1305
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/lang/UScript$ScriptUsage;
    .locals 1

    .line 1305
    const-class v0, Landroid/icu/lang/UScript$ScriptUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/lang/UScript$ScriptUsage;

    return-object p0
.end method

.method public static values()[Landroid/icu/lang/UScript$ScriptUsage;
    .locals 1

    .line 1305
    sget-object v0, Landroid/icu/lang/UScript$ScriptUsage;->$VALUES:[Landroid/icu/lang/UScript$ScriptUsage;

    invoke-virtual {v0}, [Landroid/icu/lang/UScript$ScriptUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/lang/UScript$ScriptUsage;

    return-object v0
.end method
