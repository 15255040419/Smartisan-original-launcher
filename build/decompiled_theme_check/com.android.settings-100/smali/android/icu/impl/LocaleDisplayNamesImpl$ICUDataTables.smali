.class abstract Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;
.super Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ICUDataTables"
.end annotation


# instance fields
.field private final path:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 686
    invoke-direct {p0}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTables;-><init>()V

    .line 687
    iput-object p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get(Landroid/icu/util/ULocale;Z)Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
    .locals 1

    .line 692
    new-instance v0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;

    iget-object p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTables;->path:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$ICUDataTable;-><init>(Ljava/lang/String;Landroid/icu/util/ULocale;Z)V

    return-object v0
.end method
