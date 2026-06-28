.class Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables$1;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;->load(Ljava/lang/String;)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 673
    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 0

    .line 676
    new-instance p0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;

    invoke-direct {p0, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;-><init>(Z)V

    return-object p0
.end method
