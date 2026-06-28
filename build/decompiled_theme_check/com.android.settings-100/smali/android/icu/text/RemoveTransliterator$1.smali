.class Landroid/icu/text/RemoveTransliterator$1;
.super Ljava/lang/Object;
.source "RemoveTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/RemoveTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 0

    .line 31
    new-instance p0, Landroid/icu/text/RemoveTransliterator;

    invoke-direct {p0}, Landroid/icu/text/RemoveTransliterator;-><init>()V

    return-object p0
.end method
