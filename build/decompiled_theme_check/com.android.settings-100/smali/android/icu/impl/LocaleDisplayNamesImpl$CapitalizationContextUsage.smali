.class final enum Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
.super Ljava/lang/Enum;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CapitalizationContextUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

.field public static final enum VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 64
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v1, 0x0

    const-string v2, "LANGUAGE"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 65
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v2, 0x1

    const-string v3, "SCRIPT"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 66
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v3, 0x2

    const-string v4, "TERRITORY"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 67
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v4, 0x3

    const-string v5, "VARIANT"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 68
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v5, 0x4

    const-string v6, "KEY"

    invoke-direct {v0, v6, v5}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 69
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v6, 0x5

    const-string v7, "KEYVALUE"

    invoke-direct {v0, v7, v6}, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    .line 63
    sget-object v7, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->LANGUAGE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v7, v0, v1

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->SCRIPT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->TERRITORY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->VARIANT:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v4

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEY:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v5

    sget-object v1, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->KEYVALUE:Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    aput-object v1, v0, v6

    sput-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .locals 1

    .line 63
    const-class v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;
    .locals 1

    .line 63
    sget-object v0, Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->$VALUES:[Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    invoke-virtual {v0}, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/LocaleDisplayNamesImpl$CapitalizationContextUsage;

    return-object v0
.end method
