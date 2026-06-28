.class Landroid/icu/impl/locale/BaseLocale$Cache;
.super Landroid/icu/impl/locale/LocaleObjectCache;
.source "BaseLocale.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/locale/BaseLocale;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/locale/LocaleObjectCache<",
        "Landroid/icu/impl/locale/BaseLocale$Key;",
        "Landroid/icu/impl/locale/BaseLocale;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Landroid/icu/impl/locale/LocaleObjectCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createObject(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale;
    .locals 6

    .line 267
    new-instance p0, Landroid/icu/impl/locale/BaseLocale;

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->access$000(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->access$100(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->access$200(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->access$300(Landroid/icu/impl/locale/BaseLocale$Key;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/locale/BaseLocale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/impl/locale/BaseLocale$1;)V

    return-object p0
.end method

.method protected bridge synthetic createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 255
    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/BaseLocale$Cache;->createObject(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale;

    move-result-object p0

    return-object p0
.end method

.method protected normalizeKey(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;
    .locals 0

    .line 262
    invoke-static {p1}, Landroid/icu/impl/locale/BaseLocale$Key;->normalize(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 255
    check-cast p1, Landroid/icu/impl/locale/BaseLocale$Key;

    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/BaseLocale$Cache;->normalizeKey(Landroid/icu/impl/locale/BaseLocale$Key;)Landroid/icu/impl/locale/BaseLocale$Key;

    move-result-object p0

    return-object p0
.end method
