.class Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;
.super Ljava/lang/Object;
.source "NormalizationTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/NormalizationTransliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NormalizingTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/text/Transform<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final norm2:Landroid/icu/text/Normalizer2;


# direct methods
.method public constructor <init>(Landroid/icu/text/Normalizer2;)V
    .locals 0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Landroid/icu/text/Normalizer2;

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 143
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Landroid/icu/text/NormalizationTransliterator$NormalizingTransform;->norm2:Landroid/icu/text/Normalizer2;

    invoke-virtual {p0, p1}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
