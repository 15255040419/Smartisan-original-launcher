.class Landroid/icu/text/NormalizationTransliterator$4;
.super Ljava/lang/Object;
.source "NormalizationTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/NormalizationTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 2

    .line 52
    new-instance p0, Landroid/icu/text/NormalizationTransliterator;

    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFKDInstance()Landroid/icu/text/Normalizer2;

    move-result-object p1

    const-string v0, "NFKD"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/icu/text/NormalizationTransliterator;-><init>(Ljava/lang/String;Landroid/icu/text/Normalizer2;Landroid/icu/text/NormalizationTransliterator$1;)V

    return-object p0
.end method
