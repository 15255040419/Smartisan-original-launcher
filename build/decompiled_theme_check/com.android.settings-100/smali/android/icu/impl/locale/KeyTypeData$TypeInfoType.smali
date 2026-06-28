.class final enum Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "TypeInfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

.field public static final enum deprecated:Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 406
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    const/4 v1, 0x0

    const-string v2, "deprecated"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    sget-object v2, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->deprecated:Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 406
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;
    .locals 1

    .line 406
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;
    .locals 1

    .line 406
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/KeyTypeData$TypeInfoType;

    return-object v0
.end method
