.class final Landroid/icu/impl/ICUResourceBundle$AvailEntry;
.super Ljava/lang/Object;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AvailEntry"
.end annotation


# instance fields
.field private volatile fullNameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private loader:Ljava/lang/ClassLoader;

.field private volatile locales:[Ljava/util/Locale;

.field private volatile nameSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;

.field private volatile ulocales:[Landroid/icu/util/ULocale;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    .line 733
    iput-object p2, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    return-void
.end method


# virtual methods
.method getFullLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 779
    monitor-enter p0

    .line 780
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->access$300(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    .line 783
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 785
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->fullNameSet:Ljava/util/Set;

    return-object p0
.end method

.method getLocaleList()[Ljava/util/Locale;
    .locals 1

    .line 747
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_1

    .line 748
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->getULocaleList()[Landroid/icu/util/ULocale;

    .line 749
    monitor-enter p0

    .line 750
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundle;->getLocaleList([Landroid/icu/util/ULocale;)[Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    .line 753
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 755
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->locales:[Ljava/util/Locale;

    return-object p0
.end method

.method getLocaleNameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 758
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 759
    monitor-enter p0

    .line 760
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 761
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->access$200(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    .line 763
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 765
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->nameSet:Ljava/util/Set;

    return-object p0
.end method

.method getULocaleList()[Landroid/icu/util/ULocale;
    .locals 2

    .line 737
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    if-nez v0, :cond_1

    .line 738
    monitor-enter p0

    .line 739
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->prefix:Ljava/lang/String;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->loader:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->access$100(Ljava/lang/String;Ljava/lang/ClassLoader;)[Landroid/icu/util/ULocale;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    .line 742
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 744
    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/icu/impl/ICUResourceBundle$AvailEntry;->ulocales:[Landroid/icu/util/ULocale;

    return-object p0
.end method
