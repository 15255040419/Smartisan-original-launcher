.class Landroid/icu/util/ULocale$1;
.super Landroid/icu/impl/SoftCache;
.source "ULocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/ULocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/ULocale$1;->createInstance(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createInstance(Ljava/lang/String;Ljava/lang/Void;)Ljava/lang/String;
    .locals 0

    .line 110
    new-instance p0, Landroid/icu/impl/LocaleIDParser;

    invoke-direct {p0, p1}, Landroid/icu/impl/LocaleIDParser;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/icu/impl/LocaleIDParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
