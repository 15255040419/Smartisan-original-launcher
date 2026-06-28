.class Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICUDataTable"
.end annotation


# instance fields
.field private final bundle:Landroid/icu/impl/ICUResourceBundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/icu/util/ULocale;Z)V
    .locals 0

    .line 650
    invoke-direct {p0, p3}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;-><init>(Z)V

    .line 652
    invoke-virtual {p2}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p2

    .line 651
    invoke-static {p1, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 662
    iget-object v0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    .line 663
    iget-boolean p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->nullIfNotFound:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    move-object p0, p3

    .line 662
    :goto_0
    invoke-static {v0, p1, p2, p3, p0}, Landroid/icu/impl/ICUResourceTableAccess;->getTableString(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 657
    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;->bundle:Landroid/icu/impl/ICUResourceBundle;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method
