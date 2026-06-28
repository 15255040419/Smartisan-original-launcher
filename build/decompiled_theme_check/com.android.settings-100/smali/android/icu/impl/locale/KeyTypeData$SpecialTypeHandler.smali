.class abstract Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
.super Ljava/lang/Object;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SpecialTypeHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/locale/KeyTypeData$1;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-static {p1}, Landroid/icu/impl/locale/AsciiUtil;->toLowerString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method abstract isWellFormed(Ljava/lang/String;)Z
.end method
