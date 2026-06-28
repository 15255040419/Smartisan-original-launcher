.class Landroid/icu/text/CaseFoldTransliterator$1;
.super Ljava/lang/Object;
.source "CaseFoldTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/CaseFoldTransliterator;->register()V
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
    new-instance p0, Landroid/icu/text/CaseFoldTransliterator;

    invoke-direct {p0}, Landroid/icu/text/CaseFoldTransliterator;-><init>()V

    return-object p0
.end method
