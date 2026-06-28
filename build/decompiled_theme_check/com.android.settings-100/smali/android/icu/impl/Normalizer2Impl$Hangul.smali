.class public final Landroid/icu/impl/Normalizer2Impl$Hangul;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hangul"
.end annotation


# static fields
.field public static final HANGUL_BASE:I = 0xac00

.field public static final HANGUL_COUNT:I = 0x2ba4

.field public static final HANGUL_END:I = 0xd7a3

.field public static final HANGUL_LIMIT:I = 0xd7a4

.field public static final JAMO_L_BASE:I = 0x1100

.field public static final JAMO_L_COUNT:I = 0x13

.field public static final JAMO_L_END:I = 0x1112

.field public static final JAMO_L_LIMIT:I = 0x1113

.field public static final JAMO_T_BASE:I = 0x11a7

.field public static final JAMO_T_COUNT:I = 0x1c

.field public static final JAMO_T_END:I = 0x11c2

.field public static final JAMO_VT_COUNT:I = 0x24c

.field public static final JAMO_V_BASE:I = 0x1161

.field public static final JAMO_V_COUNT:I = 0x15

.field public static final JAMO_V_END:I = 0x1175

.field public static final JAMO_V_LIMIT:I = 0x1176


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompose(ILjava/lang/Appendable;)I
    .locals 2

    const v0, 0xac00

    sub-int/2addr p0, v0

    .line 84
    :try_start_0
    rem-int/lit8 v0, p0, 0x1c

    .line 85
    div-int/lit8 p0, p0, 0x1c

    .line 86
    div-int/lit8 v1, p0, 0x15

    add-int/lit16 v1, v1, 0x1100

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 87
    rem-int/lit8 p0, p0, 0x15

    add-int/lit16 p0, p0, 0x1161

    int-to-char p0, p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    if-nez v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    add-int/lit16 v0, v0, 0x11a7

    int-to-char p0, v0

    .line 91
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x3

    return p0

    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getRawDecomposition(ILjava/lang/Appendable;)V
    .locals 2

    const v0, 0xac00

    sub-int v0, p0, v0

    .line 108
    :try_start_0
    rem-int/lit8 v1, v0, 0x1c

    if-nez v1, :cond_0

    .line 110
    div-int/lit8 v0, v0, 0x1c

    .line 111
    div-int/lit8 p0, v0, 0x15

    add-int/lit16 p0, p0, 0x1100

    int-to-char p0, p0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 112
    rem-int/lit8 v0, v0, 0x15

    add-int/lit16 v0, v0, 0x1161

    int-to-char p0, v0

    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_0

    :cond_0
    sub-int/2addr p0, v1

    int-to-char p0, p0

    .line 114
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit16 v1, v1, 0x11a7

    int-to-char p0, v1

    .line 115
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 119
    new-instance p1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {p1, p0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static isHangul(I)Z
    .locals 1

    const v0, 0xac00

    if-gt v0, p0, :cond_0

    const v0, 0xd7a4

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isHangulLV(I)Z
    .locals 1

    const v0, 0xac00

    sub-int/2addr p0, v0

    if-ltz p0, :cond_0

    const/16 v0, 0x2ba4

    if-ge p0, v0, :cond_0

    .line 60
    rem-int/lit8 p0, p0, 0x1c

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJamo(I)Z
    .locals 1

    const/16 v0, 0x1100

    if-gt v0, p0, :cond_2

    const/16 v0, 0x11c2

    if-gt p0, v0, :cond_2

    const/16 v0, 0x1112

    if-le p0, v0, :cond_1

    const/16 v0, 0x1161

    if-gt v0, p0, :cond_0

    const/16 v0, 0x1175

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x11a7

    if-ge v0, p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJamoL(I)Z
    .locals 1

    const/16 v0, 0x1100

    if-gt v0, p0, :cond_0

    const/16 v0, 0x1113

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJamoT(I)Z
    .locals 1

    add-int/lit16 p0, p0, -0x11a7

    if-lez p0, :cond_0

    const/16 v0, 0x1c

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isJamoV(I)Z
    .locals 1

    const/16 v0, 0x1161

    if-gt v0, p0, :cond_0

    const/16 v0, 0x1176

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
