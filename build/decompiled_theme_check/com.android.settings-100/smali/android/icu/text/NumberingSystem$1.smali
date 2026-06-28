.class Landroid/icu/text/NumberingSystem$1;
.super Landroid/icu/impl/SoftCache;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/NumberingSystem;",
        "Landroid/icu/text/NumberingSystem$LocaleLookupData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;
    .locals 0

    .line 328
    invoke-static {p2}, Landroid/icu/text/NumberingSystem;->lookupInstanceByLocale(Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 325
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/text/NumberingSystem$LocaleLookupData;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberingSystem$1;->createInstance(Ljava/lang/String;Landroid/icu/text/NumberingSystem$LocaleLookupData;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method
