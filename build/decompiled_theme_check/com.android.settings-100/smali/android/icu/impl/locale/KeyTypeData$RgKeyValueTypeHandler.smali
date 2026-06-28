.class Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;
.super Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;
.source "KeyTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/KeyTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RgKeyValueTypeHandler"
.end annotation


# static fields
.field private static final pat:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "([a-zA-Z]{2}|[0-9]{3})[zZ]{4}"

    .line 62
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;->pat:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Landroid/icu/impl/locale/KeyTypeData$SpecialTypeHandler;-><init>(Landroid/icu/impl/locale/KeyTypeData$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/impl/locale/KeyTypeData$1;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method isWellFormed(Ljava/lang/String;)Z
    .locals 0

    .line 65
    sget-object p0, Landroid/icu/impl/locale/KeyTypeData$RgKeyValueTypeHandler;->pat:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
