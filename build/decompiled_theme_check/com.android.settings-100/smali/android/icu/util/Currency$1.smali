.class Landroid/icu/util/Currency$1;
.super Landroid/icu/impl/SoftCache;
.source "Currency.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/Currency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/util/Currency;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/Void;)Landroid/icu/util/Currency;
    .locals 0

    .line 243
    invoke-static {p1}, Landroid/icu/util/Currency;->access$100(Ljava/lang/String;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 240
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Currency$1;->createInstance(Ljava/lang/String;Ljava/lang/Void;)Landroid/icu/util/Currency;

    move-result-object p0

    return-object p0
.end method
