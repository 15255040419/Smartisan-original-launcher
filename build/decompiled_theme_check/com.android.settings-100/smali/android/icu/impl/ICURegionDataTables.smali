.class public Landroid/icu/impl/ICURegionDataTables;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.source "ICURegionDataTables.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "android/icu/impl/data/icudt60b/region"

    .line 17
    invoke-direct {p0, v0}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 0

    .line 15
    invoke-super {p0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    move-result-object p0

    return-object p0
.end method
