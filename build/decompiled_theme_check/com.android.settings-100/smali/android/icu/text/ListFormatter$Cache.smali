.class Landroid/icu/text/ListFormatter$Cache;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/ListFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final cache:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/ListFormatter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    iput-object v0, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/ListFormatter$1;)V
    .locals 0

    .line 300
    invoke-direct {p0}, Landroid/icu/text/ListFormatter$Cache;-><init>()V

    return-void
.end method

.method private static load(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;
    .locals 10

    const-string v0, "android/icu/impl/data/icudt60b"

    .line 316
    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    new-instance v9, Landroid/icu/text/ListFormatter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listPattern/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/2"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/icu/text/ListFormatter;->access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/start"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/icu/text/ListFormatter;->access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/middle"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/icu/text/ListFormatter;->access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/end"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 322
    invoke-virtual {v0, p1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/icu/text/ListFormatter;->access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v2 .. v8}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$1;)V

    return-object v9
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 305
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "%s:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 306
    iget-object v1, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {v1, v0}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/ListFormatter;

    if-nez v1, :cond_0

    .line 308
    invoke-static {p1, p2}, Landroid/icu/text/ListFormatter$Cache;->load(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    move-result-object v1

    .line 309
    iget-object p0, p0, Landroid/icu/text/ListFormatter$Cache;->cache:Landroid/icu/impl/ICUCache;

    invoke-interface {p0, v0, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method
