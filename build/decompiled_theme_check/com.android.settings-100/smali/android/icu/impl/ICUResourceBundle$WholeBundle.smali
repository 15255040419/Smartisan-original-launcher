.class public final Landroid/icu/impl/ICUResourceBundle$WholeBundle;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WholeBundle"
.end annotation


# instance fields
.field baseName:Ljava/lang/String;

.field loader:Ljava/lang/ClassLoader;

.field localeID:Ljava/lang/String;

.field reader:Landroid/icu/impl/ICUResourceBundleReader;

.field topLevelKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ulocale:Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    .line 64
    new-instance p1, Landroid/icu/util/ULocale;

    invoke-direct {p1, p2}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Landroid/icu/util/ULocale;

    .line 65
    iput-object p3, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    .line 66
    iput-object p4, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    return-void
.end method
