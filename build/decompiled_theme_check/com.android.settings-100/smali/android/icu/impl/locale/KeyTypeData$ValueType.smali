.class public final enum Landroid/icu/impl/locale/KeyTypeData$ValueType;
.super Ljava/lang/Enum;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/impl/locale/KeyTypeData$ValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum any:Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum incremental:Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum multiple:Landroid/icu/impl/locale/KeyTypeData$ValueType;

.field public static final enum single:Landroid/icu/impl/locale/KeyTypeData$ValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 35
    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const/4 v1, 0x0

    const-string/jumbo v2, "single"

    invoke-direct {v0, v2, v1}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->single:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const/4 v2, 0x1

    const-string v3, "multiple"

    invoke-direct {v0, v3, v2}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->multiple:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const/4 v3, 0x2

    const-string v4, "incremental"

    invoke-direct {v0, v4, v3}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->incremental:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    new-instance v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const/4 v4, 0x3

    const-string v5, "any"

    invoke-direct {v0, v5, v4}, Landroid/icu/impl/locale/KeyTypeData$ValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->any:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/icu/impl/locale/KeyTypeData$ValueType;

    .line 34
    sget-object v5, Landroid/icu/impl/locale/KeyTypeData$ValueType;->single:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v5, v0, v1

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$ValueType;->multiple:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$ValueType;->incremental:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/icu/impl/locale/KeyTypeData$ValueType;->any:Landroid/icu/impl/locale/KeyTypeData$ValueType;

    aput-object v1, v0, v4

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$ValueType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .locals 1

    .line 34
    const-class v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/locale/KeyTypeData$ValueType;

    return-object p0
.end method

.method public static values()[Landroid/icu/impl/locale/KeyTypeData$ValueType;
    .locals 1

    .line 34
    sget-object v0, Landroid/icu/impl/locale/KeyTypeData$ValueType;->$VALUES:[Landroid/icu/impl/locale/KeyTypeData$ValueType;

    invoke-virtual {v0}, [Landroid/icu/impl/locale/KeyTypeData$ValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/impl/locale/KeyTypeData$ValueType;

    return-object v0
.end method
