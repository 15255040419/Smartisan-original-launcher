.class Landroid/icu/text/TitlecaseTransliterator$2;
.super Ljava/lang/Object;
.source "TitlecaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/TitlecaseTransliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Landroid/icu/text/TitlecaseTransliterator;


# direct methods
.method constructor <init>(Landroid/icu/text/TitlecaseTransliterator;)V
    .locals 0

    .line 167
    iput-object p1, p0, Landroid/icu/text/TitlecaseTransliterator$2;->this$0:Landroid/icu/text/TitlecaseTransliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 167
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/TitlecaseTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 170
    iget-object p0, p0, Landroid/icu/text/TitlecaseTransliterator$2;->this$0:Landroid/icu/text/TitlecaseTransliterator;

    invoke-static {p0}, Landroid/icu/text/TitlecaseTransliterator;->access$000(Landroid/icu/text/TitlecaseTransliterator;)Landroid/icu/util/ULocale;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
