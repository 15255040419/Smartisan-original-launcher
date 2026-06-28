.class abstract Landroid/icu/text/CharsetRecog_sbcs;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_ltr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar_rtl;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM420_ar;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_ltr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he_rtl;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_IBM424_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_KOI8_R;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1256;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_windows_1251;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9_tr;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_9;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8_I_he;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_8;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7_el;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_7;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6_ar;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_6;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5_ru;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_5;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_2;,
        Landroid/icu/text/CharsetRecog_sbcs$CharsetRecog_8859_1;,
        Landroid/icu/text/CharsetRecog_sbcs$NGramsPlusLang;,
        Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;,
        Landroid/icu/text/CharsetRecog_sbcs$NGramParser;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getName()Ljava/lang/String;
.end method

.method match(Landroid/icu/text/CharsetDetector;[I[B)I
    .locals 1

    const/16 v0, 0x20

    .line 272
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/icu/text/CharsetRecog_sbcs;->match(Landroid/icu/text/CharsetDetector;[I[BB)I

    move-result p0

    return p0
.end method

.method match(Landroid/icu/text/CharsetDetector;[I[BB)I
    .locals 0

    .line 277
    new-instance p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;

    invoke-direct {p0, p2, p3}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;-><init>([I[B)V

    .line 278
    invoke-virtual {p0, p1, p4}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Landroid/icu/text/CharsetDetector;B)I

    move-result p0

    return p0
.end method

.method matchIBM420(Landroid/icu/text/CharsetDetector;[I[BB)I
    .locals 0

    .line 282
    new-instance p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;

    invoke-direct {p0, p2, p3}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;-><init>([I[B)V

    .line 283
    invoke-virtual {p0, p1, p4}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser_IBM420;->parse(Landroid/icu/text/CharsetDetector;B)I

    move-result p0

    return p0
.end method
