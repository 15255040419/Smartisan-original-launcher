.class Landroid/icu/text/RelativeDateTimeFormatter$Cache;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation


# instance fields
.field private final cache:Landroid/icu/impl/CacheBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;

    invoke-direct {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V

    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/CacheBase;

    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$1;)V
    .locals 0

    .line 793
    invoke-direct {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 1

    .line 803
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    iget-object p0, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->cache:Landroid/icu/impl/CacheBase;

    invoke-virtual {p0, v0, p1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    return-object p0
.end method
