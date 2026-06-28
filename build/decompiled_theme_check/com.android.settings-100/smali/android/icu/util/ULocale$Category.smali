.class public final enum Landroid/icu/util/ULocale$Category;
.super Ljava/lang/Enum;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/icu/util/ULocale$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/ULocale$Category;

.field public static final enum DISPLAY:Landroid/icu/util/ULocale$Category;

.field public static final enum FORMAT:Landroid/icu/util/ULocale$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 270
    new-instance v0, Landroid/icu/util/ULocale$Category;

    const/4 v1, 0x0

    const-string v2, "DISPLAY"

    invoke-direct {v0, v2, v1}, Landroid/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    .line 274
    new-instance v0, Landroid/icu/util/ULocale$Category;

    const/4 v2, 0x1

    const-string v3, "FORMAT"

    invoke-direct {v0, v3, v2}, Landroid/icu/util/ULocale$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/icu/util/ULocale$Category;

    .line 266
    sget-object v3, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    aput-object v3, v0, v1

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    aput-object v1, v0, v2

    sput-object v0, Landroid/icu/util/ULocale$Category;->$VALUES:[Landroid/icu/util/ULocale$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 266
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/ULocale$Category;
    .locals 1

    .line 266
    const-class v0, Landroid/icu/util/ULocale$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/icu/util/ULocale$Category;

    return-object p0
.end method

.method public static values()[Landroid/icu/util/ULocale$Category;
    .locals 1

    .line 266
    sget-object v0, Landroid/icu/util/ULocale$Category;->$VALUES:[Landroid/icu/util/ULocale$Category;

    invoke-virtual {v0}, [Landroid/icu/util/ULocale$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/icu/util/ULocale$Category;

    return-object v0
.end method
