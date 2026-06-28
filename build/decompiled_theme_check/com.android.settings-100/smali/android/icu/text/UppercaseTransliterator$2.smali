.class Landroid/icu/text/UppercaseTransliterator$2;
.super Ljava/lang/Object;
.source "UppercaseTransliterator.java"

# interfaces
.implements Landroid/icu/text/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/text/UppercaseTransliterator;->addSourceTargetSet(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;)V
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
.field final synthetic this$0:Landroid/icu/text/UppercaseTransliterator;


# direct methods
.method constructor <init>(Landroid/icu/text/UppercaseTransliterator;)V
    .locals 0

    .line 124
    iput-object p1, p0, Landroid/icu/text/UppercaseTransliterator$2;->this$0:Landroid/icu/text/UppercaseTransliterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 124
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/icu/text/UppercaseTransliterator$2;->transform(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public transform(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 127
    iget-object p0, p0, Landroid/icu/text/UppercaseTransliterator$2;->this$0:Landroid/icu/text/UppercaseTransliterator;

    invoke-static {p0}, Landroid/icu/text/UppercaseTransliterator;->access$000(Landroid/icu/text/UppercaseTransliterator;)Landroid/icu/util/ULocale;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/icu/lang/UCharacter;->toUpperCase(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
