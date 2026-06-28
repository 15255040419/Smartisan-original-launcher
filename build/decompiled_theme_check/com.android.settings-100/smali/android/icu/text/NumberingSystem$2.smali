.class Landroid/icu/text/NumberingSystem$2;
.super Landroid/icu/impl/SoftCache;
.source "NumberingSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NumberingSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/icu/impl/SoftCache<",
        "Ljava/lang/String;",
        "Landroid/icu/text/NumberingSystem;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 336
    invoke-direct {p0}, Landroid/icu/impl/SoftCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected createInstance(Ljava/lang/String;Ljava/lang/Void;)Landroid/icu/text/NumberingSystem;
    .locals 0

    .line 339
    invoke-static {p1}, Landroid/icu/text/NumberingSystem;->access$000(Ljava/lang/String;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 336
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NumberingSystem$2;->createInstance(Ljava/lang/String;Ljava/lang/Void;)Landroid/icu/text/NumberingSystem;

    move-result-object p0

    return-object p0
.end method
