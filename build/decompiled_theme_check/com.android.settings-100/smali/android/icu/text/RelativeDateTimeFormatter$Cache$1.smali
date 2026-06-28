.class Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;
.super Landroid/icu/impl/SoftCache;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RelativeDateTimeFormatter$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;",
        "Landroid/icu/util/ULocale;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/icu/text/RelativeDateTimeFormatter$Cache;


# direct methods
.method constructor <init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V
    .locals 0

    .line 795
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;->this$0:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    .locals 0

    .line 798
    new-instance p0, Landroid/icu/text/RelativeDateTimeFormatter$Loader;

    invoke-direct {p0, p2}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;-><init>(Landroid/icu/util/ULocale;)V

    invoke-virtual {p0}, Landroid/icu/text/RelativeDateTimeFormatter$Loader;->load()Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 795
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/util/ULocale;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter$Cache$1;->createInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    move-result-object p0

    return-object p0
.end method
