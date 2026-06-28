.class public Landroid/icu/impl/text/RbnfScannerProviderImpl;
.super Ljava/lang/Object;
.source "RbnfScannerProviderImpl.java"

# interfaces
.implements Landroid/icu/text/RbnfLenientScannerProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/RbnfLenientScanner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "rbnf"

    .line 33
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected createScanner(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    .line 105
    :try_start_0
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object p1

    check-cast p1, Landroid/icu/text/RuleBasedCollator;

    if-eqz p2, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getRules()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    new-instance p2, Landroid/icu/text/RuleBasedCollator;

    invoke-direct {p2, p1}, Landroid/icu/text/RuleBasedCollator;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    const/16 p2, 0x11

    .line 110
    invoke-virtual {p1, p2}, Landroid/icu/text/RuleBasedCollator;->setDecomposition(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    sget-boolean p2, Landroid/icu/impl/text/RbnfScannerProviderImpl;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "++++"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    move-object p1, p0

    .line 123
    :goto_0
    new-instance p2, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;

    invoke-direct {p2, p1, p0}, Landroid/icu/impl/text/RbnfScannerProviderImpl$RbnfLenientScannerImpl;-><init>(Landroid/icu/text/RuleBasedCollator;Landroid/icu/impl/text/RbnfScannerProviderImpl$1;)V

    return-object p2
.end method

.method public get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object v1, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    monitor-enter v1

    .line 81
    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/RbnfLenientScanner;

    if-eqz v2, :cond_0

    .line 83
    monitor-exit v1

    return-object v2

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/text/RbnfScannerProviderImpl;->createScanner(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/RbnfLenientScanner;

    move-result-object p1

    .line 87
    iget-object p2, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    monitor-enter p2

    .line 88
    :try_start_1
    iget-object p0, p0, Landroid/icu/impl/text/RbnfScannerProviderImpl;->cache:Ljava/util/Map;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 85
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
