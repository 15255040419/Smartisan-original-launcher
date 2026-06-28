.class public Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;
.super Ljava/lang/Object;
.source "LocaleDisplayNamesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/LocaleDisplayNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataTable"
.end annotation


# instance fields
.field final nullIfNotFound:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 630
    iput-boolean p1, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->nullIfNotFound:Z

    return-void
.end method


# virtual methods
.method get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 638
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 642
    iget-boolean p0, p0, Landroid/icu/impl/LocaleDisplayNamesImpl$DataTable;->nullIfNotFound:Z

    if-eqz p0, :cond_0

    const/4 p3, 0x0

    :cond_0
    return-object p3
.end method

.method getLocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 634
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    return-object p0
.end method
