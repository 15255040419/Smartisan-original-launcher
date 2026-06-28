.class Landroid/icu/text/NameUnicodeTransliterator$1;
.super Ljava/lang/Object;
.source "NameUnicodeTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/NameUnicodeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 0

    .line 35
    new-instance p0, Landroid/icu/text/NameUnicodeTransliterator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/text/NameUnicodeTransliterator;-><init>(Landroid/icu/text/UnicodeFilter;)V

    return-object p0
.end method
