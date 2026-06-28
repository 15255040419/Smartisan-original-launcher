.class Landroid/icu/impl/ICUResourceBundle$1;
.super Landroid/icu/impl/SoftCache;
.source "ICUResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/impl/ICUResourceBundle;",
        "Landroid/icu/impl/ICUResourceBundle$Loader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Landroid/icu/impl/ICUResourceBundle$Loader;)Landroid/icu/impl/ICUResourceBundle;
    .locals 0

    .line 96
    invoke-virtual {p2}, Landroid/icu/impl/ICUResourceBundle$Loader;->load()Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/icu/impl/ICUResourceBundle$Loader;

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundle$1;->createInstance(Ljava/lang/String;Landroid/icu/impl/ICUResourceBundle$Loader;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    return-object p0
.end method
