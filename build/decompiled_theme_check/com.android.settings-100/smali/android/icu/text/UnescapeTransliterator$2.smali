.class Landroid/icu/text/UnescapeTransliterator$2;
.super Ljava/lang/Object;
.source "UnescapeTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/UnescapeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 1

    .line 68
    new-instance p0, Landroid/icu/text/UnescapeTransliterator;

    const/16 p1, 0x8

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    const-string v0, "Hex-Any/Java"

    invoke-direct {p0, v0, p1}, Landroid/icu/text/UnescapeTransliterator;-><init>(Ljava/lang/String;[C)V

    return-object p0

    nop

    :array_0
    .array-data 2
        0x2s
        0x0s
        0x10s
        0x4s
        0x4s
        0x5cs
        0x75s
        -0x1s
    .end array-data
.end method
