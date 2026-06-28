.class public final enum Landroid/icu/impl/ValidIdentifiers$Datasubtype;
.super Ljava/lang/Enum;
.source "ValidIdentifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ValidIdentifiers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Datasubtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/ValidIdentifiers$Datasubtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum macroregion:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum private_use:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum regular:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum special:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

.field public static final enum unknown:Landroid/icu/impl/ValidIdentifiers$Datasubtype;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v1, 0x0

    const-string v2, "deprecated"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 47
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v2, 0x1

    const-string/jumbo v3, "private_use"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->private_use:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 48
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v3, 0x2

    const-string/jumbo v4, "regular"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->regular:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 49
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v4, 0x3

    const-string/jumbo v5, "special"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->special:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 50
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v5, 0x4

    const-string/jumbo v6, "unknown"

    invoke-direct {v0, v6, v5}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->unknown:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 51
    new-instance v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v6, 0x5

    const-string v7, "macroregion"

    invoke-direct {v0, v7, v6}, Landroid/icu/impl/ValidIdentifiers$Datasubtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->macroregion:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    .line 45
    sget-object v7, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->deprecated:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    aput-object v7, v0, v1

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->private_use:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->regular:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->special:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->unknown:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->macroregion:Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->$VALUES:[Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .locals 1

    .line 45
    const-class v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/ValidIdentifiers$Datasubtype;
    .locals 1

    .line 45
    sget-object v0, Landroid/icu/impl/ValidIdentifiers$Datasubtype;->$VALUES:[Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    invoke-virtual {v0}, [Landroid/icu/impl/ValidIdentifiers$Datasubtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/ValidIdentifiers$Datasubtype;

    return-object v0
.end method
