.class Landroid/icu/text/EscapeTransliterator$6;
.super Ljava/lang/Object;
.source "EscapeTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transliterator$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/EscapeTransliterator;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;
    .locals 8

    .line 134
    new-instance p0, Landroid/icu/text/EscapeTransliterator;

    const-string v1, "Any-Hex/Perl"

    const-string v2, "\\x{"

    const-string/jumbo v3, "}"

    const/16 v4, 0x10

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/icu/text/EscapeTransliterator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLandroid/icu/text/EscapeTransliterator;)V

    return-object p0
.end method
