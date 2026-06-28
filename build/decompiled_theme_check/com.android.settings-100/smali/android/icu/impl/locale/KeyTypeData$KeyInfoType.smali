.class final enum Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KeyInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

.field public static final enum deprecated:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

.field public static final enum valueType:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 405
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    const/4 v1, 0x0

    const-string v2, "deprecated"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    const/4 v2, 0x1

    const-string/jumbo v3, "valueType"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->valueType:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    sget-object v3, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->valueType:Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 405
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
    .locals 1

    .line 405
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;
    .locals 1

    .line 405
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/KeyTypeData$KeyInfoType;

    return-object v0
.end method
