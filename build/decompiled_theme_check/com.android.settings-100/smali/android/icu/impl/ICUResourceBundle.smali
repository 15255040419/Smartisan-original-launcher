.class public Landroid/icu/impl/ICUResourceBundle;
.super Landroid/icu/util/UResourceBundle;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUResourceBundle$OpenType;,
        Landroid/icu/impl/ICUResourceBundle$AvailEntry;,
        Landroid/icu/impl/ICUResourceBundle$Loader;,
        Landroid/icu/impl/ICUResourceBundle$WholeBundle;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ALIAS:I = 0x3

.field public static final ARRAY16:I = 0x9

.field private static BUNDLE_CACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Landroid/icu/impl/ICUResourceBundle$Loader;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final DEFAULT_TAG:Ljava/lang/String; = "default"

.field private static final FULL_LOCALE_NAMES_LIST:Ljava/lang/String; = "fullLocaleNames.lst"

.field private static GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUResourceBundle$AvailEntry;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final HYPHEN:C = '-'

.field private static final ICUDATA:Ljava/lang/String; = "ICUDATA"

.field public static final ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

.field private static final ICU_RESOURCE_INDEX:Ljava/lang/String; = "res_index"

.field protected static final INSTALLED_LOCALES:Ljava/lang/String; = "InstalledLocales"

.field private static final LOCALE:Ljava/lang/String; = "LOCALE"

.field public static final NO_INHERITANCE_MARKER:Ljava/lang/String; = "\u2205\u2205\u2205"

.field public static final RES_BOGUS:I = -0x1

.field private static final RES_PATH_SEP_CHAR:C = '/'

.field private static final RES_PATH_SEP_STR:Ljava/lang/String; = "/"

.field public static final STRING_V2:I = 0x6

.field public static final TABLE16:I = 0x5

.field public static final TABLE32:I = 0x4


# instance fields
.field private container:Landroid/icu/impl/ICUResourceBundle;

.field protected key:Ljava/lang/String;

.field wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Landroid/icu/impl/ICUData;

    invoke-static {v0}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    .line 92
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$1;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$1;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/CacheBase;

    const-string v0, "localedata"

    .line 554
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    .line 793
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$3;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundle$3;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V
    .locals 0

    .line 1366
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    .line 1367
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    return-void
.end method

.method protected constructor <init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 0

    .line 1370
    invoke-direct {p0}, Landroid/icu/util/UResourceBundle;-><init>()V

    .line 1371
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    .line 1372
    iget-object p2, p1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1373
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    .line 1374
    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Landroid/icu/impl/ICUResourceBundle;)Z
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getNoFallback()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static final addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 608
    new-instance v0, Landroid/icu/impl/ICUResourceBundle$2;

    invoke-direct {v0, p1, p0, p2}, Landroid/icu/impl/ICUResourceBundle$2;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/util/Set;)V

    .line 609
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    return-void
.end method

.method private static final addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "res_index"

    const/4 v1, 0x1

    .line 589
    :try_start_0
    invoke-static {p0, v0, p1, v1}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    const-string v1, "InstalledLocales"

    .line 590
    invoke-virtual {p1, v1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object p0

    .line 599
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    .line 600
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 592
    :catch_0
    sget-boolean p1, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 593
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldn\'t find "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".res"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 594
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    :cond_1
    return-void
.end method

.method private static addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 647
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "fullLocaleNames.lst"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 649
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "ASCII"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 653
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 654
    invoke-interface {p2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 659
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private static countPathKeys(Ljava/lang/String;)I
    .locals 4

    .line 994
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 998
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 999
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static createBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    .line 1292
    invoke-static {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundleReader;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1297
    :cond_0
    invoke-static {v0, p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private static createFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "/"

    .line 668
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 669
    :goto_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const-string v2, "android.icu.impl.ICUResourceBundle.skipRuntimeLocaleResourceScan"

    const-string v3, "false"

    .line 670
    invoke-static {v2, v3}, Landroid/icu/impl/ICUConfig;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    .line 671
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 673
    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->addBundleBaseNamesFromClassLoader(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    const-string v2, "android/icu/impl/data/icudt60b"

    .line 674
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 676
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1

    const-string v2, ""

    goto :goto_1

    .line 678
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2

    const/16 v2, 0x1f

    .line 679
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-string v3, ".res"

    .line 684
    invoke-static {v2, v3, v1}, Landroid/icu/impl/ICUBinary;->addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    :cond_3
    const-string/jumbo v2, "res_index"

    .line 687
    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 690
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 691
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 692
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    :cond_5
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_4

    .line 694
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 699
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 700
    sget-boolean v2, Landroid/icu/impl/ICUResourceBundle;->DEBUG:Z

    if-eqz v2, :cond_7

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to enumerate data files in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 701
    :cond_7
    invoke-static {v0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromListFile(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 703
    :cond_8
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 705
    invoke-static {p0, p1, v1}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    :cond_9
    const-string/jumbo p0, "root"

    .line 708
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 709
    sget-object p0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static createLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 714
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 715
    invoke-static {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundle;->addLocaleIDsFromIndexBundle(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/Set;)V

    .line 716
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static final createULocaleList(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 4

    const/4 v0, 0x1

    const-string/jumbo v1, "res_index"

    .line 563
    invoke-static {p0, v1, p1, v0}, Landroid/icu/util/UResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    const-string p1, "InstalledLocales"

    .line 565
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    .line 566
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result p1

    .line 568
    new-array p1, p1, [Landroid/icu/util/ULocale;

    .line 569
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object p0

    .line 570
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->reset()V

    const/4 v0, 0x0

    .line 571
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 572
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "root"

    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 574
    sget-object v2, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    aput-object v2, p1, v0

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 576
    new-instance v3, Landroid/icu/util/ULocale;

    invoke-direct {v3, v1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    aput-object v3, p1, v0

    move v0, v2

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static final findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 3

    .line 812
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 815
    :cond_0
    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    .line 818
    invoke-direct {p1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    .line 819
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v1

    add-int v2, v0, v1

    .line 821
    new-array v2, v2, [Ljava/lang/String;

    .line 822
    invoke-static {p0, v1, v2, v0}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    .line 823
    invoke-static {v2, v0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method private static final findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 5

    if-nez p3, :cond_0

    move-object p3, p2

    :cond_0
    :goto_0
    add-int/lit8 v0, p1, 0x1

    .line 835
    aget-object p1, p0, p1

    const/4 v1, 0x0

    .line 836
    invoke-virtual {p2, p1, v1, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object p1

    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    if-nez p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 848
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 856
    :cond_1
    invoke-direct {p2}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 858
    array-length v2, p0

    sub-int/2addr v2, v0

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 859
    array-length v3, p0

    sub-int/2addr v3, v0

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v2

    .line 862
    :cond_2
    invoke-direct {p2, p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    const/4 p2, 0x0

    move v4, p2

    move-object p2, p1

    move p1, v4

    goto :goto_0

    .line 841
    :cond_3
    array-length p2, p0

    if-ne v0, p2, :cond_4

    return-object p1

    :cond_4
    move-object p2, p1

    move p1, v0

    goto :goto_0
.end method

.method private static final findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;
    .locals 13

    .line 874
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 877
    :cond_0
    instance-of v0, p1, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    if-nez p2, :cond_2

    move-object p2, p1

    .line 884
    :cond_2
    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    .line 885
    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 890
    invoke-direct {p1}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v2

    .line 892
    invoke-static {p0}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v3

    add-int v4, v2, v3

    .line 894
    new-array v4, v4, [Ljava/lang/String;

    .line 895
    invoke-static {p0, v3, v4, v2}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    const/4 p0, -0x1

    move-object v9, v0

    move v11, v2

    move-object v10, v4

    move-object v0, p1

    :goto_0
    move p1, p0

    :goto_1
    if-ne p1, p0, :cond_4

    .line 901
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_e

    .line 903
    :cond_3
    move-object p1, v0

    check-cast p1, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;

    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    goto :goto_2

    .line 908
    :cond_4
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v3

    .line 909
    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 910
    invoke-virtual {v9, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object p1

    goto :goto_2

    .line 911
    :cond_5
    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 912
    invoke-virtual {v9, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object p1

    :goto_2
    add-int/lit8 v12, v2, 0x1

    .line 918
    aget-object v5, v10, v2

    .line 919
    invoke-virtual {p1, v9, v5}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I

    move-result p1

    if-ne p1, p0, :cond_6

    goto/16 :goto_4

    .line 925
    :cond_6
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 926
    invoke-direct {v0, v10, v11}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v10

    move v4, v12

    move v6, p1

    move-object v8, p2

    .line 927
    invoke-static/range {v2 .. v8}, Landroid/icu/impl/ICUResourceBundle;->getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v1

    .line 931
    :goto_3
    array-length v3, v10

    if-ne v12, v3, :cond_a

    if-eqz v2, :cond_8

    .line 934
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 936
    :cond_8
    invoke-virtual {v9, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    .line 938
    :cond_9
    new-instance p0, Landroid/icu/util/UResourceTypeMismatchException;

    const-string p1, ""

    invoke-direct {p0, p1}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-eqz v2, :cond_c

    .line 945
    iget-object p1, v2, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p1, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 951
    invoke-direct {v2}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v0

    if-eq v12, v0, :cond_b

    .line 953
    array-length v3, v10

    sub-int/2addr v3, v12

    add-int/2addr v3, v0

    new-array v3, v3, [Ljava/lang/String;

    .line 954
    array-length v4, v10

    sub-int/2addr v4, v12

    invoke-static {v10, v12, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, p1

    move v11, v0

    move-object v10, v3

    move p1, p0

    goto :goto_5

    :cond_b
    move-object v9, p1

    move v11, v0

    move-object v0, v2

    move v2, v12

    goto/16 :goto_0

    :cond_c
    move v2, v12

    goto/16 :goto_1

    :cond_d
    move p1, p0

    .line 961
    :cond_e
    :goto_4
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v2

    if-nez v2, :cond_f

    return-object v1

    .line 966
    :cond_f
    invoke-direct {v0, v10, v11}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 968
    iget-object v0, v2, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v9, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    const/4 v11, 0x0

    :goto_5
    move-object v0, v2

    move v2, v11

    goto/16 :goto_1
.end method

.method protected static getAliasedResource(Landroid/icu/impl/ICUResourceBundle;[Ljava/lang/String;ILjava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/ICUResourceBundle;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    .line 1408
    iget-object v3, v0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    .line 1409
    iget-object v4, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->loader:Ljava/lang/ClassLoader;

    .line 1413
    iget-object v5, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    move/from16 v6, p4

    invoke-virtual {v5, v6}, Landroid/icu/impl/ICUResourceBundleReader;->getAlias(I)Ljava/lang/String;

    move-result-object v5

    if-nez p5, :cond_0

    .line 1415
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v6, p5

    .line 1417
    :goto_0
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_d

    const-string v7, ""

    .line 1421
    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x2f

    .line 1422
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-nez v8, :cond_3

    .line 1423
    invoke-virtual {v5, v7, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    add-int/lit8 v13, v8, 0x1

    .line 1424
    invoke-virtual {v5, v7, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 1425
    invoke-virtual {v5, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    if-gez v7, :cond_1

    .line 1427
    invoke-virtual {v5, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v13, v7

    move-object v7, v10

    goto :goto_1

    .line 1429
    :cond_1
    invoke-virtual {v5, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    add-int/2addr v7, v12

    .line 1430
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v5, v7, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_1
    const-string v14, "ICUDATA"

    .line 1433
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1435
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v8, "android/icu/impl/data/icudt60b"

    goto :goto_3

    .line 1436
    :cond_2
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-le v14, v9, :cond_5

    const/16 v14, 0x2d

    .line 1437
    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-le v14, v9, :cond_5

    .line 1439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android/icu/impl/data/icudt60b/"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v14, v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v14, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1440
    sget-object v4, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    goto :goto_3

    .line 1445
    :cond_3
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v9, :cond_4

    .line 1447
    invoke-virtual {v5, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    add-int/2addr v7, v12

    .line 1448
    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v13, v8

    goto :goto_2

    :cond_4
    move-object v13, v5

    move-object v7, v10

    .line 1452
    :goto_2
    iget-object v8, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    :cond_5
    :goto_3
    const-string v9, "LOCALE"

    .line 1456
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1457
    iget-object v0, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    const/16 v0, 0x8

    .line 1458
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1461
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    .line 1462
    :goto_4
    iget-object v4, v2, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-eqz v4, :cond_6

    move-object v2, v4

    goto :goto_4

    .line 1465
    :cond_6
    invoke-static {v0, v2, v10}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v10

    goto :goto_7

    .line 1467
    :cond_7
    invoke-static {v8, v13, v4, v11}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v4

    if-eqz v7, :cond_9

    .line 1471
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    .line 1473
    new-array v5, v0, [Ljava/lang/String;

    .line 1474
    invoke-static {v7, v0, v5, v11}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    goto :goto_5

    :cond_8
    move-object/from16 v5, p1

    goto :goto_5

    :cond_9
    if-eqz p1, :cond_a

    move-object/from16 v5, p1

    move/from16 v0, p2

    goto :goto_5

    .line 1479
    :cond_a
    invoke-direct/range {p0 .. p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    .line 1481
    new-array v8, v7, [Ljava/lang/String;

    .line 1482
    invoke-direct {v0, v8, v5}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    .line 1483
    aput-object v1, v8, v5

    move v0, v7

    move-object v5, v8

    :goto_5
    if-lez v0, :cond_b

    move-object v10, v4

    :goto_6
    if-eqz v10, :cond_b

    if-ge v11, v0, :cond_b

    .line 1488
    aget-object v4, v5, v11

    invoke-virtual {v10, v4, v6, v2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-eqz v10, :cond_c

    return-object v10

    .line 1493
    :cond_c
    new-instance v0, Ljava/util/MissingResourceException;

    iget-object v2, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    iget-object v3, v3, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    invoke-direct {v0, v2, v3, v1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1418
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Circular references in the resource bundles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAllItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$Sink;)V
    .locals 4

    .line 417
    move-object v0, p0

    check-cast v0, Landroid/icu/impl/ICUResourceBundleImpl;

    .line 418
    iget-object v1, v0, Landroid/icu/impl/ICUResourceBundleImpl;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iput-object v1, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    .line 419
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleImpl;->getResource()I

    move-result v0

    iput v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->res:I

    .line 420
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/icu/impl/UResource$Key;->setString(Ljava/lang/String;)Landroid/icu/impl/UResource$Key;

    .line 421
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p3, p1, p2, v0}, Landroid/icu/impl/UResource$Sink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;Z)V

    .line 422
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    if-eqz v0, :cond_3

    .line 425
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 427
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 433
    :cond_2
    new-array v3, v2, [Ljava/lang/String;

    .line 434
    invoke-direct {p0, v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys([Ljava/lang/String;I)V

    const/4 p0, 0x0

    .line 435
    invoke-static {v3, v1, v0, p0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_3

    .line 438
    invoke-direct {v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$Sink;)V

    :cond_3
    return-void
.end method

.method private static getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;
    .locals 1

    .line 807
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->GET_AVAILABLE_CACHE:Landroid/icu/impl/CacheBase;

    invoke-virtual {v0, p0, p1}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    return-object p0
.end method

.method public static getAvailableLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 476
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    invoke-static {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getAvailableLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 450
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleNameSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    .line 508
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    invoke-static {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableLocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Ljava/util/Locale;
    .locals 0

    .line 500
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getLocaleList()[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static final getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 2

    .line 492
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    invoke-static {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static final getAvailableULocales(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;
    .locals 0

    .line 484
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    move-result-object p0

    return-object p0
.end method

.method private static getBundle(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle;
    .locals 2

    .line 1349
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader;->getRootResource()I

    move-result v0

    .line 1350
    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1351
    new-instance v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    invoke-direct {v1, p1, p2, p3, p0}, Landroid/icu/impl/ICUResourceBundle$WholeBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundleReader;)V

    .line 1352
    new-instance p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    invoke-direct {p0, v1, v0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V

    const-string p2, "%%ALIAS"

    .line 1356
    invoke-virtual {p0, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->findString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1358
    invoke-static {p1, p2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    :cond_0
    return-object p0

    .line 1354
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid format error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    if-nez p1, :cond_0

    .line 1111
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object p1

    .line 1113
    :cond_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, p1, v0, p2}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "android/icu/impl/data/icudt60b"

    .line 1122
    :cond_0
    invoke-static {p1}, Landroid/icu/util/ULocale;->getBaseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1124
    sget-object v0, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    if-ne p3, v0, :cond_1

    .line 1125
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1128
    invoke-static {p0, p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_2

    return-object p2

    .line 1131
    :cond_2
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find the bundle "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".res"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-direct {p2, p0, p1, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public static getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ICUResourceBundle;
    .locals 0

    if-eqz p3, :cond_0

    .line 1105
    sget-object p3, Landroid/icu/impl/ICUResourceBundle$OpenType;->DIRECT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    .line 1104
    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    sget-object v0, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v1, "android/icu/impl/data/icudt60b"

    invoke-static {v1, v0}, Landroid/icu/impl/ICUResourceBundle;->getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static getFullLocaleNameSet(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getFullLocaleNameSet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static final getFunctionalEquivalent(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;[ZZ)Landroid/icu/util/ULocale;
    .locals 9

    .line 117
    invoke-virtual {p4, p3}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {p4}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p4

    .line 120
    new-instance v1, Landroid/icu/util/ULocale;

    invoke-direct {v1, p4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    const-string v2, "default"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, v0

    move v0, v4

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    move-object v5, v0

    move v0, v3

    .line 136
    :goto_1
    invoke-static {p0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/ICUResourceBundle;

    if-eqz p5, :cond_3

    .line 138
    aput-boolean v4, p5, v4

    .line 139
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object p1

    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    move-result-object p1

    move v7, v4

    .line 140
    :goto_2
    array-length v8, p1

    if-ge v7, v8, :cond_3

    .line 141
    aget-object v8, p1, v7

    invoke-virtual {v1, v8}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 142
    aput-boolean v3, p5, v4

    goto :goto_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    const/4 p1, 0x0

    move-object v1, p1

    move-object v7, v1

    move p5, v4

    .line 150
    :cond_4
    :try_start_0
    invoke-virtual {v6, p2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/ICUResourceBundle;

    .line 151
    invoke-virtual {v8, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-ne v0, v3, :cond_5

    move v0, v4

    move-object v5, v7

    .line 156
    :cond_5
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-nez v1, :cond_6

    .line 161
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v6

    add-int/lit8 p5, p5, 0x1

    :cond_6
    if-eqz v6, :cond_7

    if-eqz v1, :cond_4

    .line 167
    :cond_7
    new-instance v0, Landroid/icu/util/ULocale;

    invoke-direct {v0, p4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-static {p0, v0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    move-object v3, p1

    move v1, p5

    move p5, v4

    .line 172
    :cond_8
    :try_start_1
    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/ICUResourceBundle;

    .line 173
    invoke-virtual {v6, v5}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    .line 174
    invoke-virtual {v6}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v3

    if-eqz v3, :cond_9

    if-le p5, v1, :cond_9

    .line 179
    invoke-virtual {v6, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move v1, p5

    :catch_1
    :cond_9
    if-nez v3, :cond_a

    .line 187
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    add-int/lit8 p5, p5, 0x1

    :cond_a
    if-eqz v0, :cond_b

    if-eqz v3, :cond_8

    :cond_b
    if-nez v3, :cond_11

    if-eqz v7, :cond_11

    .line 194
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 197
    new-instance p5, Landroid/icu/util/ULocale;

    invoke-direct {p5, p4}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-static {p0, p5}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object p4

    check-cast p4, Landroid/icu/impl/ICUResourceBundle;

    move-object p5, v7

    .line 203
    :cond_c
    :try_start_2
    invoke-virtual {p4, p2}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 204
    invoke-virtual {v0, v7}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    .line 207
    invoke-virtual {p4}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    move-object v3, p1

    :cond_d
    if-eqz v3, :cond_e

    if-le v4, v1, :cond_e

    .line 218
    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 219
    invoke-virtual {p4}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v4

    :catch_2
    :cond_e
    if-nez v3, :cond_f

    .line 226
    invoke-virtual {p4}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object p4

    add-int/lit8 v4, v4, 0x1

    :cond_f
    if-eqz p4, :cond_10

    if-eqz v3, :cond_c

    :cond_10
    move-object v5, v7

    goto :goto_4

    :cond_11
    move v4, p5

    move-object p5, v7

    :goto_4
    const-string p1, "="

    if-eqz v3, :cond_13

    if-eqz p6, :cond_12

    .line 239
    invoke-virtual {p5, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    if-gt v4, v1, :cond_12

    return-object v3

    .line 243
    :cond_12
    new-instance p0, Landroid/icu/util/ULocale;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "@"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 233
    :cond_13
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Could not find locale containing requested or default keyword."

    invoke-direct {p2, p3, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public static final getKeywordValues(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 255
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 256
    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getAvailEntry(Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/impl/ICUResourceBundle$AvailEntry;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 259
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 261
    :try_start_0
    aget-object v4, v1, v3

    invoke-static {p0, v4}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 263
    invoke-virtual {v4, p1}, Landroid/icu/util/UResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/ICUResourceBundle;

    .line 264
    invoke-virtual {v4}, Landroid/icu/impl/ICUResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v4

    .line 265
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 266
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "default"

    .line 267
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "private-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 269
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-array p0, v2, [Ljava/lang/String;

    .line 278
    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static final getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;
    .locals 5

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    .line 521
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 522
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object v3

    .line 523
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 524
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    return-object p0
.end method

.method private getNoFallback()Z
    .locals 0

    .line 1342
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleReader;->getNoFallback()Z

    move-result p0

    return p0
.end method

.method private getResDepth()I
    .locals 0

    .line 974
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method private static getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1019
    aput-object p0, p2, p3

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x2f

    .line 1024
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    add-int/lit8 v3, p3, 0x1

    .line 1026
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, p3

    const/4 p3, 0x2

    if-ne p1, p3, :cond_2

    add-int/2addr v2, v0

    .line 1029
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p2, v3

    return-void

    :cond_2
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 p1, p1, -0x1

    move p3, v3

    goto :goto_0
.end method

.method private getResPathKeys([Ljava/lang/String;I)V
    .locals 1

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 987
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    aput-object v0, p1, p2

    .line 988
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;)Landroid/icu/impl/ICUResourceBundle;
    .locals 10

    .line 1147
    invoke-static {p0, p1}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {p4}, Landroid/icu/impl/ICUResourceBundle$OpenType;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 1149
    sget-object v2, Landroid/icu/impl/ICUResourceBundle$OpenType;->LOCALE_DEFAULT_ROOT:Landroid/icu/impl/ICUResourceBundle$OpenType;

    const/16 v3, 0x23

    if-eq p4, v2, :cond_0

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1151
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    .line 1152
    sget-object v8, Landroid/icu/impl/ICUResourceBundle;->BUNDLE_CACHE:Landroid/icu/impl/CacheBase;

    new-instance v9, Landroid/icu/impl/ICUResourceBundle$4;

    move-object v0, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/ICUResourceBundle$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Landroid/icu/impl/ICUResourceBundle$OpenType;Ljava/lang/String;)V

    invoke-virtual {v8, v7, v9}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method private static localeIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1138
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x5f

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public at(I)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    const/4 v0, 0x0

    .line 318
    invoke-virtual {p0, p1, v0, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method public at(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 2

    .line 323
    instance-of v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    invoke-virtual {p0, p1, v1, p0}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    return-object p0

    :cond_0
    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1043
    :cond_0
    instance-of v1, p1, Landroid/icu/impl/ICUResourceBundle;

    if-eqz v1, :cond_1

    .line 1044
    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    .line 1045
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1046
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 349
    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;
    .locals 0

    .line 331
    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(I)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method public findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 0

    .line 336
    invoke-super {p0, p1}, Landroid/icu/util/UResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object p0

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method public bridge synthetic findTopLevel(I)Landroid/icu/util/UResourceBundle;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(I)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findTopLevel(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    .locals 0

    .line 39
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundle;->findTopLevel(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/impl/ICUResourceBundle;"
        }
    .end annotation

    .line 1225
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    if-nez v0, :cond_2

    .line 1227
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1230
    invoke-virtual {v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p2

    move-object v0, p2

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 1233
    :cond_1
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getBaseName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleID()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getFullName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1234
    new-instance p3, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find resource for bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", key "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p2, p0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 383
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundle;->countPathKeys(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundle;->getResDepth()I

    move-result v1

    add-int v2, v1, v0

    .line 390
    new-array v2, v2, [Ljava/lang/String;

    .line 391
    invoke-static {p1, v0, v2, v1}, Landroid/icu/impl/ICUResourceBundle;->getResPathKeys(Ljava/lang/String;I[Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 392
    invoke-static {v2, v1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback([Ljava/lang/String;ILandroid/icu/impl/ICUResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p0, v0

    .line 400
    :goto_0
    new-instance p1, Landroid/icu/impl/UResource$Key;

    invoke-direct {p1}, Landroid/icu/impl/UResource$Key;-><init>()V

    .line 401
    new-instance v0, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;

    invoke-direct {v0}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;-><init>()V

    .line 402
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$Sink;)V

    return-void

    .line 394
    :cond_1
    new-instance p2, Ljava/util/MissingResourceException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t find resource for bundle "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v0, p1, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw p2
.end method

.method public getAllItemsWithFallbackNoFail(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    .locals 0

    .line 373
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected getBaseName()Ljava/lang/String;
    .locals 0

    .line 1307
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->baseName:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 1334
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->key:Ljava/lang/String;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    .line 540
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method protected getLocaleID()Ljava/lang/String;
    .locals 0

    .line 1302
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    return-object p0
.end method

.method public getParent()Landroid/icu/impl/ICUResourceBundle;
    .locals 0

    .line 1324
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    check-cast p0, Landroid/icu/impl/ICUResourceBundle;

    return-object p0
.end method

.method public bridge synthetic getParent()Landroid/icu/util/UResourceBundle;
    .locals 0

    .line 39
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getParent()Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 356
    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "\u2205\u2205\u2205"

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Encountered NO_INHERITANCE_MARKER"

    invoke-direct {v0, v1, p1, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_1
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 362
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public final getTopLevelKeySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1509
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-object p0
.end method

.method public getULocale()Landroid/icu/util/ULocale;
    .locals 0

    .line 1312
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->ulocale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 301
    invoke-static {p1, p0, v0}, Landroid/icu/impl/ICUResourceBundle;->findResourceWithFallback(Ljava/lang/String;Landroid/icu/util/UResourceBundle;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "\u2205\u2205\u2205"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Encountered NO_INHERITANCE_MARKER"

    invoke-direct {v0, v1, p1, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object v0

    .line 304
    :cond_2
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find resource for bundle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method protected handleGetKeys()Ljava/util/Enumeration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1529
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->handleKeySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    const/16 p0, 0x2a

    return p0
.end method

.method public isRoot()Z
    .locals 1

    .line 1319
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->localeID:Ljava/lang/String;

    const-string/jumbo v0, "root"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected isTopLevelResource()Z
    .locals 0

    .line 1534
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->container:Landroid/icu/impl/ICUResourceBundle;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle;->parent:Ljava/util/ResourceBundle;

    return-void
.end method

.method public final setTopLevelKeySet(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1518
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->topLevelKeys:Ljava/util/Set;

    return-void
.end method
